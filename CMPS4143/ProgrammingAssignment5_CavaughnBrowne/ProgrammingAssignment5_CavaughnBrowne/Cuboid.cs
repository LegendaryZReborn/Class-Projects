/*Cavaughn Browne 
 
Cuboid.cs is an implementation of a cuboid(3d counter part to a rectangle)
, a 3d obect, which inherits from ThreeDShape
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;


namespace Shapes
{
   public class Cuboid: ThreeDShape
    {

        private double length, width, height;
        private Point p1, p2, p3, p4, p5, p6, p7, p8;

        //constructor
        public Cuboid() : base()
            {
            length = 0;
            width = 0;
            height = 0;
            Name = "Cuboid";
            SImage = Image.FromFile(Dir);

            //points of cuboids's front plane
            p1 = this.OriginPoint3D;
            p2 = new Point(0, 0, 0);
            p3 = new Point(0, 0, 0);
            p4 = new Point(0, 0, 0);

            //points of back plane
            p5 = new Point(0, 0, 0);
            p6 = new Point(0, 0, 0);
            p7 = new Point(0, 0, 0);
            p8 = new Point(0, 0, 0);

            //calculate the area and volume from current data
            calculateArea();
            calculateVolume();
        }

        //parameterize constructor
        public Cuboid(Point pointO, Point pointO2, double length, double height) : base(pointO)
            {
            double x2, y2, xp2, yp2;
            double val = pointO.Z - pointO2.Z;

            this.length = length;
            //ifthe difference between the Zs of the two points is negative
            //make it positive
            this.width = (val) >= 0 ? val : (val*-1) ;
            this.height = height;
            Name = "Cuboid";
            SImage = Image.FromFile(Dir);
            x2 = pointO.X + length;
            y2 = pointO.Y + height;
            xp2 = pointO2.X + length;
            yp2 = pointO2.Y + height;

            //points of cuboid
            //front plane
            p1 = this.OriginPoint3D;
            p2 = new Point(x2, pointO.Y, pointO.Z);
            p3 = new Point(pointO.X, y2, pointO.Z);
            p4 = new Point(x2, y2, pointO.Z);

            //back plane
            p5 = new Point(pointO2.X, pointO2.Y, pointO2.Z);
            p6 = new Point(xp2, pointO2.Y, pointO2.Z);
            p7 = new Point(pointO2.X, yp2, pointO2.Z);
            p8 = new Point(xp2, yp2, pointO2.Z);


            //calculate the area and perimeter from current data
            calculateArea();
            calculateVolume();

        }

        //Purpose: Calculates the surface area of the cuboid
        //and stores it
        //Requires: nothing
        //Returns: nothing
        public override void calculateArea()
        {
            Area = (length * height * 2) + (width * height * 2) 
                + (length * width * 2);
        }

        //Purpose: Calculates the volume of the Cuboid
        //and stores it.
        //Requires: nothing
        //Returns: nothing
        public override void calculateVolume()
        {
            Volume = length * width * height;
        }

        //Purpose: returns the string represent representation of the cube
        //Requires: nothing
        //Returns: a string
        public override string ToString()
        {
            string cuboidSpecs;
            string P1, P2, P3, P4, P5, P6, P7, P8;

            P1 = p1.toString3D();
            P2 = p2.toString3D();
            P3 = p3.toString3D();
            P4 = p4.toString3D();
            P5 = p5.toString3D();
            P6 = p6.toString3D();
            P7 = p7.toString3D();
            P8 = p8.toString3D();

            cuboidSpecs = base.ToString() + Environment.NewLine;
            cuboidSpecs += "Length: " + length + Environment.NewLine;
            cuboidSpecs += "Width: " + width + Environment.NewLine;
            cuboidSpecs += "Height: " + height + Environment.NewLine;
            cuboidSpecs += "Points: P1" + P1 + " P2" + P2 + Environment.NewLine
                    + "P3" + P3 + " P4" + P4 + Environment.NewLine +
                    "P5" + P5 + " P6" + P6 + Environment.NewLine +
                     "P7" + P7 + " P8" + P8;

            return cuboidSpecs;
        }
    }
}
