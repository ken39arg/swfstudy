package
{
    import flash.display.Sprite;
    import flash.display.Shape;

    [SWF(width="240", height="280", backgroundColor="0xffffff", frameRate="24")]

    public class Sample extends Sprite
    {
        public function Sample()
        {
            addChild( shape() );
        }

        public function shape(): Shape
        {
            var shape: Shape = new Shape();

            shape.graphics.beginFill(0xff0000, 1); // 2
            
            shape.graphics.moveTo(189.85, 69.05); // fill 00/02, line 00
            shape.graphics.curveTo(199.95, 79.15, 199.95, 93.45); // fill 00/02, line 00
            shape.graphics.curveTo(199.95, 107.75, 189.85, 117.85); // fill 00/02, line 00
            shape.graphics.curveTo(180.55, 127.15, 167.75, 127.90); // fill 00/02, line 00
            shape.graphics.lineTo(209.70, 200.65); // fill 00/02, line 00
            shape.graphics.lineTo(121.25, 200.65); // fill 00/02, line 00
            shape.graphics.lineTo(163.30, 127.90); // fill 00/02, line 00
            shape.graphics.curveTo(150.40, 127.20, 141.05, 117.85); // fill 00/02, line 00
            shape.graphics.curveTo(130.95, 107.75, 130.95, 93.45); // fill 00/02, line 00
            shape.graphics.curveTo(130.95, 79.15, 141.05, 69.05); // fill 00/02, line 00
            shape.graphics.curveTo(151.15, 58.95, 165.45, 58.95); // fill 00/02, line 00
            shape.graphics.curveTo(179.75, 58.95, 189.85, 69.05); // fill 00/02, line 00

            shape.graphics.beginFill(0x000066, 1); // 1
            shape.graphics.moveTo(106.00, 93.45); // fill 00/01, line 00
            shape.graphics.curveTo(106.00, 107.75, 95.90, 117.85); // fill 00/01, line 00
            shape.graphics.curveTo(90.50, 123.25, 83.95, 125.75); // fill 00/01, line 00
            shape.graphics.lineTo(116.20, 125.75); // fill 00/01, line 00
            shape.graphics.lineTo(72.00, 202.35); // fill 00/01, line 00
            shape.graphics.lineTo(27.75, 125.75); // fill 00/01, line 00
            shape.graphics.lineTo(59.10, 125.75); // fill 00/01, line 00
            shape.graphics.curveTo(52.50, 123.25, 47.10, 117.85); // fill 00/01, line 00
            shape.graphics.curveTo(37.00, 107.75, 37.00, 93.45); // fill 00/01, line 00
            shape.graphics.curveTo(37.00, 79.15, 47.10, 69.05); // fill 00/01, line 00
            shape.graphics.curveTo(57.20, 58.95, 71.50, 58.95); // fill 00/01, line 00
            shape.graphics.curveTo(85.80, 58.95, 95.90, 69.05); // fill 00/01, line 00
            shape.graphics.curveTo(106.00, 79.15, 106.00, 93.45); // fill 00/01, line 00

            return shape;
        }

    }
}
