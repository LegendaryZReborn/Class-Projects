/*Cavaughn Browne 
 
Point.cs defines a Point with an x, y and z,
 */

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shapes
{
   public class Point 
    {
        private double x;
        private double y;
        private double z;

        //constructor
      public  Point()
        {
            x = 0;
            y = 0;
            z = 0;
        }

        //2D parameterized constructor
        public Point(double x, double y)
        {
            this.x = x;
            this.y = y;
            this.z = 0;
        }

        //3D parameterized constructor
        public Point(double x, double y, double z)
        {
            this.x = x;
            this.y = y;
            this.z = z;
        }

        public double X
        {
            get
            {
                return x;
            }

            set
            {
                x = value;
            }

        }

        public double Y
        {
            get
            {
                return y;
            }

            set
            {
                y = value;
            }

        }
        
        public double Z
        {
            get
            {
                return z;
            }

            set
            {
                z = value;
            }

        }

        //Purpose: Convert 2D Point information to a string
        //Requires: nothing
        //Returns: string - a Point in string form
        public string toString2D()
        {
            string point;

            point = "(" + x + "," + y + ")";

            return point;
        }


        //Purpose: Convert 3D Point information to a string
        //Requires: nothing
        //Returns: string - a Point in string form
        public string toString3D()
        {
            string point;

            point = "(" + x + "," + y + "," + z + ")";

            return point;
        }

    }
}
