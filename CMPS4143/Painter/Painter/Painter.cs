//Cavaughn Browne
//CMPS4143 - Catherine Stringfellow
//Painter.cs - implements a form that can be painted on with a few different 
//colors in different sizes. Colors from the visible pallete can be swapped
//out for others (as well as sizes).

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Painter
{
    public partial class Painter : Form
    {
        bool shouldPaint = false;
        Graphics g;
        Color currentColor;
        int index;
        int index2;
        int cSize;

        public Painter()
        {
            InitializeComponent();
           index = 0;
           index2 = 0;
            cSize = 0;

        }

        private void Painter_MouseDown(object sender, MouseEventArgs e)
        {
            //indicate that user is dragging the mouse
            shouldPaint = true;
        } // end method Painter_MouseDown

        //stop painting when mouse button is released
        private void Painter_MouseUp(object sender, MouseEventArgs e)
        {
            //indicate that user released the mouse button
            shouldPaint = false;
        } //end method Painter_MouseUp

        //draw circle whenever mouse moves with its button held down
        private void Painter_MouseMove(object sender, MouseEventArgs e)
        {
            if (shouldPaint) //check if mouse button is being held down
            {
                //draw a circle where the mouse pointer is  present
                using (Graphics graphics = this.drawPanel.CreateGraphics())
                {
                    g = graphics;
                    graphics.FillEllipse(
                        new SolidBrush(currentColor), e.X, e.Y, cSize, cSize);
                } //end using; calls graphics.Dispose()
            } //end if
        } // end method Painter_MouseMove


        //Purpose: Changes color when a different color is selected via menu item
        //or radio button
        //Requires: object sender, EventArgs e
        //Returns: nothing
        private void colorRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton rButton = sender as RadioButton;

            //if sender isnt a RadioButton
            if (rButton == null)
            {
                ToolStripMenuItem item = sender as ToolStripMenuItem;
                if (item != null)
                {
                    string bText = item.Text.ToLower();
                    colorPick(bText);


                    //check the right radio button
                 foreach (var rb in this.brushColorP.Controls.OfType<RadioButton>())
                    {
                        if (rb.Text == item.Text)
                        {
                            rb.Checked = true;

                        }

                    }

                }
            }
            else
            {
                //if it is a radio button and its checked
                if (rButton.Checked)
                {
                    string bText = rButton.Text.ToLower();
                    colorPick(bText);
                }
            }
        }//end colorRadioButton_CheckedChange


        //Purpose: Changes size when a different size is selected via menu item
        //or radio button
        //Requires: object sender, EventArgs e
        //Returns: nothing
        private void sizeRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            RadioButton rButton = sender as RadioButton;

            //if sender isnt a RadioButton
            if (rButton == null)
            {
                ToolStripMenuItem item = sender as ToolStripMenuItem;
                if (item != null)
                {
                    string bText = item.Text.ToLower();
                    cSize = Int32.Parse(item.Text);


                    //check the right radio button
                    foreach (var rb in this.sizePanel.Controls.OfType<RadioButton>())
                    {
                        if (rb.Text == item.Text)
                            rb.Checked = true;

                    }

                }
            }
            else
            {
                //if it is a radio button and its checked
                if (rButton.Checked)
                {
                    cSize = Int32.Parse(rButton.Text);

                }
            }
        }//end sizeRadioButton_CheckedChange


        //Purpose: picks a color and asigns it to bText
        //Requires: string bText
        //Returns: nothing
        private void colorPick(string bText)
        {
            bText = bText.ToLower();
            switch (bText)
            {
                case "red":
                    currentColor = Color.Red;
                    break;
                case "blue":
                    currentColor = Color.Blue;
                    break;
                case "yellow":
                    currentColor = Color.Yellow;
                    break;
                case "orange":
                    currentColor = Color.Orange;
                    break;
                case "purple":
                    currentColor = Color.Purple;
                    break;
                case "pink":
                    currentColor = Color.Pink;
                    break;
                case "green":
                    currentColor = Color.Green;
                    break;
                case "black":
                    currentColor = Color.Black;
                    break;

                case "white":
                    currentColor = Color.White;
                    break;
            }
        }//end of colorPick

        //Purpose: Swaps the next item in the color pallete with
        //a selected color from a combobox
        //Requires: object sender, EventArgs e
        //Returns: nothing
     private void swapColorOnPallette(object sender, EventArgs e)
        {
            ComboBox cb = sender as ComboBox;
            string s = cb.SelectedItem as string;
            foreach (var rb in this.brushColorP.Controls.OfType<RadioButton>())
            {
                if (rb.TabIndex == (index % 3))
                {
                   foreach(ToolStripMenuItem itemS in colorsToolStripMenuItem.DropDownItems)
                    {
                        if (itemS.Text == rb.Text && itemS.MergeIndex == (index % 3))
                            itemS.Text = s;
                    }
                    rb.Text = s;
                    if(rb.Checked)
                    {
                        colorPick(rb.Text);
                    }
                }

            }

            index++;

            if (index >= 3)
                index = 0;

        }//end swapColorOnPallete

        //Purpose: Swaps the next item in the size pallete with
        //a selected size from a combobox
        //Requires: object sender, EventArgs e
        //Returns: nothing
        private void swapSizeOnPallette(object sender, EventArgs e)
        {
            ComboBox cb = sender as ComboBox;
            string s = cb.SelectedItem as string;
            foreach (var rb in this.sizePanel.Controls.OfType<RadioButton>())
            {
                if (rb.TabIndex == (index2 % 3))
                {
                    foreach (ToolStripMenuItem itemS in sizesToolStripMenuItem1.DropDownItems)
                    {
                        if (itemS.Text == rb.Text && itemS.MergeIndex == (index2 % 3))
                            itemS.Text = s;
                    }
                    rb.Text = s;

                    if (rb.Checked)
                        cSize = Int32.Parse(rb.Text);
                    
                }
            }
            index2++;
            if (index2 >= 3)
                index2 = 0;

        }//end swapSizeOnPallete
        
        //clears form of graphics
        private void clearB_Click(object sender, EventArgs e)
        {
            this.drawPanel.CreateGraphics().Clear(drawPanel.BackColor);
        }
    }// end class Painter
} // end namespace Painter
