/*Cavaughn Browne
 
Rectangle.cs class implements a rectangle which inherits from TwoDShape.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing;


namespace Shapes
{
    public class Rectangle : TwoDShape
    {
        private double length, width;
        private Point p1, p2, p3, p4;

        //constructor
        public Rectangle() : base()
        {
            length = 0;
            width = 0;
            Name = "Rectangle";
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

        //parameterized constructor
        public Rectangle(Point pointO, double length, double width) : base(pointO)
        {
            Name = "Rectangle";
            SImage = Image.FromFile(Dir);
            double x2, y2;
            string recMessage = "Rectangle's length and width cannot be equal." +
                "As a consequence, 1 will be added to its length.";
            this.length = length;
            this.width = width;

            //add 1 to lenght if it is equal to width
            // notify user of this change
            if(this.length == this.width)
            {
                MessageBox.Show(recMessage, "Dimension Change Notice", 
                    MessageBoxButtons.OK, MessageBoxIcon.Exclamation);

               this.length++;
            }
           
            x2 = pointO.X + this.length;
            y2 = pointO.Y + this.width;

            //points of square
            p1 = this.OriginPoint;
            p2 = new Point(x2, pointO.Y);
            p3 = new Point(pointO.X, y2);
            p4 = new Point(x2, y2);

            //calculate the area and perimeter from current data
            calculateArea();
            calculatePerimeter();

        }

        //Purpose: Calculates the area of the rectangle
        //and stores it
        //Requires: nothing
        //Returns: nothing
        public override void calculateArea()
        {
            Area = length * width;
        }

        //Purpose: Calculates the perimeter of the rectangle
        //and stores it.
        //Requires: nothing
        //Returns: nothing
        public override void calculatePerimeter()
        {
            Perimeter = (2*length) + (2*width);
        }

        //Purpose: returns the string represent representation of the shape
        //Requires: nothing
        //Returns:a string
        public override string ToString()
        {
            string rectangleSpecs;
            string P1, P2, P3, P4;

            P1 = p1.toString2D();
            P2 = p2.toString2D();
            P3 = p3.toString2D();
            P4 = p4.toString2D();

            rectangleSpecs = base.ToString() + Environment.NewLine;
            rectangleSpecs += "Length: " + length + Environment.NewLine;
            rectangleSpecs += "Width: " + width + Environment.NewLine;
            rectangleSpecs += "Points: P1" + P1 + " P2" + P2 + Environment.NewLine
                + " P3" + P3 + " P4" + P4 + Environment.NewLine;

            return rectangleSpecs;
        }
    }
}
