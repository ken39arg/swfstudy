package
{
    import flash.display.Sprite;
    import flash.display.Shape;
    import flash.geom.Matrix;

    [SWF(width="240", height="280", backgroundColor="0xffffff", frameRate="24")]

    public class Rainbow extends Sprite
    {
        public function Rainbow() {
            draw();
        }

        public function draw(): void {
            var shape: Shape = new Shape();
            shape.graphics.lineStyle(1, 0x000000);

            var matrix: Matrix = new Matrix();
            matrix.createGradientBox(200, 200);
            shape.graphics.beginGradientFill(
                'linear',  // type
                [0xff0000, 0xffff00, 0x00ff00, 0x00ffff, 0x0000ff, 0xff00ff, 0xff0000], // colors
                [1.0,      1.0,      1.0,      1.0,      1.0,      1.0,      1.0     ], // alphas
                [0,        42,       93,       127,      170,      212,      255     ], // ratios
                matrix,  // GradientMatrix
                'pad', // spreadMethod 
                'rgb'  // interpolationMethod 
            );
            shape.graphics.drawRect( 0, 0, 200, 200 );

            shape.x = 20;
            shape.y = 20;

            addChild(shape);
        }
    }
}
