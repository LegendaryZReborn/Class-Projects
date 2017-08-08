//Cavaughn Browne
//Date: Thursday Sept 15
//Contemporary Programming 4143 - Assignment 2
//This program generates a windows application that allows the user to
//input binary numbers and then shows the equivalent decimal value.

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CMPS4143_BinaryCon
{
    public partial class BinaryConverter : Form
    {
        public BinaryConverter()
        {
       
            InitializeComponent();
          
        }

        private void Convert_Click(object sender, EventArgs e)
        {
            int decNum, pVal;
            string text, bDigit;
            bool valid;
            
            //Do only if the user filled the text box
            if (binaryBox.Text != "")
            {

                text = binaryBox.Text;
                valid = true;

                //Check the contents to see if its all 1s and 0s
                for (int c = 0; c < binaryBox.TextLength && valid; c++ )
                {
                    if(text[c] != '1' && text[c] != '0')
                    { 
                        valid = false;
                    }
                }


                if (valid)
                {
                    pVal = 1;
                    decNum = 0;
                    for (int i = binaryBox.TextLength; i > 0; i--)
                    {
                        bDigit = text[i - 1].ToString();
                        decNum += Int32.Parse(bDigit) * pVal;
                        pVal *= 2;
                    }

                    //Displace decNum to the decimalBox
                    decimalBox.Text = decNum.ToString();
                }
                else
                {
                    //Tells the user to input a proper binary
                    MessageBox.Show("Enter a proper binary number scrub!");
                }
            }
        }

       
    }
}
