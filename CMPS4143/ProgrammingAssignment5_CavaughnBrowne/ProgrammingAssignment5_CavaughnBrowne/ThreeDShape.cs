/*Cavaughn Browne
ThreeDShape.cs class implements a ThreeDShape which inherits from Shape.
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shapes
{
   public abstract class ThreeDShape: Shape
    {

        private double area;
        private double volume;

        //constructor 
        public ThreeDShape() : base()
        {
            area = 0;
            volume = 0;

        }

        //parameterized constructor
        public ThreeDShape(Point pointO) : base (pointO)
        {
            area = 0; 
            volume = 0;
        }

        //Purpose: Calculates volume of 3D Shape
        //Requires: nothing
        //Returns: nothing
        public virtual void calculateVolume()
        {
            volume = 0;
        }

        //Purpose: Calculates surface area of 3D Shape
        //Requires: nothing
        //Returns: nothing
        public virtual void calculateArea()
        {
            area = 0;
        }

        //Purpose: Returns the shape in the form of a string.
        //Requires: nothing
        //Returns: a string 
        public override string ToString()
        {
            string threeDShape = base.ToString() + Environment.NewLine;
            threeDShape += "Area = " + Area + Environment.NewLine;
            threeDShape += "Volume = " + Volume;

            return threeDShape;
        }

        public double Area
        {
            get
            {
                return area;
            }
            set
            {
                area = value >= 0 ? Math.Round(value, 2) : 0;
            }
        }

        public double Volume
        {
            get
            {
                return volume;
            }
            set
            {
               volume = value >= 0 ? Math.Round(value, 2) : 0;
            }
        }

    }
}
