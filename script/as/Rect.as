package
{
    import flash.display.Sprite;
    import flash.display.Shape;

    [SWF(width="240", height="280", backgroundColor="0xffffff", frameRate="24")]

    public class Rect extends Sprite
    {
        public function Rect()
        {
            // drawメソッド
            //addChild( draw() );

            // lineTo,moveToのみ
            addChild( lineTo() );
        }

        public function draw(): Shape 
        {
            var shape: Shape = new Shape();

            shape.graphics.lineStyle(4, 0x0000ff);
            shape.graphics.beginFill(0xff0000, 1.0);
            shape.graphics.drawRect(50, 70, 140, 140);

            return shape;
        }

        public function lineTo(): Shape 
        {
            var shape: Shape = new Shape();

            shape.graphics.lineStyle(4, 0x0000ff);
            shape.graphics.beginFill(0xff0000, 1.0);
            shape.graphics.moveTo(50, 70);
            shape.graphics.lineTo(50, 210);
            shape.graphics.lineTo(190, 210);
            shape.graphics.lineTo(190, 70);
            shape.graphics.lineTo(50, 70);

            return shape;
        }
    }
}
