package
{
    import flash.display.Sprite;
    import flash.display.Shape;

    [SWF(width="240", height="280", backgroundColor="0xffffff", frameRate="24")]

    public class FillStyleAfter extends Sprite
    {
        public function FillStyleAfter()
        {
            draw();
        }

        public function draw():void 
        {
            var shape: Shape = new Shape();

            shape.graphics.beginFill(0xffff00, 1.0);

            shape.graphics.moveTo( 161.00, 101.00 ); // 2, 3
            shape.graphics.lineTo( 161.00, 156.00 ); // 2, 3
            shape.graphics.lineTo( 103.00, 156.00 ); // 2, 3
            shape.graphics.lineTo( 103.00, 210.00 ); // 2, 0
            shape.graphics.lineTo( 212.00, 210.00 ); // 2, 0
            shape.graphics.lineTo( 212.00, 101.00 ); // 2, 0
            shape.graphics.lineTo( 161.00, 101.00 ); // 2, 0

            shape.graphics.beginFill(0xff0000, 1.0);

            shape.graphics.lineTo( 161.00, 44.00  ); // 1, 0
            shape.graphics.lineTo( 49.00 , 44.00  ); // 1, 0
            shape.graphics.lineTo( 49.00 , 156.00 ); // 1, 0
            shape.graphics.lineTo( 103.00, 156.00 ); // 1, 0
            shape.graphics.lineTo( 103.00, 101.00 ); // 1, 3
            shape.graphics.lineTo( 161.00, 101.00 ); // 1, 3

            shape.graphics.beginFill(0x0000cc, 1.0);
            shape.graphics.moveTo( 161.00, 101.00 ); // 2, 3
            shape.graphics.lineTo( 161.00, 156.00 ); // 2, 3
            shape.graphics.lineTo( 103.00, 156.00 ); // 2, 3
            shape.graphics.lineTo( 103.00, 101.00 ); // 1, 3
            shape.graphics.lineTo( 161.00, 101.00 ); // 1, 3

            addChild( shape );
        }

    }
}

/*

[HEADER]        File version: 4
[HEADER]        File size: 108
[HEADER]        Frame rate: 24.000000
[HEADER]        Frame count: 1
[HEADER]        Movie width: 240.00
[HEADER]        Movie height: 280.00
[009]         3 SETBACKGROUNDCOLOR (ff/ff/ff)
[002]        65 DEFINESHAPE defines id 0001
                 | fillstyles(03)        linestyles(00)
                 | 1 ) SOLID ff0000ff    
                 | 2 ) SOLID ffff00ff    
                 | 3 ) SOLID 0000ccff    
                 |
                 | fill: 02/03 line:00 - moveTo 161.00 101.00
                 | fill: 02/03 line:00 - lineTo 161.00 156.00
                 | fill: 02/03 line:00 - lineTo 103.00 156.00
                 | fill: 02/00 line:00 - lineTo 103.00 210.00
                 | fill: 02/00 line:00 - lineTo 212.00 210.00
                 | fill: 02/00 line:00 - lineTo 212.00 101.00
                 | fill: 02/00 line:00 - lineTo 161.00 101.00
                 | fill: 01/00 line:00 - lineTo 161.00 44.00
                 | fill: 01/00 line:00 - lineTo 49.00 44.00
                 | fill: 01/00 line:00 - lineTo 49.00 156.00
                 | fill: 01/00 line:00 - lineTo 103.00 156.00
                 | fill: 01/03 line:00 - lineTo 103.00 101.00
                 | fill: 01/03 line:00 - lineTo 161.00 101.00
                 |
[01a]         6 PLACEOBJECT2 places id 0001 at depth 0001
                 | Matrix             
                 | 1.000 0.000   0.00 
                 | 0.000 1.000   0.00 
[001]         0 SHOWFRAME 1 (00:00:00,000)
[000]         0 END

*/
