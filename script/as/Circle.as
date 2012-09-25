package
{
    import flash.display.Sprite;
    import flash.display.Shape;
    import flash.utils.Timer;
    import flash.events.TimerEvent;

    [SWF(width="240", height="280", backgroundColor="0xffffff", frameRate="24")]

    public class Circle extends Sprite
    {
        public function Circle()
        {
            addChild(draw());
            //points( this )
            //startTimer();
        }

        public function draw(): Shape 
        {
            var shape: Shape = new Shape();

            shape.graphics.lineStyle(4, 0x0000ff);
            shape.graphics.beginFill(0xff0000, 1.0);
            shape.graphics.drawCircle(100, 100, 90);

            return shape;
        }

        public function curveTo(): Shape 
        {
            var shape: Shape = new Shape();

            shape.graphics.lineStyle(4, 0x0000ff);
            shape.graphics.beginFill(0xff0000, 1.0);

            shape.graphics.moveTo(163.60, 163.60);
            shape.graphics.curveTo(137.30, 190.00, 100.00, 190.00);
            shape.graphics.curveTo(62.65, 190.00, 36.30, 163.60);
            shape.graphics.curveTo(10.00, 137.30, 10.00, 100.00);
            shape.graphics.curveTo(10.00, 62.65, 36.30, 36.30);
            shape.graphics.curveTo(62.65, 10.00, 100.00, 10.00);
            shape.graphics.curveTo(137.30, 10.00, 163.60, 36.30);
            shape.graphics.curveTo(190.00, 62.65, 190.00, 100.00);
            shape.graphics.curveTo(190.00, 137.30, 163.60, 163.60);

            return shape;
        }

        public function points( canvas: Sprite ): void
        {
            var color1:uint = 0xffff00;
            var color2:uint = 0x00ffff;
            drawPoint(canvas, 163.60, 163.60, color1);

            drawPoint(canvas, 137.30, 190.00, color2);
            drawPoint(canvas, 100.00, 190.00, color1);

            drawPoint(canvas, 62.65, 190.00,  color2);
            drawPoint(canvas, 36.30, 163.60 , color1);
            
            drawPoint(canvas, 10.00, 137.30,  color2);
            drawPoint(canvas, 10.00, 100.00 , color1);

            drawPoint(canvas, 10.00, 62.65,   color2);
            drawPoint(canvas, 36.30, 36.30  , color1);

            drawPoint(canvas, 62.65, 10.00,   color2);
            drawPoint(canvas, 100.00, 10.00 , color1);

            drawPoint(canvas, 137.30, 10.00,  color2);
            drawPoint(canvas, 163.60, 36.30 , color1);
            
            drawPoint(canvas, 190.00, 62.65,  color2);
            drawPoint(canvas, 190.00, 100.00, color1);

            drawPoint(canvas, 190.00, 137.30, color2);
            drawPoint(canvas, 163.60, 163.60, color1);
        }

        private var _points: Array = new Array();

        public function drawPoint( canvas: Sprite, x: Number, y: Number, color: uint) : void
        {
            var point: Object = new Object();
            point.x = x;
            point.y = y;
            point.color = color;
            point.display = null;

            _points.push( point );
        }

        public function _drawPoint( canvas: Sprite, x: Number, y: Number, color: uint) : void
        {
            var shape: Shape = new Shape();

            shape.graphics.beginFill(color);
            shape.graphics.drawCircle(x, y, 2)
            shape.graphics.endFill();

            canvas.addChild(shape);
        }

        private var _sprite: Sprite;
        private var index: int = 0;

        public function startTimer(): void
        {
            _sprite = new Sprite();
            addChild(_sprite);

            var timer: Timer = new Timer( 150, 0 );
            timer.addEventListener( 'timer', _updatePoint);
            timer.start();
        }

        public function _updatePoint(e:TimerEvent): void
        {
                var point: Object = _points[index];

                var remove_index: int = index - 3;
                if (index < 0) {
                    remove_index += _points.length;
                }
                if (_points[remove_index] && _points[remove_index].display) {
                    _sprite.removeChild(_points[remove_index].display);
                    _points[remove_index].display = null;
                }

                var shape: Shape = new Shape();

                shape.graphics.beginFill(point.color);
                shape.graphics.drawCircle(point.x, point.y, 6);
                shape.graphics.endFill();

                _sprite.addChild(shape);
                point.display = shape;

                index++;

                if (_points.length <= index) {
                    while (index > 0) {
                        if (_points[index] && _points[index].display) {
                            _sprite.removeChild(_points[index].display);
                            _points[index].display = null;
                        }
                        index--;
                    }
                    index = 0;
                }
                
        }
    }
}
