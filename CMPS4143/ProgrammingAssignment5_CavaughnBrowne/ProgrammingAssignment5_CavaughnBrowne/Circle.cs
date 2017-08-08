/*Cavaughn Browne
 
Circle.cs class implements a circle which inherits from TwoDShape.
 */
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;

namespace Shapes
{
    public class Circle: TwoDShape
    {
        private double radius;
        private Point center;

        //constructor
        public Circle() : base()
        {
            
            Name = "Circle";
            SImage = Image.FromFile(Dir);
            radius = 0;
            //points of square
            center = OriginPoint;

            //calculate the area and perimeter/circumference from current data
            calculateArea();
            calculatePerimeter();
        }

        public Circle(Point pointO, double radius): base(pointO)
        {
            Name = "Circle";
            SImage = Image.FromFile(Dir);
            center = OriginPoint;
            this.radius = radius;

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
            Area = Math.PI * Math.Pow(radius, 2);
        }

        //Purpose: Calculates the perimeter of the circle
        //and stores it.
        //Requires: nothing
        //Returns: nothing
        public override void calculatePerimeter()
        {
            Perimeter = 2 * Math.PI *  radius;
        }

        //Purpose: returns the string represent representation of the shape
        //Requires: nothing
        //Returns: a string
        public override string ToString()
        {
            string circleSpecs;
            string centerS;

           centerS = center.toString2D();

            circleSpecs = base.ToString() + Environment.NewLine;
            circleSpecs += "Radius: " + radius + Environment.NewLine;
            circleSpecs += "Center: " + centerS.ToString();

            return circleSpecs;
        }



    }
}
