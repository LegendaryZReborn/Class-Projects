/*Cavaughn Browne
 
Square.cs class implements a square which inherits from TwoDShape.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace Shapes
{
    public class Square: TwoDShape
    {
        private double length;
        private Point p1, p2, p3, p4;
        
        //constructor
       public Square() : base()
        {
            length = 0;
            Name = "Square";
            SImage = Image.FromFile(Dir);

            //points of square
            p1 = this.OriginPoint;
            p2 = new Point(0, 0);
            p3 = new Point(0, 0);
            p4 = new Point(0, 0);

            //calculate the area and perimeter from current data
            calculateArea();
            calculatePerimeter();
        }

       public Square(Point pointO, double length): base(pointO)
        {
            double x2, y2;

            this.length = length;
            Name = "Square";
            SImage = Image.FromFile(Dir); x2 = pointO.X + length;
            y2 = pointO.Y + length;

            //points of square
            p1 = this.OriginPoint;
            p2 = new Point(x2, pointO.Y);
            p3 = new Point(pointO.X, y2);
            p4 = new Point(x2, y2);

            //calculate the area and perimeter from current data
            calculateArea();
            calculatePerimeter();

        }

        //Purpose: Calculates the area of the square
        //and stores it
        //Requires: nothing
        //Returns: nothing
        public override void calculateArea()
        {
            Area = length * length;
        }

        //Purpose: Calculates the perimeter of the square
        //and stores it.
        //Requires: nothing
        //Returns: nothing
        public override void calculatePerimeter()
        {
            Perimeter = length * 4;
        }

        //Purpose: returns the string represent representation of the shape
        //Requires: nothing
        //Returns: a string
        public override string ToString()
        {
            string  squareSpecs;
            string P1, P2, P3, P4;

            P1 = p1.toString2D();
            P2 = p2.toString2D();
            P3 = p3.toString2D();
            P4 = p4.toString2D();

            squareSpecs = base.ToString() + Environment.NewLine;
            squareSpecs += "Length: " + length + Environment.NewLine;
            squareSpecs += "Points: P1" + P1 + " P2" + P2 + Environment.NewLine
                + " P3" + P3 + " P4" + P4 + Environment.NewLine;
            
            return squareSpecs;
        }
      
    }
}
