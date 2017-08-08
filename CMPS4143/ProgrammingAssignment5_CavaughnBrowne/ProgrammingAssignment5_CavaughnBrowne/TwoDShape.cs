using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shapes
{
    public abstract class TwoDShape : Shape
    {
        private double area;
        private double perimeter;

        public TwoDShape() : base()
        {
            area = 0;
            perimeter = 0;
        }

        public TwoDShape(Point pointO) : base (pointO)
        {
            area = 0; ;
            perimeter = 0;

        }


        public virtual void calculatePerimeter()
        {
            perimeter = 0;
        }
        public virtual void calculateArea()
        {
            area = 0;
        }

        public override string ToString()
        {
            string twoDShape = base.ToString() + Environment.NewLine;
            twoDShape += "Area = " + Area + Environment.NewLine;
            twoDShape += "Perimeter = " + Perimeter;

            return twoDShape;
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

        public double Perimeter
        {
            get
            {
                return perimeter;
            }
            set
            {
                perimeter = value >= 0 ? Math.Round(value, 2) : 0;
            }
        }



    }
}
