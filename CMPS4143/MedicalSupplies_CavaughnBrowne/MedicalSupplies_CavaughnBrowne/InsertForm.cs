/*
 Cavaughn Browne 
 Implements the InsertForm that takes an input record from the user.
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

namespace MedicalSupplies_CavaughnBrowne
{
    public partial class InsertForm : Form
    {
        private string itemName = "", itemId = "";
        private int qtyReq = -1, qtyHeld = -1;
        private bool canceled = false;
        private string practiceI = "";

      
        //newPractice should only be true if a new Practice is being 
        //created
        public InsertForm(bool newPractice)
        {
            InitializeComponent();

            practiceTB.Enabled = newPractice;

            if(newPractice)
            {
                cancelButton.Enabled = false;
            }
            
        }


        //Purpose: If any of the text boxes are empty, the ok button is disabled
        //Requires: object sender, EventArgs e
        //Returns:nothing
        private void allTextBox_TextChanged(object sender, EventArgs e)
        {
            if(itemIdTB.Text == "" || itemNameTB.Text == "" || qtyHeldTB.Text == "" 
                || qtyReqTB.Text == "" || (practiceTB.Enabled == true && practiceTB.Text == ""))
            {
                okButton.Enabled = false;
            }
            else
            {   
                    okButton.Enabled = true;
                
            }
        }

        //closes the form on click
        private void cancelButton_Click(object sender, EventArgs e)
        {
            canceled = true;
            this.Close();
        }

        //Purpose: Stores all the data gotten in the text boxes
        //Requires: object sender, EventArgs e
        //Returns: nothing
        private void okButton_Click(object sender, EventArgs e)
        {
            itemId = itemIdTB.Text;
            itemName = itemNameTB.Text;
            qtyReq = Int32.Parse(qtyReqTB.Text);
            qtyHeld = Int32.Parse(qtyHeldTB.Text);
            practiceI = practiceTB.Text;
            this.Close();
        }

        

        public string ItemID
        {
            get
            {
                return itemId;
            }
        }


        public string ItemName
        {
            get
            {
                return itemName;
            }
        }


        public int QtyReq
        {
            get
            {
                return qtyReq;
            }
        }

        public int QtyHeld
        {
            get
            {
                return qtyHeld;
            }
        }

        public bool Canceled
        {
            get
            {
                return canceled;
            }
        }

        //returns null if practice has no value
        public string Practice
        {
            get
            {
                return practiceI != "" ? practiceI: null;
            }
        }
    }
}
