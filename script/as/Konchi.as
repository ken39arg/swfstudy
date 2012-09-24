package
{
    import flash.display.Sprite;
    import flash.display.Shape;
    import flash.display.DisplayObject;
    import flash.geom.Matrix;

    public class Konchi extends Sprite
    {
        public function Konchi()
        {
            // [01a]        13 PLACEOBJECT2 places id 0002 at depth 0001 name "ar"
            //                  | Matrix             
            //                  | 1.000 0.000 157.20 
            //                  | 0.000 1.000 141.35 
            place(this, define_0002(), 1, 0, 0, 1, 157.20, 141.35);

            // [01a]        13 PLACEOBJECT2 places id 0004 at depth 0004 name "al"
            //                  | Matrix             
            //                  | 1.000 0.000 125.50 
            //                  | 0.000 1.000 135.85 
            place(this, define_0004(), 1, 0, 0, 1, 125.50, 135.85);

            // [01a]        12 PLACEOBJECT2 places id 0006 at depth 0007 name "b"
            //                  | Matrix             
            //                  | 1.000 0.000 129.35 
            //                  | 0.000 1.000 152.10 
            place(this, define_0006(), 1, 0, 0, 1, 129.35, 152.10);

            // [01a]        13 PLACEOBJECT2 places id 0008 at depth 0012 name "ll"
            //                  | Matrix             
            //                  | 1.000 0.000 142.40 
            //                  | 0.000 1.000 173.40 
            place(this, define_0008(), 1, 0, 0, 1, 142.40, 173.40);

            // [01a]        13 PLACEOBJECT2 places id 0010 at depth 0015 name "lr"
            //                  | Matrix             
            //                  | 1.000 0.000 110.50 
            //                  | 0.000 1.000 176.35 
            place(this, define_0010(), 1, 0, 0, 1, 110.50, 176.35);

            // [01a]        12 PLACEOBJECT2 places id 0014 at depth 0018 name "h"
            //                  | Matrix             
            //                  | 1.000 0.000 125.00 
            //                  | 0.000 1.000 135.25 
            place(this, define_0014(), 1, 0, 0, 1, 125.00, 135.25);
        }

        public function place( canvas:Sprite, obj:DisplayObject, 
                               a: Number, b:Number, c:Number, d:Number,
                               tx:Number, ty:Number ): Sprite 
        {
            obj.transform.matrix = new Matrix(a, b, c, d, tx, ty);
            canvas.addChild(obj);
            return canvas;
        }

        public function define_0001(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0xfeffbd, 1); // 1
            //shape.graphics.beginFill(0x000000, 1); // 2
        
            shape.graphics.beginFill(0xfeffbd, 1); // 1

            shape.graphics.moveTo(9.30, -18.80); // fill 01/00, line 00
            shape.graphics.curveTo(6.40, -22.65, 1.35, -20.35); // fill 01/00, line 00
            shape.graphics.lineTo(-3.15, -17.30); // fill 01/00, line 00
            shape.graphics.curveTo(-5.35, -15.85, -6.35, -11.60); // fill 01/00, line 00
            shape.graphics.lineTo(-8.10, -1.00); // fill 01/00, line 00
            shape.graphics.curveTo(-9.00, 4.85, -8.75, 10.50); // fill 01/00, line 00
            shape.graphics.curveTo(-8.45, 16.25, -7.05, 18.00); // fill 01/00, line 00
            shape.graphics.curveTo(-3.40, 22.50, 3.15, -3.10); // fill 01/00, line 00
            shape.graphics.lineTo(8.55, -9.00); // fill 01/00, line 00
            shape.graphics.curveTo(12.40, -14.65, 9.30, -18.80); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0x000000, 1); // 2
            shape.graphics.moveTo(-6.85, -16.30); // fill 02/00, line 00
            shape.graphics.curveTo(-9.10, -11.55, -10.30, 0.05); // fill 02/00, line 00
            shape.graphics.curveTo(-10.75, 4.40, -11.20, 12.90); // fill 02/00, line 00
            shape.graphics.curveTo(-11.35, 17.05, -9.75, 19.20); // fill 02/00, line 00
            shape.graphics.curveTo(-8.50, 20.90, -6.45, 21.15); // fill 02/00, line 00
            shape.graphics.curveTo(-4.60, 21.40, -3.10, 20.40); // fill 02/00, line 00
            shape.graphics.curveTo(-1.35, 19.20, -0.40, 16.55); // fill 02/00, line 00
            shape.graphics.curveTo(2.05, 9.45, 5.10, -2.60); // fill 02/00, line 00
            shape.graphics.curveTo(5.65, -4.90, 3.70, -5.15); // fill 02/00, line 00
            shape.graphics.curveTo(1.70, -5.40, 1.20, -3.60); // fill 02/00, line 00
            shape.graphics.lineTo(-3.05, 12.00); // fill 02/00, line 00
            shape.graphics.curveTo(-4.60, 17.20, -5.80, 17.20); // fill 02/00, line 00
            shape.graphics.curveTo(-8.10, 17.20, -6.65, 3.10); // fill 02/00, line 00
            shape.graphics.curveTo(-5.30, -10.40, -3.15, -16.10); // fill 02/00, line 00
            shape.graphics.curveTo(-2.55, -17.70, -4.15, -18.10); // fill 02/00, line 00
            shape.graphics.curveTo(-5.80, -18.50, -6.85, -16.30); // fill 02/00, line 00
            
            return shape;
        }

        public function define_0002(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0001(), 1, 0, 0, 1, -57.75, 15.30);
            return sprite;
        }
        
        public function define_0003(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0xfeffbd, 1); // 1
            //shape.graphics.beginFill(0x000000, 1); // 2
        
            shape.graphics.beginFill(0xfeffbd, 1); // 1
            shape.graphics.moveTo(3.70, -16.35); // fill 01/00, line 00
            shape.graphics.curveTo(1.60, -19.00, -2.05, -20.65); // fill 01/00, line 00
            shape.graphics.curveTo(-4.10, -21.60, -7.35, -22.40); // fill 01/00, line 00
            shape.graphics.curveTo(-10.25, -23.10, -11.90, -21.75); // fill 01/00, line 00
            shape.graphics.curveTo(-13.50, -20.45, -13.35, -17.75); // fill 01/00, line 00
            shape.graphics.curveTo(-13.10, -11.30, -5.00, -4.25); // fill 01/00, line 00
            shape.graphics.lineTo(-2.70, 7.50); // fill 01/00, line 00
            shape.graphics.curveTo(0.45, 19.10, 4.70, 18.55); // fill 01/00, line 00
            shape.graphics.curveTo(9.10, 17.95, 7.25, 1.55); // fill 01/00, line 00
            shape.graphics.curveTo(5.55, -13.35, 3.70, -16.35); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0x000000, 1); // 2
            shape.graphics.moveTo(5.80, 4.95); // fill 02/00, line 00
            shape.graphics.curveTo(6.55, 16.30, 4.35, 16.60); // fill 02/00, line 00
            shape.graphics.curveTo(2.50, 16.85, -0.45, 6.10); // fill 02/00, line 00
            shape.graphics.lineTo(-3.05, -4.75); // fill 02/00, line 00
            shape.graphics.curveTo(-3.65, -6.90, -5.65, -6.50); // fill 02/00, line 00
            shape.graphics.curveTo(-7.60, -6.15, -6.95, -3.80); // fill 02/00, line 00
            shape.graphics.lineTo(-4.95, 4.40); // fill 02/00, line 00
            shape.graphics.curveTo(-2.60, 13.25, -1.15, 16.55); // fill 02/00, line 00
            shape.graphics.curveTo(-0.40, 18.15, 0.80, 19.20); // fill 02/00, line 00
            shape.graphics.curveTo(2.70, 21.00, 5.10, 20.50); // fill 02/00, line 00
            shape.graphics.curveTo(9.05, 19.65, 9.60, 14.75); // fill 02/00, line 00
            shape.graphics.curveTo(10.60, 7.20, 9.05, -3.25); // fill 02/00, line 00
            shape.graphics.curveTo(7.65, -12.85, 5.40, -17.40); // fill 02/00, line 00
            shape.graphics.curveTo(4.45, -19.40, 2.85, -18.40); // fill 02/00, line 00
            shape.graphics.curveTo(1.25, -17.45, 2.00, -15.30); // fill 02/00, line 00
            shape.graphics.curveTo(5.10, -6.65, 5.80, 4.95); // fill 02/00, line 00
        
            return shape;
        }

        public function define_0004(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0003(), 1, 0, 0, 1, 29.10, 22.35);
            return sprite;
        }
        
        public function define_0005(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0xfeffbd, 1); // 1
            //shape.graphics.beginFill(0x000000, 1); // 2
            //shape.graphics.beginFill(0x000000, 1); // 3
            //shape.graphics.beginFill(0x000000, 1); // 4
        
            shape.graphics.beginFill(0xfeffbd, 1); // 1
            shape.graphics.moveTo(23.15, -15.40); // fill 01/00, line 00
            shape.graphics.curveTo(11.55, -21.05, -6.25, -19.80); // fill 01/00, line 00
            shape.graphics.curveTo(-20.20, -18.85, -24.45, -16.30); // fill 01/00, line 00
            shape.graphics.curveTo(-25.50, -13.70, -25.45, -9.65); // fill 01/00, line 00
            shape.graphics.curveTo(-25.40, -4.95, -23.75, -0.70); // fill 01/00, line 00
            shape.graphics.curveTo(-24.50, 5.65, -23.55, 14.90); // fill 01/00, line 00
            shape.graphics.curveTo(-22.80, 22.35, -22.10, 24.10); // fill 01/00, line 00
            shape.graphics.curveTo(-22.00, 24.30, -21.15, 23.80); // fill 01/00, line 00
            shape.graphics.curveTo(-20.30, 23.35, -20.05, 24.25); // fill 01/00, line 00
            shape.graphics.curveTo(-19.95, 24.90, -18.85, 25.65); // fill 01/00, line 00
            shape.graphics.curveTo(-17.45, 26.60, -15.55, 26.60); // fill 01/00, line 00
            shape.graphics.curveTo(-13.65, 26.60, -12.50, 25.60); // fill 01/00, line 00
            shape.graphics.lineTo(-11.55, 24.50); // fill 01/00, line 00
            shape.graphics.lineTo(-8.75, 25.05); // fill 01/00, line 00
            shape.graphics.lineTo(-0.15, 25.55); // fill 01/00, line 00
            shape.graphics.curveTo(7.55, 25.55, 11.40, 24.45); // fill 01/00, line 00
            shape.graphics.lineTo(12.95, 25.65); // fill 01/00, line 00
            shape.graphics.curveTo(14.95, 26.75, 17.30, 26.45); // fill 01/00, line 00
            shape.graphics.curveTo(19.70, 26.15, 21.05, 24.20); // fill 01/00, line 00
            shape.graphics.lineTo(21.90, 22.35); // fill 01/00, line 00
            shape.graphics.lineTo(23.20, 20.80); // fill 01/00, line 00
            shape.graphics.curveTo(24.10, 19.80, 24.15, 18.90); // fill 01/00, line 00
            shape.graphics.curveTo(24.70, 13.90, 24.05, -1.40); // fill 01/00, line 00
            shape.graphics.curveTo(25.70, -5.35, 24.60, -10.75); // fill 01/00, line 00
            shape.graphics.lineTo(23.15, -15.40); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0x000000, 1); // 2
            shape.graphics.moveTo(11.35, 23.90); // fill 02/00, line 00
            shape.graphics.curveTo(10.85, 21.95, 8.95, 22.45); // fill 02/00, line 00
            shape.graphics.lineTo(4.65, 23.35); // fill 02/00, line 00
            shape.graphics.lineTo(-0.20, 23.60); // fill 02/00, line 00
            shape.graphics.lineTo(-6.10, 23.10); // fill 02/00, line 00
            shape.graphics.lineTo(-9.00, 22.55); // fill 02/00, line 00
            shape.graphics.curveTo(-11.00, 22.00, -11.55, 23.90); // fill 02/00, line 00
            shape.graphics.curveTo(-12.10, 25.85, -10.10, 26.40); // fill 02/00, line 00
            shape.graphics.lineTo(-7.25, 27.00); // fill 02/00, line 00
            shape.graphics.lineTo(-0.20, 27.60); // fill 02/00, line 00
            shape.graphics.curveTo(5.25, 27.50, 9.95, 26.35); // fill 02/00, line 00
            shape.graphics.curveTo(11.85, 25.85, 11.35, 23.90); // fill 02/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 01/01, line 00

            shape.graphics.beginFill(0x000000, 1); // 3
            shape.graphics.moveTo(22.45, 8.35); // fill 03/01, line 00
            shape.graphics.curveTo(22.55, 15.85, 21.85, 22.05); // fill 03/01, line 00
            shape.graphics.curveTo(21.65, 24.05, 23.65, 24.25); // fill 03/01, line 00
            shape.graphics.curveTo(25.60, 24.50, 25.85, 22.55); // fill 03/01, line 00
            shape.graphics.lineTo(25.85, 22.50); // fill 03/01, line 00
            shape.graphics.curveTo(27.00, 14.75, 26.05, -1.55); // fill 03/01, line 00
            shape.graphics.curveTo(25.95, -3.60, 23.95, -3.50); // fill 03/01, line 00
            shape.graphics.curveTo(21.95, -3.35, 22.05, -1.30); // fill 03/01, line 00
            shape.graphics.lineTo(22.45, 8.35); // fill 03/01, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 02/02, line 00

            shape.graphics.beginFill(0x000000, 1); // 4
            shape.graphics.moveTo(-25.75, 11.70); // fill 04/02, line 00
            shape.graphics.curveTo(-25.35, 19.70, -24.00, 24.80); // fill 04/02, line 00
            shape.graphics.curveTo(-23.45, 26.65, -21.55, 26.20); // fill 04/02, line 00
            shape.graphics.curveTo(-19.60, 25.75, -20.10, 23.80); // fill 04/02, line 00
            shape.graphics.curveTo(-21.35, 19.10, -21.65, 10.45); // fill 04/02, line 00
            shape.graphics.lineTo(-21.75, -0.60); // fill 04/02, line 00
            shape.graphics.curveTo(-21.65, -2.55, -23.65, -2.65); // fill 04/02, line 00
            shape.graphics.curveTo(-25.65, -2.75, -25.75, -0.80); // fill 04/02, line 00
            shape.graphics.curveTo(-26.15, 4.90, -25.75, 11.70); // fill 04/02, line 00
        
            return shape;
        }

        public function define_0006(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0005(), 1, 0, 0, 1, -3.55, 0.00);
            return sprite;
        }
        
        public function define_0007(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0xfeffbd, 1); // 1
            //shape.graphics.beginFill(0x000000, 1); // 2
        
            shape.graphics.beginFill(0xfeffbd, 1); // 1
            shape.graphics.moveTo(-4.25, 2.45); // fill 01/00, line 00
            shape.graphics.curveTo(-0.80, 10.15, 2.70, 9.55); // fill 01/00, line 00
            shape.graphics.curveTo(6.10, 8.90, 6.90, 1.25); // fill 01/00, line 00
            shape.graphics.lineTo(7.20, -9.05); // fill 01/00, line 00
            shape.graphics.lineTo(5.25, -9.15); // fill 01/00, line 00
            shape.graphics.curveTo(1.40, -10.85, -2.00, -9.85); // fill 01/00, line 00
            shape.graphics.curveTo(-4.15, -9.25, -5.45, -7.90); // fill 01/00, line 00
            shape.graphics.curveTo(-6.60, -7.55, -7.20, -6.95); // fill 01/00, line 00
            shape.graphics.curveTo(-7.20, -4.00, -4.25, 2.45); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0x000000, 1); // 2
            shape.graphics.moveTo(5.20, -9.20); // fill 02/00, line 00
            shape.graphics.lineTo(4.70, 0.45); // fill 02/00, line 00
            shape.graphics.curveTo(4.15, 7.20, 2.10, 7.55); // fill 02/00, line 00
            shape.graphics.curveTo(0.00, 7.95, -2.35, 2.30); // fill 02/00, line 00
            shape.graphics.curveTo(-4.15, -2.05, -5.20, -7.15); // fill 02/00, line 00
            shape.graphics.curveTo(-5.55, -9.10, -7.50, -8.90); // fill 02/00, line 00
            shape.graphics.curveTo(-9.40, -8.75, -9.20, -6.80); // fill 02/00, line 00
            shape.graphics.curveTo(-8.90, -4.15, -7.35, 0.15); // fill 02/00, line 00
            shape.graphics.lineTo(-4.85, 6.15); // fill 02/00, line 00
            shape.graphics.curveTo(-3.40, 9.35, -1.00, 10.70); // fill 02/00, line 00
            shape.graphics.curveTo(0.90, 11.75, 2.95, 11.50); // fill 02/00, line 00
            shape.graphics.curveTo(4.75, 11.25, 6.05, 10.10); // fill 02/00, line 00
            shape.graphics.curveTo(7.85, 8.50, 8.20, 5.35); // fill 02/00, line 00
            shape.graphics.curveTo(9.00, -1.90, 9.20, -8.95); // fill 02/00, line 00
            shape.graphics.curveTo(9.25, -10.95, 7.35, -11.00); // fill 02/00, line 00
            shape.graphics.curveTo(5.45, -11.05, 5.20, -9.20); // fill 02/00, line 00
        
            return shape;
        }

        public function define_0008(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0007(), 1, 0, 0, 1, 0.00, 9.10);
            return sprite;
        }
        
        public function define_0009(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0xfeffbd, 1); // 1
            //shape.graphics.beginFill(0x000000, 1); // 2
        
            shape.graphics.beginFill(0xfeffbd, 1); // 1
            shape.graphics.moveTo(4.25, -7.95); // fill 01/00, line 00
            shape.graphics.lineTo(1.00, -8.90); // fill 01/00, line 00
            shape.graphics.curveTo(-2.70, -9.40, -4.95, -7.45); // fill 01/00, line 00
            shape.graphics.lineTo(-6.80, -6.65); // fill 01/00, line 00
            shape.graphics.curveTo(-5.45, 0.95, -4.20, 4.25); // fill 01/00, line 00
            shape.graphics.curveTo(-1.80, 10.80, 2.10, 10.05); // fill 01/00, line 00
            shape.graphics.curveTo(5.85, 9.35, 6.15, 1.25); // fill 01/00, line 00
            shape.graphics.lineTo(5.70, -6.65); // fill 01/00, line 00
            shape.graphics.curveTo(5.40, -7.60, 4.25, -7.95); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0x000000, 1); // 2
            shape.graphics.moveTo(4.30, 1.40); // fill 02/00, line 00
            shape.graphics.curveTo(4.45, 7.30, 2.35, 7.90); // fill 02/00, line 00
            shape.graphics.curveTo(0.15, 8.55, -2.10, 2.90); // fill 02/00, line 00
            shape.graphics.curveTo(-3.85, -1.45, -4.85, -7.00); // fill 02/00, line 00
            shape.graphics.curveTo(-5.20, -9.00, -7.15, -8.65); // fill 02/00, line 00
            shape.graphics.curveTo(-9.10, -8.30, -8.75, -6.30); // fill 02/00, line 00
            shape.graphics.curveTo(-7.50, 0.85, -5.35, 5.50); // fill 02/00, line 00
            shape.graphics.curveTo(-2.00, 12.80, 3.00, 11.95); // fill 02/00, line 00
            shape.graphics.curveTo(7.80, 11.15, 8.30, 3.15); // fill 02/00, line 00
            shape.graphics.lineTo(7.70, -6.85); // fill 02/00, line 00
            shape.graphics.curveTo(7.55, -8.90, 5.65, -8.75); // fill 02/00, line 00
            shape.graphics.curveTo(3.70, -8.55, 3.70, -6.45); // fill 02/00, line 00
            shape.graphics.lineTo(4.30, 1.40); // fill 02/00, line 00
        
            return shape;
        }

        public function define_0010(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0009(), 1, 0, 0, 1, 0.00, 6.80);
            return sprite;
        }

        public function define_0011(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0x000000, 1); // 1
            //shape.graphics.beginFill(0xffaec1, 1); // 2
            //shape.graphics.beginFill(0x000000, 1); // 3
        
            shape.graphics.beginFill(0x000000, 1); // 1
            shape.graphics.moveTo(44.40, -4.40); // fill 01/00, line 00
            shape.graphics.curveTo(34.05, -18.25, 28.25, -23.75); // fill 01/00, line 00
            shape.graphics.curveTo(13.75, -37.60, -0.45, -37.60); // fill 01/00, line 00
            shape.graphics.curveTo(-11.25, -37.60, -20.50, -30.50); // fill 01/00, line 00
            shape.graphics.curveTo(-26.45, -25.95, -35.75, -14.35); // fill 01/00, line 00
            shape.graphics.curveTo(-43.85, -4.20, -47.25, 1.85); // fill 01/00, line 00
            shape.graphics.curveTo(-51.90, 10.15, -51.90, 17.20); // fill 01/00, line 00
            shape.graphics.curveTo(-51.90, 30.25, -41.05, 35.20); // fill 01/00, line 00
            shape.graphics.curveTo(-30.40, 40.05, -16.50, 34.20); // fill 01/00, line 00
            shape.graphics.curveTo(-8.70, 30.90, -4.30, 30.80); // fill 01/00, line 00
            shape.graphics.curveTo(1.55, 30.60, 11.80, 34.55); // fill 01/00, line 00
            shape.graphics.curveTo(21.35, 38.25, 30.55, 37.35); // fill 01/00, line 00
            shape.graphics.curveTo(40.10, 36.40, 45.65, 30.90); // fill 01/00, line 00
            shape.graphics.curveTo(53.80, 22.75, 51.35, 10.70); // fill 01/00, line 00
            shape.graphics.curveTo(49.70, 2.75, 44.40, -4.40); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0xffaec1, 1); // 2
            shape.graphics.moveTo(-32.60, -11.85); // fill 00/02, line 00
            shape.graphics.curveTo(-23.30, -23.50, -16.80, -28.15); // fill 00/02, line 00
            shape.graphics.curveTo(-9.25, -33.60, -0.45, -33.60); // fill 00/02, line 00
            shape.graphics.curveTo(11.30, -33.60, 25.80, -19.75); // fill 00/02, line 00
            shape.graphics.curveTo(31.55, -14.25, 41.20, -2.00); // fill 00/02, line 00
            shape.graphics.curveTo(45.10, 3.15, 46.90, 9.40); // fill 00/02, line 00
            shape.graphics.curveTo(50.15, 20.75, 42.80, 28.05); // fill 00/02, line 00
            shape.graphics.curveTo(40.15, 30.70, 36.15, 32.10); // fill 00/02, line 00
            shape.graphics.curveTo(32.10, 33.50, 27.15, 33.50); // fill 00/02, line 00
            shape.graphics.curveTo(20.30, 33.50, 13.20, 30.80); // fill 00/02, line 00
            shape.graphics.curveTo(2.70, 26.80, -3.70, 26.80); // fill 00/02, line 00
            shape.graphics.curveTo(-7.15, 26.80, -10.80, 27.85); // fill 00/02, line 00
            shape.graphics.curveTo(-13.45, 28.60, -18.05, 30.55); // fill 00/02, line 00
            shape.graphics.curveTo(-24.60, 33.30, -30.80, 33.30); // fill 00/02, line 00
            shape.graphics.curveTo(-37.85, 33.30, -42.45, 29.70); // fill 00/02, line 00
            shape.graphics.curveTo(-47.90, 25.40, -47.90, 17.20); // fill 00/02, line 00
            shape.graphics.curveTo(-47.90, 11.20, -43.80, 3.90); // fill 00/02, line 00
            shape.graphics.curveTo(-40.45, -2.05, -32.60, -11.85); // fill 00/02, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 01/01, line 00

            shape.graphics.beginFill(0x000000, 1); // 3
            shape.graphics.moveTo(-3.25, -33.75); // fill 01/03, line 00
            shape.graphics.lineTo(1.45, -33.70); // fill 01/03, line 00
            shape.graphics.curveTo(-1.10, -30.35, -1.10, -25.95); // fill 01/03, line 00
            shape.graphics.curveTo(-1.10, -23.45, -3.10, -23.45); // fill 01/03, line 00
            shape.graphics.curveTo(-3.90, -23.45, -4.50, -24.05); // fill 01/03, line 00
            shape.graphics.curveTo(-5.10, -24.65, -5.10, -25.45); // fill 01/03, line 00
            shape.graphics.curveTo(-5.10, -30.15, -3.25, -33.75); // fill 01/03, line 00
        
            return shape;
        }

        public function define_0012(): Shape
        {
            var shape: Shape = new Shape();
            //shape.graphics.beginFill(0x000000, 1); // 1
            //shape.graphics.beginFill(0x000000, 1); // 2
            //shape.graphics.beginFill(0xffffff, 1); // 3
            //shape.graphics.beginFill(0xffffff, 1); // 4
        
            shape.graphics.beginFill(0x000000, 1); // 1
            shape.graphics.moveTo(21.95, 13.50); // fill 01/00, line 00
            shape.graphics.curveTo(21.95, 19.10, 24.25, 23.05); // fill 01/00, line 00
            shape.graphics.curveTo(26.50, 27.00, 29.70, 27.00); // fill 01/00, line 00
            shape.graphics.curveTo(32.90, 27.00, 35.20, 23.05); // fill 01/00, line 00
            shape.graphics.curveTo(37.45, 19.10, 37.45, 13.50); // fill 01/00, line 00
            shape.graphics.curveTo(37.45, 7.90, 35.20, 3.95); // fill 01/00, line 00
            shape.graphics.curveTo(32.90, 0.00, 29.70, 0.00); // fill 01/00, line 00
            shape.graphics.curveTo(26.50, 0.00, 24.25, 3.95); // fill 01/00, line 00
            shape.graphics.curveTo(21.95, 7.90, 21.95, 13.50); // fill 01/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 00/00, line 00

            shape.graphics.beginFill(0x000000, 1); // 2
            shape.graphics.moveTo(-0.05, 13.50); // fill 02/00, line 00
            shape.graphics.curveTo(-0.05, 19.10, 2.25, 23.05); // fill 02/00, line 00
            shape.graphics.curveTo(4.50, 27.00, 7.70, 27.00); // fill 02/00, line 00
            shape.graphics.curveTo(10.90, 27.00, 13.20, 23.05); // fill 02/00, line 00
            shape.graphics.curveTo(15.45, 19.10, 15.45, 13.50); // fill 02/00, line 00
            shape.graphics.curveTo(15.45, 7.90, 13.20, 3.95); // fill 02/00, line 00
            shape.graphics.curveTo(10.90, 0.00, 7.70, 0.00); // fill 02/00, line 00
            shape.graphics.curveTo(4.50, 0.00, 2.25, 3.95); // fill 02/00, line 00
            shape.graphics.curveTo(-0.05, 7.90, -0.05, 13.50); // fill 02/00, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 01/01, line 00

            shape.graphics.beginFill(0xffffff, 1); // 3
            shape.graphics.moveTo(29.60, 13.55); // fill 03/01, line 00
            shape.graphics.curveTo(29.60, 16.30, 30.50, 18.20); // fill 03/01, line 00
            shape.graphics.curveTo(31.35, 20.15, 32.60, 20.15); // fill 03/01, line 00
            shape.graphics.curveTo(33.85, 20.15, 34.70, 18.20); // fill 03/01, line 00
            shape.graphics.curveTo(35.60, 16.30, 35.60, 13.55); // fill 03/01, line 00
            shape.graphics.curveTo(35.60, 10.85, 34.70, 8.95); // fill 03/01, line 00
            shape.graphics.curveTo(33.85, 7.00, 32.60, 7.00); // fill 03/01, line 00
            shape.graphics.curveTo(31.35, 7.00, 30.50, 8.95); // fill 03/01, line 00
            shape.graphics.curveTo(29.60, 10.85, 29.60, 13.55); // fill 03/01, line 00
            shape.graphics.moveTo(0.00, 0.00); // fill 02/02, line 00

            shape.graphics.beginFill(0xffffff, 1); // 4
            shape.graphics.moveTo(8.10, 13.55); // fill 04/02, line 00
            shape.graphics.curveTo(8.10, 16.30, 9.00, 18.20); // fill 04/02, line 00
            shape.graphics.curveTo(9.85, 20.15, 11.10, 20.15); // fill 04/02, line 00
            shape.graphics.curveTo(12.35, 20.15, 13.20, 18.20); // fill 04/02, line 00
            shape.graphics.curveTo(14.10, 16.30, 14.10, 13.55); // fill 04/02, line 00
            shape.graphics.curveTo(14.10, 10.85, 13.20, 8.95); // fill 04/02, line 00
            shape.graphics.curveTo(12.35, 7.00, 11.10, 7.00); // fill 04/02, line 00
            shape.graphics.curveTo(9.85, 7.00, 9.00, 8.95); // fill 04/02, line 00
            shape.graphics.curveTo(8.10, 10.85, 8.10, 13.55); // fill 04/02, line 00
        
            return shape;
        }

        public function define_0013(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0012(), 1, 0, 0, 1, 0.00, 0.00);
            return sprite;
        }

        public function define_0014(): Sprite
        {
            var sprite: Sprite = new Sprite();
            place(sprite, define_0011(), 1, 0, 0, 1, 0.00, -28.00);
            place(sprite, define_0013(), 1, 0, 0, 1, -21.40, -38.95);
            return sprite;
        }


    }
}

// /*
// 
// konchi.swf dump
// 
// [HEADER]        File version: 4
// [HEADER]        File size: 1617
// [HEADER]        Frame rate: 24.000000
// [HEADER]        Frame count: 1
// [HEADER]        Movie width: 240.00
// [HEADER]        Movie height: 280.00
// [009]         3 SETBACKGROUNDCOLOR (ff/ff/ff)
// [016]       142 DEFINESHAPE2 defines id 0001
//                  | fillstyles(02)        linestyles(00)
//                  | 1 ) SOLID feffbdff    
//                  | 2 ) SOLID 000000ff    
//                  |
//                  | fill: 01/00 line:00 - moveTo 9.30 -18.80
//                  | fill: 01/00 line:00 - splineTo (6.40 -22.65) 1.35 -20.35
//                  | fill: 01/00 line:00 - lineTo -3.15 -17.30
//                  | fill: 01/00 line:00 - splineTo (-5.35 -15.85) -6.35 -11.60
//                  | fill: 01/00 line:00 - lineTo -8.10 -1.00
//                  | fill: 01/00 line:00 - splineTo (-9.00 4.85) -8.75 10.50
//                  | fill: 01/00 line:00 - splineTo (-8.45 16.25) -7.05 18.00
//                  | fill: 01/00 line:00 - splineTo (-3.40 22.50) 3.15 -3.10
//                  | fill: 01/00 line:00 - lineTo 8.55 -9.00
//                  | fill: 01/00 line:00 - splineTo (12.40 -14.65) 9.30 -18.80
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 02/00 line:00 - moveTo -6.85 -16.30
//                  | fill: 02/00 line:00 - splineTo (-9.10 -11.55) -10.30 0.05
//                  | fill: 02/00 line:00 - splineTo (-10.75 4.40) -11.20 12.90
//                  | fill: 02/00 line:00 - splineTo (-11.35 17.05) -9.75 19.20
//                  | fill: 02/00 line:00 - splineTo (-8.50 20.90) -6.45 21.15
//                  | fill: 02/00 line:00 - splineTo (-4.60 21.40) -3.10 20.40
//                  | fill: 02/00 line:00 - splineTo (-1.35 19.20) -0.40 16.55
//                  | fill: 02/00 line:00 - splineTo (2.05 9.45) 5.10 -2.60
//                  | fill: 02/00 line:00 - splineTo (5.65 -4.90) 3.70 -5.15
//                  | fill: 02/00 line:00 - splineTo (1.70 -5.40) 1.20 -3.60
//                  | fill: 02/00 line:00 - lineTo -3.05 12.00
//                  | fill: 02/00 line:00 - splineTo (-4.60 17.20) -5.80 17.20
//                  | fill: 02/00 line:00 - splineTo (-8.10 17.20) -6.65 3.10
//                  | fill: 02/00 line:00 - splineTo (-5.30 -10.40) -3.15 -16.10
//                  | fill: 02/00 line:00 - splineTo (-2.55 -17.70) -4.15 -18.10
//                  | fill: 02/00 line:00 - splineTo (-5.80 -18.50) -6.85 -16.30
//                  |
// [027]         4 DEFINESPRITE defines id 0002
// [01a]         9          PLACEOBJECT2 places id 0001 at depth 0002
//                           | Matrix             
//                           | 1.000 0.000 -57.75 
//                           | 0.000 1.000  15.30 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [01a]        13 PLACEOBJECT2 places id 0002 at depth 0001 name "ar"
//                  | Matrix             
//                  | 1.000 0.000 157.20 
//                  | 0.000 1.000 141.35 
// [016]       144 DEFINESHAPE2 defines id 0003
//                  | fillstyles(02)        linestyles(00)
//                  | 1 ) SOLID feffbdff    
//                  | 2 ) SOLID 000000ff    
//                  |
//                  | fill: 01/00 line:00 - moveTo 3.70 -16.35
//                  | fill: 01/00 line:00 - splineTo (1.60 -19.00) -2.05 -20.65
//                  | fill: 01/00 line:00 - splineTo (-4.10 -21.60) -7.35 -22.40
//                  | fill: 01/00 line:00 - splineTo (-10.25 -23.10) -11.90 -21.75
//                  | fill: 01/00 line:00 - splineTo (-13.50 -20.45) -13.35 -17.75
//                  | fill: 01/00 line:00 - splineTo (-13.10 -11.30) -5.00 -4.25
//                  | fill: 01/00 line:00 - lineTo -2.70 7.50
//                  | fill: 01/00 line:00 - splineTo (0.45 19.10) 4.70 18.55
//                  | fill: 01/00 line:00 - splineTo (9.10 17.95) 7.25 1.55
//                  | fill: 01/00 line:00 - splineTo (5.55 -13.35) 3.70 -16.35
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 02/00 line:00 - moveTo 5.80 4.95
//                  | fill: 02/00 line:00 - splineTo (6.55 16.30) 4.35 16.60
//                  | fill: 02/00 line:00 - splineTo (2.50 16.85) -0.45 6.10
//                  | fill: 02/00 line:00 - lineTo -3.05 -4.75
//                  | fill: 02/00 line:00 - splineTo (-3.65 -6.90) -5.65 -6.50
//                  | fill: 02/00 line:00 - splineTo (-7.60 -6.15) -6.95 -3.80
//                  | fill: 02/00 line:00 - lineTo -4.95 4.40
//                  | fill: 02/00 line:00 - splineTo (-2.60 13.25) -1.15 16.55
//                  | fill: 02/00 line:00 - splineTo (-0.40 18.15) 0.80 19.20
//                  | fill: 02/00 line:00 - splineTo (2.70 21.00) 5.10 20.50
//                  | fill: 02/00 line:00 - splineTo (9.05 19.65) 9.60 14.75
//                  | fill: 02/00 line:00 - splineTo (10.60 7.20) 9.05 -3.25
//                  | fill: 02/00 line:00 - splineTo (7.65 -12.85) 5.40 -17.40
//                  | fill: 02/00 line:00 - splineTo (4.45 -19.40) 2.85 -18.40
//                  | fill: 02/00 line:00 - splineTo (1.25 -17.45) 2.00 -15.30
//                  | fill: 02/00 line:00 - splineTo (5.10 -6.65) 5.80 4.95
//                  |
// [027]         4 DEFINESPRITE defines id 0004
// [01a]         9          PLACEOBJECT2 places id 0003 at depth 0002
//                           | Matrix             
//                           | 1.000 0.000  29.10 
//                           | 0.000 1.000  22.35 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [01a]        13 PLACEOBJECT2 places id 0004 at depth 0004 name "al"
//                  | Matrix             
//                  | 1.000 0.000 125.50 
//                  | 0.000 1.000 135.85 
// [016]       266 DEFINESHAPE2 defines id 0005
//                  | fillstyles(04)        linestyles(00)
//                  | 1 ) SOLID feffbdff    
//                  | 2 ) SOLID 000000ff    
//                  | 3 ) SOLID 000000ff    
//                  | 4 ) SOLID 000000ff    
//                  |
//                  | fill: 01/00 line:00 - moveTo 23.15 -15.40
//                  | fill: 01/00 line:00 - splineTo (11.55 -21.05) -6.25 -19.80
//                  | fill: 01/00 line:00 - splineTo (-20.20 -18.85) -24.45 -16.30
//                  | fill: 01/00 line:00 - splineTo (-25.50 -13.70) -25.45 -9.65
//                  | fill: 01/00 line:00 - splineTo (-25.40 -4.95) -23.75 -0.70
//                  | fill: 01/00 line:00 - splineTo (-24.50 5.65) -23.55 14.90
//                  | fill: 01/00 line:00 - splineTo (-22.80 22.35) -22.10 24.10
//                  | fill: 01/00 line:00 - splineTo (-22.00 24.30) -21.15 23.80
//                  | fill: 01/00 line:00 - splineTo (-20.30 23.35) -20.05 24.25
//                  | fill: 01/00 line:00 - splineTo (-19.95 24.90) -18.85 25.65
//                  | fill: 01/00 line:00 - splineTo (-17.45 26.60) -15.55 26.60
//                  | fill: 01/00 line:00 - splineTo (-13.65 26.60) -12.50 25.60
//                  | fill: 01/00 line:00 - lineTo -11.55 24.50
//                  | fill: 01/00 line:00 - lineTo -8.75 25.05
//                  | fill: 01/00 line:00 - lineTo -0.15 25.55
//                  | fill: 01/00 line:00 - splineTo (7.55 25.55) 11.40 24.45
//                  | fill: 01/00 line:00 - lineTo 12.95 25.65
//                  | fill: 01/00 line:00 - splineTo (14.95 26.75) 17.30 26.45
//                  | fill: 01/00 line:00 - splineTo (19.70 26.15) 21.05 24.20
//                  | fill: 01/00 line:00 - lineTo 21.90 22.35
//                  | fill: 01/00 line:00 - lineTo 23.20 20.80
//                  | fill: 01/00 line:00 - splineTo (24.10 19.80) 24.15 18.90
//                  | fill: 01/00 line:00 - splineTo (24.70 13.90) 24.05 -1.40
//                  | fill: 01/00 line:00 - splineTo (25.70 -5.35) 24.60 -10.75
//                  | fill: 01/00 line:00 - lineTo 23.15 -15.40
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 02/00 line:00 - moveTo 11.35 23.90
//                  | fill: 02/00 line:00 - splineTo (10.85 21.95) 8.95 22.45
//                  | fill: 02/00 line:00 - lineTo 4.65 23.35
//                  | fill: 02/00 line:00 - lineTo -0.20 23.60
//                  | fill: 02/00 line:00 - lineTo -6.10 23.10
//                  | fill: 02/00 line:00 - lineTo -9.00 22.55
//                  | fill: 02/00 line:00 - splineTo (-11.00 22.00) -11.55 23.90
//                  | fill: 02/00 line:00 - splineTo (-12.10 25.85) -10.10 26.40
//                  | fill: 02/00 line:00 - lineTo -7.25 27.00
//                  | fill: 02/00 line:00 - lineTo -0.20 27.60
//                  | fill: 02/00 line:00 - splineTo (5.25 27.50) 9.95 26.35
//                  | fill: 02/00 line:00 - splineTo (11.85 25.85) 11.35 23.90
//                  | fill: 01/01 line:00 - moveTo 0.00 0.00
//                  | fill: 03/01 line:00 - moveTo 22.45 8.35
//                  | fill: 03/01 line:00 - splineTo (22.55 15.85) 21.85 22.05
//                  | fill: 03/01 line:00 - splineTo (21.65 24.05) 23.65 24.25
//                  | fill: 03/01 line:00 - splineTo (25.60 24.50) 25.85 22.55
//                  | fill: 03/01 line:00 - lineTo 25.85 22.50
//                  | fill: 03/01 line:00 - splineTo (27.00 14.75) 26.05 -1.55
//                  | fill: 03/01 line:00 - splineTo (25.95 -3.60) 23.95 -3.50
//                  | fill: 03/01 line:00 - splineTo (21.95 -3.35) 22.05 -1.30
//                  | fill: 03/01 line:00 - lineTo 22.45 8.35
//                  | fill: 02/02 line:00 - moveTo 0.00 0.00
//                  | fill: 04/02 line:00 - moveTo -25.75 11.70
//                  | fill: 04/02 line:00 - splineTo (-25.35 19.70) -24.00 24.80
//                  | fill: 04/02 line:00 - splineTo (-23.45 26.65) -21.55 26.20
//                  | fill: 04/02 line:00 - splineTo (-19.60 25.75) -20.10 23.80
//                  | fill: 04/02 line:00 - splineTo (-21.35 19.10) -21.65 10.45
//                  | fill: 04/02 line:00 - lineTo -21.75 -0.60
//                  | fill: 04/02 line:00 - splineTo (-21.65 -2.55) -23.65 -2.65
//                  | fill: 04/02 line:00 - splineTo (-25.65 -2.75) -25.75 -0.80
//                  | fill: 04/02 line:00 - splineTo (-26.15 4.90) -25.75 11.70
//                  |
// [027]         4 DEFINESPRITE defines id 0006
// [01a]         8          PLACEOBJECT2 places id 0005 at depth 0004
//                           | Matrix             
//                           | 1.000 0.000  -3.55 
//                           | 0.000 1.000   0.00 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [01a]        12 PLACEOBJECT2 places id 0006 at depth 0007 name "b"
//                  | Matrix             
//                  | 1.000 0.000 129.35 
//                  | 0.000 1.000 152.10 
// [016]       132 DEFINESHAPE2 defines id 0007
//                  | fillstyles(02)        linestyles(00)
//                  | 1 ) SOLID feffbdff    
//                  | 2 ) SOLID 000000ff    
//                  |
//                  | fill: 01/00 line:00 - moveTo -4.25 2.45
//                  | fill: 01/00 line:00 - splineTo (-0.80 10.15) 2.70 9.55
//                  | fill: 01/00 line:00 - splineTo (6.10 8.90) 6.90 1.25
//                  | fill: 01/00 line:00 - lineTo 7.20 -9.05
//                  | fill: 01/00 line:00 - lineTo 5.25 -9.15
//                  | fill: 01/00 line:00 - splineTo (1.40 -10.85) -2.00 -9.85
//                  | fill: 01/00 line:00 - splineTo (-4.15 -9.25) -5.45 -7.90
//                  | fill: 01/00 line:00 - splineTo (-6.60 -7.55) -7.20 -6.95
//                  | fill: 01/00 line:00 - splineTo (-7.20 -4.00) -4.25 2.45
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 02/00 line:00 - moveTo 5.20 -9.20
//                  | fill: 02/00 line:00 - lineTo 4.70 0.45
//                  | fill: 02/00 line:00 - splineTo (4.15 7.20) 2.10 7.55
//                  | fill: 02/00 line:00 - splineTo (0.00 7.95) -2.35 2.30
//                  | fill: 02/00 line:00 - splineTo (-4.15 -2.05) -5.20 -7.15
//                  | fill: 02/00 line:00 - splineTo (-5.55 -9.10) -7.50 -8.90
//                  | fill: 02/00 line:00 - splineTo (-9.40 -8.75) -9.20 -6.80
//                  | fill: 02/00 line:00 - splineTo (-8.90 -4.15) -7.35 0.15
//                  | fill: 02/00 line:00 - lineTo -4.85 6.15
//                  | fill: 02/00 line:00 - splineTo (-3.40 9.35) -1.00 10.70
//                  | fill: 02/00 line:00 - splineTo (0.90 11.75) 2.95 11.50
//                  | fill: 02/00 line:00 - splineTo (4.75 11.25) 6.05 10.10
//                  | fill: 02/00 line:00 - splineTo (7.85 8.50) 8.20 5.35
//                  | fill: 02/00 line:00 - splineTo (9.00 -1.90) 9.20 -8.95
//                  | fill: 02/00 line:00 - splineTo (9.25 -10.95) 7.35 -11.00
//                  | fill: 02/00 line:00 - splineTo (5.45 -11.05) 5.20 -9.20
//                  |
// [027]         4 DEFINESPRITE defines id 0008
// [01a]         9          PLACEOBJECT2 places id 0007 at depth 0002
//                           | Matrix             
//                           | 1.000 0.000   0.00 
//                           | 0.000 1.000   9.10 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [01a]        13 PLACEOBJECT2 places id 0008 at depth 0012 name "ll"
//                  | Matrix             
//                  | 1.000 0.000 142.40 
//                  | 0.000 1.000 173.40 
// [016]       119 DEFINESHAPE2 defines id 0009
//                  | fillstyles(02)        linestyles(00)
//                  | 1 ) SOLID feffbdff    
//                  | 2 ) SOLID 000000ff    
//                  |
//                  | fill: 01/00 line:00 - moveTo 4.25 -7.95
//                  | fill: 01/00 line:00 - lineTo 1.00 -8.90
//                  | fill: 01/00 line:00 - splineTo (-2.70 -9.40) -4.95 -7.45
//                  | fill: 01/00 line:00 - lineTo -6.80 -6.65
//                  | fill: 01/00 line:00 - splineTo (-5.45 0.95) -4.20 4.25
//                  | fill: 01/00 line:00 - splineTo (-1.80 10.80) 2.10 10.05
//                  | fill: 01/00 line:00 - splineTo (5.85 9.35) 6.15 1.25
//                  | fill: 01/00 line:00 - lineTo 5.70 -6.65
//                  | fill: 01/00 line:00 - splineTo (5.40 -7.60) 4.25 -7.95
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 02/00 line:00 - moveTo 4.30 1.40
//                  | fill: 02/00 line:00 - splineTo (4.45 7.30) 2.35 7.90
//                  | fill: 02/00 line:00 - splineTo (0.15 8.55) -2.10 2.90
//                  | fill: 02/00 line:00 - splineTo (-3.85 -1.45) -4.85 -7.00
//                  | fill: 02/00 line:00 - splineTo (-5.20 -9.00) -7.15 -8.65
//                  | fill: 02/00 line:00 - splineTo (-9.10 -8.30) -8.75 -6.30
//                  | fill: 02/00 line:00 - splineTo (-7.50 0.85) -5.35 5.50
//                  | fill: 02/00 line:00 - splineTo (-2.00 12.80) 3.00 11.95
//                  | fill: 02/00 line:00 - splineTo (7.80 11.15) 8.30 3.15
//                  | fill: 02/00 line:00 - lineTo 7.70 -6.85
//                  | fill: 02/00 line:00 - splineTo (7.55 -8.90) 5.65 -8.75
//                  | fill: 02/00 line:00 - splineTo (3.70 -8.55) 3.70 -6.45
//                  | fill: 02/00 line:00 - lineTo 4.30 1.40
//                  |
// [027]         4 DEFINESPRITE defines id 0010
// [01a]         9          PLACEOBJECT2 places id 0009 at depth 0002
//                           | Matrix             
//                           | 1.000 0.000   0.00 
//                           | 0.000 1.000   6.80 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [01a]        13 PLACEOBJECT2 places id 0010 at depth 0015 name "lr"
//                  | Matrix             
//                  | 1.000 0.000 110.50 
//                  | 0.000 1.000 176.35 
// [016]       236 DEFINESHAPE2 defines id 0011
//                  | fillstyles(03)        linestyles(00)
//                  | 1 ) SOLID 000000ff    
//                  | 2 ) SOLID ffaec1ff    
//                  | 3 ) SOLID 000000ff    
//                  |
//                  | fill: 01/00 line:00 - moveTo 44.40 -4.40
//                  | fill: 01/00 line:00 - splineTo (34.05 -18.25) 28.25 -23.75
//                  | fill: 01/00 line:00 - splineTo (13.75 -37.60) -0.45 -37.60
//                  | fill: 01/00 line:00 - splineTo (-11.25 -37.60) -20.50 -30.50
//                  | fill: 01/00 line:00 - splineTo (-26.45 -25.95) -35.75 -14.35
//                  | fill: 01/00 line:00 - splineTo (-43.85 -4.20) -47.25 1.85
//                  | fill: 01/00 line:00 - splineTo (-51.90 10.15) -51.90 17.20
//                  | fill: 01/00 line:00 - splineTo (-51.90 30.25) -41.05 35.20
//                  | fill: 01/00 line:00 - splineTo (-30.40 40.05) -16.50 34.20
//                  | fill: 01/00 line:00 - splineTo (-8.70 30.90) -4.30 30.80
//                  | fill: 01/00 line:00 - splineTo (1.55 30.60) 11.80 34.55
//                  | fill: 01/00 line:00 - splineTo (21.35 38.25) 30.55 37.35
//                  | fill: 01/00 line:00 - splineTo (40.10 36.40) 45.65 30.90
//                  | fill: 01/00 line:00 - splineTo (53.80 22.75) 51.35 10.70
//                  | fill: 01/00 line:00 - splineTo (49.70 2.75) 44.40 -4.40
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 00/02 line:00 - moveTo -32.60 -11.85
//                  | fill: 00/02 line:00 - splineTo (-23.30 -23.50) -16.80 -28.15
//                  | fill: 00/02 line:00 - splineTo (-9.25 -33.60) -0.45 -33.60
//                  | fill: 00/02 line:00 - splineTo (11.30 -33.60) 25.80 -19.75
//                  | fill: 00/02 line:00 - splineTo (31.55 -14.25) 41.20 -2.00
//                  | fill: 00/02 line:00 - splineTo (45.10 3.15) 46.90 9.40
//                  | fill: 00/02 line:00 - splineTo (50.15 20.75) 42.80 28.05
//                  | fill: 00/02 line:00 - splineTo (40.15 30.70) 36.15 32.10
//                  | fill: 00/02 line:00 - splineTo (32.10 33.50) 27.15 33.50
//                  | fill: 00/02 line:00 - splineTo (20.30 33.50) 13.20 30.80
//                  | fill: 00/02 line:00 - splineTo (2.70 26.80) -3.70 26.80
//                  | fill: 00/02 line:00 - splineTo (-7.15 26.80) -10.80 27.85
//                  | fill: 00/02 line:00 - splineTo (-13.45 28.60) -18.05 30.55
//                  | fill: 00/02 line:00 - splineTo (-24.60 33.30) -30.80 33.30
//                  | fill: 00/02 line:00 - splineTo (-37.85 33.30) -42.45 29.70
//                  | fill: 00/02 line:00 - splineTo (-47.90 25.40) -47.90 17.20
//                  | fill: 00/02 line:00 - splineTo (-47.90 11.20) -43.80 3.90
//                  | fill: 00/02 line:00 - splineTo (-40.45 -2.05) -32.60 -11.85
//                  | fill: 01/01 line:00 - moveTo 0.00 0.00
//                  | fill: 01/03 line:00 - moveTo -3.25 -33.75
//                  | fill: 01/03 line:00 - lineTo 1.45 -33.70
//                  | fill: 01/03 line:00 - splineTo (-1.10 -30.35) -1.10 -25.95
//                  | fill: 01/03 line:00 - splineTo (-1.10 -23.45) -3.10 -23.45
//                  | fill: 01/03 line:00 - splineTo (-3.90 -23.45) -4.50 -24.05
//                  | fill: 01/03 line:00 - splineTo (-5.10 -24.65) -5.10 -25.45
//                  | fill: 01/03 line:00 - splineTo (-5.10 -30.15) -3.25 -33.75
//                  |
// [016]       205 DEFINESHAPE2 defines id 0012
//                  | fillstyles(04)        linestyles(00)
//                  | 1 ) SOLID 000000ff    
//                  | 2 ) SOLID 000000ff    
//                  | 3 ) SOLID ffffffff    
//                  | 4 ) SOLID ffffffff    
//                  |
//                  | fill: 01/00 line:00 - moveTo 21.95 13.50
//                  | fill: 01/00 line:00 - splineTo (21.95 19.10) 24.25 23.05
//                  | fill: 01/00 line:00 - splineTo (26.50 27.00) 29.70 27.00
//                  | fill: 01/00 line:00 - splineTo (32.90 27.00) 35.20 23.05
//                  | fill: 01/00 line:00 - splineTo (37.45 19.10) 37.45 13.50
//                  | fill: 01/00 line:00 - splineTo (37.45 7.90) 35.20 3.95
//                  | fill: 01/00 line:00 - splineTo (32.90 0.00) 29.70 0.00
//                  | fill: 01/00 line:00 - splineTo (26.50 0.00) 24.25 3.95
//                  | fill: 01/00 line:00 - splineTo (21.95 7.90) 21.95 13.50
//                  | fill: 00/00 line:00 - moveTo 0.00 0.00
//                  | fill: 02/00 line:00 - moveTo -0.05 13.50
//                  | fill: 02/00 line:00 - splineTo (-0.05 19.10) 2.25 23.05
//                  | fill: 02/00 line:00 - splineTo (4.50 27.00) 7.70 27.00
//                  | fill: 02/00 line:00 - splineTo (10.90 27.00) 13.20 23.05
//                  | fill: 02/00 line:00 - splineTo (15.45 19.10) 15.45 13.50
//                  | fill: 02/00 line:00 - splineTo (15.45 7.90) 13.20 3.95
//                  | fill: 02/00 line:00 - splineTo (10.90 0.00) 7.70 0.00
//                  | fill: 02/00 line:00 - splineTo (4.50 0.00) 2.25 3.95
//                  | fill: 02/00 line:00 - splineTo (-0.05 7.90) -0.05 13.50
//                  | fill: 01/01 line:00 - moveTo 0.00 0.00
//                  | fill: 03/01 line:00 - moveTo 29.60 13.55
//                  | fill: 03/01 line:00 - splineTo (29.60 16.30) 30.50 18.20
//                  | fill: 03/01 line:00 - splineTo (31.35 20.15) 32.60 20.15
//                  | fill: 03/01 line:00 - splineTo (33.85 20.15) 34.70 18.20
//                  | fill: 03/01 line:00 - splineTo (35.60 16.30) 35.60 13.55
//                  | fill: 03/01 line:00 - splineTo (35.60 10.85) 34.70 8.95
//                  | fill: 03/01 line:00 - splineTo (33.85 7.00) 32.60 7.00
//                  | fill: 03/01 line:00 - splineTo (31.35 7.00) 30.50 8.95
//                  | fill: 03/01 line:00 - splineTo (29.60 10.85) 29.60 13.55
//                  | fill: 02/02 line:00 - moveTo 0.00 0.00
//                  | fill: 04/02 line:00 - moveTo 8.10 13.55
//                  | fill: 04/02 line:00 - splineTo (8.10 16.30) 9.00 18.20
//                  | fill: 04/02 line:00 - splineTo (9.85 20.15) 11.10 20.15
//                  | fill: 04/02 line:00 - splineTo (12.35 20.15) 13.20 18.20
//                  | fill: 04/02 line:00 - splineTo (14.10 16.30) 14.10 13.55
//                  | fill: 04/02 line:00 - splineTo (14.10 10.85) 13.20 8.95
//                  | fill: 04/02 line:00 - splineTo (12.35 7.00) 11.10 7.00
//                  | fill: 04/02 line:00 - splineTo (9.85 7.00) 9.00 8.95
//                  | fill: 04/02 line:00 - splineTo (8.10 10.85) 8.10 13.55
//                  |
// [027]         4 DEFINESPRITE defines id 0013
// [01a]         6          PLACEOBJECT2 places id 0012 at depth 0004
//                           | Matrix             
//                           | 1.000 0.000   0.00 
//                           | 0.000 1.000   0.00 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [027]         4 DEFINESPRITE defines id 0014
// [01a]         9          PLACEOBJECT2 places id 0011 at depth 0003
//                           | Matrix             
//                           | 1.000 0.000   0.00 
//                           | 0.000 1.000 -28.00 
// [01a]        13          PLACEOBJECT2 places id 0013 at depth 0004 name "h_e"
//                           | Matrix             
//                           | 1.000 0.000 -21.40 
//                           | 0.000 1.000 -38.95 
// [001]         0          SHOWFRAME 1 (00:00:00,000)
// [000]         0          END
// [01a]        12 PLACEOBJECT2 places id 0014 at depth 0018 name "h"
//                  | Matrix             
//                  | 1.000 0.000 125.00 
//                  | 0.000 1.000 135.25 
// [001]         0 SHOWFRAME 1 (00:00:00,000)
// [000]         0 END
// 
// */
