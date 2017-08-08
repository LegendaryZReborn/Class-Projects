/*Cavaughn Browne 
 
Sphere.cs is an implementation of a Sphere
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
    public class Sphere : ThreeDShape
    {

        private double radius;
        private Point c1;

        //constructor
        public Sphere() : base()
        {
            radius = 0;
            Name = "Sphere";
            SImage = Image.FromFile(Dir);

            //center points of circles on Sphere
            c1 = this.OriginPoint3D;


            //calculate the area and volume from current data
            calculateArea();
            calculateVolume();
        }

        //parameterize constructor
        public Sphere(Point pointO, double radius) : base(pointO)
        {
            this.radius = radius;

            Name = "Sphere";
            SImage = Image.FromFile(Dir);
            //points of Sphere
            //center
            c1 = this.OriginPoint3D;


            //calculate the area and perimeter from current data
            calculateArea();
            calculateVolume();

        }

        //Purpose: Calculates the surface area of the Sphere
        //and stores it
        //Requires: nothing
        //Returns: nothing
        public override void calculateArea()
        {
            Area = (4 * Math.PI * Math.Pow(radius, 2));
        }

        //Purpose: Calculates the volume of the Sphere
        //and stores it.
        //Requires: nothing
        //Returns: nothing
        public override void calculateVolume()
        {
            Volume = (4 / 3) * Math.PI * Math.Pow(radius, 3);
        }

        //Purpose: returns the string represent representation of the Sphere
        //Requires: nothing
        //Returns: a string
        public override string ToString()
        {
            string sphereSpecs;
            string P1;

            P1 = c1.toString3D();

            sphereSpecs = base.ToString() + Environment.NewLine;
            sphereSpecs += "Radius: " + radius + Environment.NewLine;
            sphereSpecs += "Center Point: P1" + P1 + Environment.NewLine;

            return sphereSpecs;
        }
    }
}
