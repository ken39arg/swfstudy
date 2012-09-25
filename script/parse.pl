#!/usr/bin/env perl
use strict;
use warnings;
use SWF::File;
use SWF::Parser;
use SWF::Element;
use Data::Dumper;

# サンプル用なのでSpriteに対応していません

my $file = shift;

die 'not found swffile' unless -f $file;

my $count=0;

my $parser = SWF::Parser->new(
    'header-callback' => sub {
        my ($parser, $signature, $version, $length, $xmin, $ymin, $xmax, $ymax, $rate, $count) = @_;
        _print('Header','');
        _print('Signature', $signature, 1);
        _print('Version', $version, 1);
        _print('FileLength', $length, 1);
        _print('Size', "{ Xmax: $xmin, Xmax: $xmax, Ymin: $ymin, Xmax: $ymax }", 1);
        _print('FrameRate', $rate, 1);
        _print('FrameCount', $count, 1);
    },
    'tag-callback'    => sub {
        my ($parser, $tag, $length, $stream) = @_;
        my $t = SWF::Element::Tag->new(Tag=>$tag, Length=>$length);
        my $tag_name = $t->tag_name;
        $t->unpack($stream);

        _print("$tag_name\[$tag\]", "");

        for my $field ( $t->element_names ) {
            my $element = $t->$field;
            if ($t->element_type($field) =~ /^\$/) {
                _print($field, $element, 1) if $element;
            } elsif ($element->can('output_func')) {
                _print($field, '', 1);
                $element->output_func($field, 2, *_print);
            } elsif ($element->defined) {
                my ($name, $value) = $element->name_value();
                #_print($field, $value . "($name)", 1);
                _print($field, $value, 1);
            }
        }
        #$t->dumper(undef, 1);
        ++$count;
    },
);

$parser->parse_file( $file );

sub _print {
    my ($name, $value, $indent) = @_;

    $indent ||= 0;

    print ' ' x ($indent * 4);
    print "$name: $value\n";
}

no warnings "once";

{
    package SWF::Element;
    sub name_value {
        my ($self) = @_;
        return ($self->_get_name, $self->_get_value || '');
    }

    sub _get_name {
        my ($self) = @_;
        my $name = $self->can('tag_name') ? $self->tag_name : ref $self;
        $name =~ s/SWF::Element:://;
        $name;
    }

    sub _get_value {
        my ($self) = @_;
        return $self->can('value') ? $self->value : $self;
    }
}

{
    package SWF::Element::RGB;
    sub _get_value {
        my ($self) = @_;
        return sprintf "#%02x%02x%02x", $self->Red, $self->Green, $self->Blue;
    }
}

{
    package SWF::Element::RECT;
    sub _get_value {
        my ($self) = @_;
        return sprintf "{ Xmin: %s, Xmax: %s, Ymin: %s, Ymax: %s }", $self->Xmin, $self->Xmax, $self->Ymin, $self->Ymax;
    }
}

{
    package SWF::Element::MATRIX;
    sub _get_value {
        my ($self) = @_;
        return sprintf "{ a: %s, b: %s, c: %s, d: %s, tx: %s, ty: %s }",
                       $self->ScaleX, $self->RotateSkew0,
                       $self->RotateSkew1, $self->ScaleY,
                       $self->TranslateX, $self->TranslateY;
    }
}

{
    package SWF::Element::CXFORMWITHALPHA;
    sub _get_value {
        my ($self) = @_;
        return sprintf "{ mr: %s, mg: %s, mb: %s, ma: %s, ar: %s, ag: %s, ab: %s, aa: %s }",
                       $self->RedMultTerm, $self->GreenMultTerm, $self->BlueMultTerm, $self->AlphaMultTerm,
                       $self->RedAddTerm, $self->GreenAddTerm, $self->BlueAddTerm, $self->AlphaAddTerm;
    }
}

{
    package SWF::Element::FILLSTYLE1;
    sub _get_value {
        my ($self) = @_;

        my @r;

        my $psub = sub {
          my ($s, $field) = @_;
          my $e = $s->$field;
          my ($n, $v) = $e->name_value();
          return "$field: $v";
        };

        push @r, $psub->($self, 'Color') if $self->Color && $self->Color->defined; 
        push @r, $psub->($self, 'GradientMatrix') if $self->GradientMatrix && $self->GradientMatrix->defined; 
        push @r, $psub->($self, 'Gradient') if $self->Gradient && $self->Gradient->defined; 
        push @r, $psub->($self, 'BitmapID') if $self->BitmapID && $self->BitmapID->defined;
        push @r, $psub->($self, 'BitmapMatrix') if $self->BitmapMatrix && $self->BitmapMatrix->defined; 

        return "{ " . join(", ", @r) . " }";
    }
}

{
    package SWF::Element::LINESTYLE1;
    sub _get_value {
        my ($self) = @_;

        my @r;

        my $psub = sub {
          my ($s, $field) = @_;
          my $e = $s->$field;
          my ($n, $v) = $e->name_value();
          return "$field: $v";
        };

        push @r, "With: ".$self->Width if $self->Width; 
        push @r, $psub->($self, 'Color') if $self->Color && $self->Color->defined; 

        return "{ " . join(", ", @r) . " }";
    }
}

{
    package SWF::Element::SHAPERECORD1::STYLECHANGERECORD;
    use Data::Dumper;
    sub _get_name { 'StyleChangeRecord' }
    sub _get_value {
        my ($self) = @_;

        my @r;

        push @r, sprintf("MoveTo( %s, %s )", $self->MoveDeltaX || 0, $self->MoveDeltaY || 0) if defined $self->MoveDeltaX || defined $self->MoveDeltaY; 
        push @r, sprintf("FillStyle0: %s", $self->FillStyle0 || 0) if defined $self->FillStyle0;
        push @r, sprintf("FillStyle1: %s", $self->FillStyle1 || 0) if defined $self->FillStyle1;
        push @r, sprintf("LineStyle: %s", $self->LineStyle || 0) if defined $self->LineStyle;

        return join(", ", @r);
    }
}

{
    package SWF::Element::SHAPERECORDn::STRAIGHTEDGERECORD;
    sub _get_name { 'StraightEdgeRecord' }
    sub _get_value {
        my ($self) = @_;

        sprintf("LineTo( %s, %s )", $self->DeltaX || 0, $self->DeltaY || 0); 
    }
}

{
    package SWF::Element::SHAPERECORDn::CURVEDEDGERECORD;
    sub _get_name { 'CurvedEdgeRecord' }
    sub _get_value {
        my ($self) = @_;

        sprintf("CurvTo( %s, %s, %s, %s )", $self->ControlDeltaX || 0, $self->ControlDeltaY || 0, $self->AnchorDeltaX || 0, $self->AnchorDeltaY || 0); 
    }
}

{
    package SWF::Element::SHAPEWITHSTYLE1;
    sub output_func {
        my ($self, $field, $indent, $print_func) = @_;

        my $count = 1;
        $print_func->("FillStyles", "", $indent);
        for my $fillStyle (@{ $self->FillStyles }) {
            my ($name, $value) = $fillStyle->name_value();
            $print_func->("[$count] $name", $value, $indent + 1);
            $count++;
        }

        $count = 1;
        $print_func->("LineStyles", "", $indent);
        for my $lineStyle (@{ $self->LineStyles }) {
            my ($name, $value) = $lineStyle->name_value();
            $print_func->("[$count] $name", $value, $indent + 1);
        }

        $print_func->("ShapeRecords", "", $indent);
        for my $shapeRecord (@{ $self->ShapeRecords }) {
            my ($name, $value) = $shapeRecord->name_value();
            $print_func->("$name", $value, $indent + 1);
        }
        $print_func->("EndShapeRecord", "", $indent + 1);
    }
}

