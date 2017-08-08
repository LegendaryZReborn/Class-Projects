/*Cavaughn Browne 
 
Cylinder.cs is an implementation of a cylinder
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
   public class Cylinder: ThreeDShape
    {

        private double  radius, height;
        private Point c1, c2;

        //constructor
        public Cylinder() : base()
            {
           
            height = 0;
            radius = 0;
            Name = "Cylinder";
            SImage = Image.FromFile(Dir);

            //center points of circles on cylinder
            c1 = this.OriginPoint3D;
            c2 = new Point(0, 0, 0);
           

            //calculate the area and volume from current data
            calculateArea();
            calculateVolume();
        }

        //parameterize constructor
        public Cylinder(Point pointO, double radius, double height) : base(pointO)
         {
            this.height = height;
            this.radius = radius;

            Name = "Cylinder";
            SImage = Image.FromFile(Dir);
            //points of cylinder
            //bottom circle center
            c1 = this.OriginPoint3D;

            //top circle center
            c2 = new Point(pointO.X, pointO.Y + height, pointO.Z);

            //calculate the area and perimeter from current data
            calculateArea();
            calculateVolume();

        }

        //Purpose: Calculates the surface area of the Cylinder
        //and stores it
        //Requires: nothing
        //Returns: nothing
        public override void calculateArea()
        {
            Area = (2 * Math.PI * radius * height) + 
                (2 * Math.PI * Math.Pow(radius, 2));
                
        }

        //Purpose: Calculates the volume of the Cylinder
        //and stores it.
        //Requires: nothing
        //Returns: nothing
        public override void calculateVolume()
        {
            Volume = Math.PI * Math.Pow(radius, 2) * height;
        }

        //Purpose: returns the string represent representation of the cylinder
        //Requires: nothing
        //Returns: a string
        public override string ToString()
        {
            string cylinderSpecs;
            string P1, P2;

            P1 = c1.toString3D();
            P2 = c2.toString3D();
           

            cylinderSpecs = base.ToString() + Environment.NewLine;
            cylinderSpecs += "Radius: " + radius + Environment.NewLine;
            cylinderSpecs += "Height: " + height + Environment.NewLine;
            cylinderSpecs += "Points: P1" + P1 + " P2" + P2 + Environment.NewLine;
                   
            return cylinderSpecs;
        }
    }
}
