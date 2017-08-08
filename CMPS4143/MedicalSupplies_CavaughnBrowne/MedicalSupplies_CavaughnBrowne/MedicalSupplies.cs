/*
 Cavaughn Browne

 Implements an MDI that can manga multiple child forms for a number of practices 
 that contain a medical supply list.
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
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;
using System.Collections;

namespace MedicalSupplies_CavaughnBrowne
{
    public partial class MedicalSupplies : Form
    { 

        public MedicalSupplies()
        {
            InitializeComponent();
            mainMenu.Enabled = false;

            //make the new EventHandler for LoggedIn onLogIn()
            loginPasswordUserControl.LoggedIn += new EventHandler(onLogIn);
        }
        
        //Handles the LoggedIn event for the loginPasswordUserControl
        void onLogIn(object sender, EventArgs e)
        {
            mainMenu.Enabled = true;

        }
        //Purpose: Creates a new file for a new practice and saves one record
        //from the user inside of it. It then opens a new form with the record.
        //Requires: object send, EventArgs e
        //Returns: nothing
        private void MedicalSupplies_FileNew(object sender, EventArgs e)
        {
            ArrayList recordList = new ArrayList();
            BinaryFormatter writer = new BinaryFormatter();
            string fileName;

            //Inform User
            MessageBox.Show("Input a Record for New Practice", "New Practice Record",
                 MessageBoxButtons.OK, MessageBoxIcon.Information);

            InsertForm inForm = new InsertForm(true);
            inForm.ShowDialog();

            Record rec = new Record(inForm.ItemID, inForm.ItemName, inForm.Practice, 
                inForm.QtyReq, inForm.QtyHeld);

            fileName = inForm.Practice + ".Inv";
            recordList.Add(rec);

            //Open the new file with the new file name
            FileStream input = new FileStream(fileName,
                    FileMode.OpenOrCreate, FileAccess.Write);

            writer.Serialize(input, rec);

            input.Close();

            //open child form for new file
            ChildForm newChild = new ChildForm(recordList, fileName);
            newChild.MdiParent = this;
            newChild.Show();

        }// MedicalSupplies_FileNew


        //Purpose:Opens file for a practice and reads in records
        //and opens a childform with the records
        //Requires: object send, EventArgs e
        //Returns: nothing
        private void MedicalSupplies_FileOpen(object sender, EventArgs e)
        {
            OpenFileDialog openFile = new OpenFileDialog();
            BinaryFormatter reader = new BinaryFormatter();
            ArrayList recordList1 = new ArrayList();

            string fileName = "";

            //show OpenFileDialogue so the user can choose a file
            openFile.ShowDialog();
            fileName = openFile.SafeFileName;
           // filesToSave.Add(fileName);

            if (fileName != "")
            {
                // open file with read access
                FileStream input = new FileStream(fileName,
                     FileMode.OpenOrCreate, FileAccess.Read);
           
                Record record = new Record();

                while (input.Position < input.Length)
                {
                    //deserialize a record and add it to the recordList
                    record = (Record)reader.Deserialize(input);
                
                    recordList1.Add(record);
                }
                input.Close();

                //declare and show child form if the lists isn;t empty
                if (recordList1.Count != 0)
                {
                    ChildForm cF1 = new ChildForm(recordList1, fileName);
                    cF1.MdiParent = this;
                    cF1.Show();
                }

            }

        }// end  MedicalSupplies_FileOpen

        private void MedicalSupplies_Save(object sender, EventArgs e)
        {
           
                BinaryFormatter writer = new BinaryFormatter();

                Form[] children = this.MdiChildren;
                int i = 0;
                //for each child in the mdi
                foreach (ChildForm child in children)
                {
                    //for each child form, open the corresponding file for
                    //writing
                    FileStream output = new FileStream(child.FileToSave,
                    FileMode.Create, FileAccess.Write);

                    //get its record list and serialize each record to the file
                    foreach (Record rec in child.RecordList)
                    {
                        writer.Serialize(output, rec);
                    }

                    i++;
                    output.Close();
                }

            //Successful Save message
            MessageBox.Show("Save Successful", "Save", 
                MessageBoxButtons.OK, MessageBoxIcon.Information);
              

        }// end  MedicalSupplies_Save


        private void MedicalSupplies_Exit(object sender, EventArgs e)
        {
            this.Close();

        }// end  MedicalSupplies_Exit

        private void MedicalSupplies_Insert(object sender, EventArgs e)
        {
            InsertForm inForm = new InsertForm(false);
            ChildForm activeChild = this.ActiveMdiChild as ChildForm;
            if (activeChild != null)
            {
               
                //Opens the Insert form
                inForm.ShowDialog();

                //if the insert form wasn't canceled, store the new record data in
                //a record and pass it to the active child
                if (!inForm.Canceled)
                {
                    Record rec = new Record(inForm.ItemID, inForm.ItemName, "", 
                        inForm.QtyReq, inForm.QtyHeld);

                    //insert the new record to the list
                    activeChild.insertToList(rec);
                }
            }

        }//end MedicalSupplies_Insert


        private void MedicalSupplies_Delete(object sender, EventArgs e)
        {
            ChildForm activeChild = this.ActiveMdiChild as ChildForm;

            if (activeChild != null)
            {
                //Inquire if the users is sure about deleting the item
                DialogResult result;
                result = MessageBox.Show("Are you sure you want to delete this item?",
                    "Delete Item", MessageBoxButtons.YesNo,
                    MessageBoxIcon.Exclamation);

                //delete if yes is picked
                if(result == DialogResult.Yes)
                    activeChild.deleteFromList();
            }

        }//end MedicalSupplies_Delete

      
        private void MedicalSupplies_Update(object sender, EventArgs e)
        {
            ChildForm activeChild = this.ActiveMdiChild as ChildForm;

            if (activeChild != null)
            {
                InsertForm updateForm = new InsertForm(false);
                updateForm.Text = "Update Record";

                updateForm.ShowDialog();

                Record rec = new Record(updateForm.ItemID, updateForm.ItemName, "",
                    updateForm.QtyReq, updateForm.QtyHeld);

                //update the record on active child form
                activeChild.updateRecord(rec);
                
            }
        }//MedicalSupplies_Update

        private void aboutMenu_Click(object sender, EventArgs e)
        {
            string about;
            
            about = "Medical Supply Books" + Environment.NewLine;
            about += "Version 1.0.0" + Environment.NewLine;
            about += Environment.NewLine;
            about += "Manage your businesses' supplies lists.";
            
                
            MessageBox.Show(about, "About", MessageBoxButtons.OK, 
                MessageBoxIcon.Information);
        }//aboutMenu_Click
    }
}
