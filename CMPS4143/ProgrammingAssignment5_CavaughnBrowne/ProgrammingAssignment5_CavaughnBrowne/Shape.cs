using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Drawing;

namespace Shapes
{
   public abstract class Shape
    {
        Image sImage;
        private Point originPoint;
        private Point originPoint3D;
        private string name;
        private string dir = "../../Images/";

        public Shape()
        {
            originPoint = new Point(0, 0);
            originPoint3D = new Point(0, 0, 0);
            name = "";

        }

        public Shape(Point pointO)
        {
            originPoint = new Point(pointO.X, pointO.Y);
            originPoint3D = new Point(pointO.X, pointO.Y, pointO.Z);

            name = "";
        }

        //readonly
        public Point OriginPoint
        {
            get { return originPoint; }
           // set { originPoint = value; }
        }

        //readonly
        public Point OriginPoint3D
        {
            get { return originPoint3D; }
            // set { originPoint = value; }
        }

        public override string ToString()
        {
            string shape = "Name: " + name;
            return shape;
        }

        //readonly
        public string Name
        {
            get { return name;}

            set
            {
                 name = value;
                dir = "../../Images/" + name + ".png";
            }
        }

        public Image SImage
        {
            get { return sImage; }
            set { sImage = value; }

        }
      
        //readonly
        public string Dir
        {
            get { return dir; }
        }
    }
}
