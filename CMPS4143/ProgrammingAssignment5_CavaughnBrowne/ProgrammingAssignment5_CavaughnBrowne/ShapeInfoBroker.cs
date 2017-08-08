/*Cavaughn Browne
 CMPS Contemporary Programming Languages
 Date: 10/20/2016

 Purpose: This program lets the user input a shape (Square, Circle, Rectangle,
 Cube, Cuboid, Sphere,  and Cylinder) and some defining properties. From this
 it calculates the other defining properties and outputs the shape representat-
 ion to the Form.
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Shapes;

namespace ProgrammingAssignment5_CavaughnBrowne
{
    public partial class ShapeInfoBroker : Form
    {
        //Create a twoDShape and threeDShape reference
        private TwoDShape ddShape;
        private ThreeDShape dddShape;


        public ShapeInfoBroker()
        {
            InitializeComponent();

            //Disable all the input boxes
            point1Box.Enabled = false;
            point2Box.Enabled = false;
            lengthRBox.Enabled = false;
            widthBox.Enabled = false;
        }

        //Get the shape information from the text boxes on the form
        //depending on what shape the user entered and output
        //its specifications to the form.
        private void goButton_Click(object sender, EventArgs e)
        {
            if (shapeInputBox.Text != "")
            {
                string shape, coordinates;
                Point shapeOrigin, point2;
                int length = 0, width = 0, height = 0, radius = 0;
                shape = shapeInputBox.Text.ToLower();

                try
                {
                    try
                    {
                        switch (shape)
                        {
                            case "square":

                                length = Int32.Parse(lengthRBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseTwoDPoint(coordinates);
                                checkIfNegative(length);
                                ddShape = new Square(shapeOrigin, length);
                                shapeInfo.Text = ddShape.ToString();
                                shapeImageBox.Image = ddShape.SImage;
                                break;
                            case "circle":
                                radius = Int32.Parse(lengthRBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseTwoDPoint(coordinates);
                                checkIfNegative(radius);
                                ddShape = new Circle(shapeOrigin, radius);
                                shapeInfo.Text = ddShape.ToString();
                                shapeImageBox.Image = ddShape.SImage;

                                break;
                            case "sphere":
                                radius = Int32.Parse(lengthRBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseThreeDPoint(coordinates);
                                checkIfNegative(radius);
                                dddShape = new Sphere(shapeOrigin, radius);
                                shapeInfo.Text = dddShape.ToString();
                                shapeImageBox.Image = dddShape.SImage;

                                break;
                            case "rectangle":
                                length = Int32.Parse(lengthRBox.Text);
                                width = Int32.Parse(widthBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseTwoDPoint(coordinates);
                                checkIfNegative(length, width);
                                ddShape = new Rectangle(shapeOrigin,
                                    length, width);
                                shapeInfo.Text = ddShape.ToString();
                                shapeImageBox.Image = ddShape.SImage;

                                break;
                            case "cube":
                                length = Int32.Parse(lengthRBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseThreeDPoint(coordinates);
                                coordinates = point2Box.Text;
                                point2 = parseThreeDPoint(coordinates);
                                checkIfNegative(length);
                                dddShape = new Cube(shapeOrigin, point2, length);
                                shapeInfo.Text = dddShape.ToString();
                                shapeImageBox.Image = dddShape.SImage;

                                break;
                            case "cuboid":
                                length = Int32.Parse(lengthRBox.Text);
                                height = Int32.Parse(widthBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseThreeDPoint(coordinates);
                                coordinates = point2Box.Text;
                                point2 = parseThreeDPoint(coordinates);
                                checkIfNegative(length, height);
                                dddShape = new Cuboid(shapeOrigin, point2, length, height);
                                shapeInfo.Text = dddShape.ToString();
                                shapeImageBox.Image = dddShape.SImage;

                                break;
                            case "cylinder":
                                height = Int32.Parse(widthBox.Text);
                                radius = Int32.Parse(lengthRBox.Text);
                                coordinates = point1Box.Text;
                                shapeOrigin = parseThreeDPoint(coordinates);
                                checkIfNegative(height, radius);
                                dddShape = new Cylinder(shapeOrigin, radius, height);
                                shapeInfo.Text = dddShape.ToString();
                                shapeImageBox.Image = dddShape.SImage;

                                break;
                        }
                    }
                    catch (NegativeNumberException nE)
                    {
                        //clear boxes
                        point1Box.Clear();
                        point2Box.Clear();
                        lengthRBox.Clear();
                        widthBox.Clear();
                        shapeInputBox.Clear();
                    }

                }
                catch (FormatException err)
                {
                    MessageBox.Show(err.Message, "Wrong Input Format",
                        MessageBoxButtons.OK, MessageBoxIcon.Exclamation);


                }
            }
        }

        private void shapeInputBox_TextChanged(object sender, EventArgs e)
        {
            string shape;
            shape = shapeInputBox.Text.ToLower();

            //Enable the appropiate input boxes depending on the shape
            //entered
            switch (shape)
            {
                case "square":
                case "circle":
                case "sphere":
                    point1Box.Enabled = true;
                    lengthRBox.Enabled = true;
                    break;
                case "rectangle":
                    point1Box.Enabled = true;
                    lengthRBox.Enabled = true;
                    widthBox.Enabled = true;
                    break;
                case "cube":
                    point1Box.Enabled = true;
                    point2Box.Enabled = true;
                    lengthRBox.Enabled = true;
                    break;
                case "cuboid":
                    point1Box.Enabled = true;
                    point2Box.Enabled = true;
                    lengthRBox.Enabled = true;
                    widthBox.Enabled = true;
                    widthL.Text = "Height";
                    break;
                case "cylinder":
                    point1Box.Enabled = true;
                    lengthRBox.Enabled = true;
                    widthBox.Enabled = true;
                    widthL.Text = "Height";
                    break;
                default:
                    //all are disabled
                    point1Box.Enabled = false;
                    point2Box.Enabled = false;
                    widthBox.Enabled = false;
                    lengthRBox.Enabled = false;
                    widthL.Text = "Width";
                    shapeImageBox.Image = null;
                    break;
            }

            setLabels(shape);
        }

        //Purpose: Parse a twoD point input
        //Requires: string coordinates
        //Returns: Returns a Point
        private Point parseTwoDPoint(string coordinates)
        {
            Point shapeOrigin = new Point(); ;
            int indexC, offset;

            indexC = coordinates.IndexOf(',');

            if (indexC == -1)
                throw new FormatException("Point format is invalid.");

            shapeOrigin.X = Int32.Parse(coordinates.Substring(0, indexC));
            offset = coordinates.Length - (indexC + 1);
            shapeOrigin.Y = Int32.Parse(coordinates.Substring(coordinates.Length - offset));

            return shapeOrigin;
        }

        //Purpose: Parse a threeD point input
        //Requires: string coordinates
        //Returns: Returns a Point
        private Point parseThreeDPoint(string coordinates)
        {
            Point shapeOrigin = new Point(); ;
            int indexC, offset;
            string sub;

            indexC = coordinates.IndexOf(',');

            if (indexC == -1)
                throw new FormatException("Point format is invalid.");

            shapeOrigin.X = Int32.Parse(coordinates.Substring(0, indexC));
            offset = coordinates.Length - (indexC + 1);
            sub = coordinates.Substring(coordinates.Length - offset);
            indexC = sub.IndexOf(',');

            if (indexC == -1)
                throw new FormatException("Point format is invalid.");

            shapeOrigin.Y = Int32.Parse(sub.Substring(0, indexC));
            offset = sub.Length - (indexC + 1);
            shapeOrigin.Z = Int32.Parse(sub.Substring(sub.Length - offset));


            return shapeOrigin;
        }

        //Purpose: Checks if one or more values are negative
        //if so throws a Negative Number Exception
        //Requires: double par1, double par2
        //Returns: nothing
        public void checkIfNegative(double par1 = 0, double par2 = 0)
        {
            if (par1 < 0 || par2 < 0)
            {
                throw new NegativeNumberException();
            }

        }

        //Purpose: Set labels depending on if the shape is 3D or 2D
        //Requires:string shape
        //Returns: nothing
        public void setLabels(string shape)
        {
            bool isThreeD = isShape3D(shape);

            if (isThreeD)
            {
                point1Label.Text = "Point1 (x, y, z)";
                point2Label.Text = "Point2 (x, y, z)";

            }
            else
            {
                point1Label.Text = "Point1 (x, y)";
                point2Label.Text = "Point2 (x, y)";
            }
        }


        //Purpose: Check if the shape is 3D
        //Requires:string shape
        //Returns: bool
        public bool isShape3D(string shape)
        {
            bool isThreeD = false;
            shape = shape.ToLower();
            switch (shape)
            {
                case "cube":
                case "cuboid":
                case "sphere":
                case "cylinder":
                    isThreeD = true;
                    break;
            }

            return isThreeD;

        }
    }
}
