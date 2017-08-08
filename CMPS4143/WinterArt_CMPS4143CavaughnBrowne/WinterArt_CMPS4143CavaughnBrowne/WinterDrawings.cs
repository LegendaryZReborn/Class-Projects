/*
 Cavaughn Browne

 This program draws an image that contains my representation of 
 winter.
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinterArt_CMPS4143CavaughnBrowne
{
    public partial class WinterDrawings : Form
    {
        private int numFlakes = 100, numOrnaments = 20, x, y;

        public WinterDrawings()
        {
            InitializeComponent();
            this.BackColor = Color.LightSlateGray;
        }

        protected override void OnPaint(
         PaintEventArgs paintEvent)
        {
            // get graphics object
            Graphics g = paintEvent.Graphics;
            SolidBrush brush = new SolidBrush(Color.AliceBlue);
            Random rand = new Random();

            //draw random snow flakes 
            for(int i = 0; i < numFlakes; i++)
            {
                //x and y are generated randomly inbetween the windows
                //bounds
                x = rand.Next(0, 640);
                y = rand.Next(0, 480);
                g.FillEllipse(brush, x, y, 5, 5);
            }
          
            // draw head Ellipse
            g.FillEllipse(brush, 315, 90, 110, 110);

            //drawBody
            g.FillEllipse(brush, 270, 190, 200, 200);

            //draw eyes
            brush = new SolidBrush(Color.Black);
            g.FillEllipse(brush, 350, 120, 20, 20);
            g.FillEllipse(brush, 400, 120, 20, 20);

            //draw buttons on body
            g.FillEllipse(brush, 390, 200, 15, 15);
            g.FillEllipse(brush, 400, 230, 15, 15);
            g.FillEllipse(brush, 410, 260, 15, 15);

            //draw rectangular nose
            brush = new SolidBrush(Color.Orange);
            g.FillRectangle(brush, 390, 140, 50, 10);

            //draw trunk of tree
            brush = new SolidBrush(Color.SaddleBrown);
            g.FillRectangle(brush, 90, 120, 50, 200);

            //draw the treetop
            brush = new SolidBrush(Color.Green);
            g.FillRectangle(brush, 45, 80, 140, 160);

            //draw 3 different color ornaments on the tree top.
            for(int d = 0; d < 3; d++)
            {

                //pick a color
                if (d == 0)
                    brush = new SolidBrush(Color.Red);
                else if (d == 1)
                    brush = new SolidBrush(Color.Yellow);
                else
                    brush = new SolidBrush(Color.Blue);

                //draw the ornaments randomly on the treetop
                //using the color selected
                for (int i = 0; i < numOrnaments; i++)
                {
                    //x and y are generated randomly inbetween the windows
                    //bounds
                    x = rand.Next(40, (40 + 140));
                    y = rand.Next(80, (80 + 160));
                    g.FillEllipse(brush, x, y, 10, 10);
                }

                
            }

            brush = new SolidBrush(Color.OrangeRed);
            Font f = new Font("Arial", 24, FontStyle.Bold);
            PointF drawPoint = new PointF(90F, 10F); //upper left of the drawing
            string s = "MERRY ALMOST CHRISTMAS";

            //Draw the string in the specified font.
            g.DrawString(s, f, brush, drawPoint);
           

        } // end method OnPaint

    }
}
