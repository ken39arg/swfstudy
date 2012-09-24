#!/usr/bin/env perl
use strict;
use warnings;

# $ swfdump -D path/to.swf | perl gen_code.pl

my $fillstyle;
while (<>) {
    if ($_ =~ /DEFINESHAPE. defines id (\d+)/) {
        print "public function define_$1(): Shape\n";
        print "{\n    var var shape: Shape = new Shape();\n";
    }
    elsif ($_ =~/fillstyles\((\d+)\)/) {
        $fillstyle = {};
    } 
    elsif ($_ =~/(\d+) \) SOLID ([0123456789abcdef]{6})([0123456789abcdef]{2})/) {
        $fillstyle->{$1} = { color => $2, alpha => $3 };
        my $alpha = hex($3) / 0xff;
        print "    //shape.graphics.beginFill(0x$2, $alpha); // $1\n";
    }
    elsif ($_ =~/fill: (\d+)\/(\d+) line:(\d+) - moveTo (\-?[\d\.]+) (\-?[\d\.]+)/) {
        print "    shape.graphics.moveTo($4, $5); // fill $1/$2, line $3\n";
    }
    elsif ($_ =~/fill: (\d+)\/(\d+) line:(\d+) - lineTo (\-?[\d\.]+) (\-?[\d\.]+)/) {
        print "    shape.graphics.lineTo($4, $5); // fill $1/$2, line $3\n";
    }
    elsif ($_ =~/fill: (\d+)\/(\d+) line:(\d+) - splineTo \((\-?[\d\.]+) (\-?[\d\.]+)\) (\-?[\d\.]+) (\-?[\d\.]+)/) {
        # splineTo (-10.75 4.40) -11.20 12.90
        print "    shape.graphics.curveTo($4, $5, $6, $7); // fill $1/$2, line $3\n";
    }
    elsif ($_ =~ /^ +\| *\n/) {
        print "\n";
    }
    else {
        print "// $_";
    }
}
