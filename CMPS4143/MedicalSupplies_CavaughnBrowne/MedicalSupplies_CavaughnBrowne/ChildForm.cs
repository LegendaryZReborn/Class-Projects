/*
 Name: Cavaughn Browne

 ChildForm.cs 
 Implements the childform of the Medical Supplies Form
 Displays the practice name
 Manages a supply list 
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
using System.Collections;

namespace MedicalSupplies_CavaughnBrowne
{
    public partial class ChildForm : Form
    {
        private ArrayList recordList;
        private string practice;
        private string fileToSave;

        //Parameterized constructor
        //initializes the forms supply list with Array recordList
        //and stores the name of the file they came from
        public ChildForm(ArrayList recordList, string file)
        {
            InitializeComponent();
            string recordFormat = "";
            fileToSave = file;
            Record record = recordList[0] as Record; 

            practice = record.Practice; //get practice info for display
            practiceLabel2.Text += (" " + record.Practice);


            //Add all the items to the list box on the form
            foreach(Record rec in recordList)
            {
                recordFormat = rec.ToString();

                supplyList.Items.Add(recordFormat);
            }

            this.recordList = recordList;

            //update the numItemsL label
            numItemsL.Text = "There are " + recordList.Count +
                " items in this practice's supply list.";
        }

        //Purpose: Inserts a new record into the supply list
        //Requires: Record rec
        //Returns nothing
        public void insertToList(Record rec)
        {
            string recordFormat = "";

            
            //set practice to the correct practice.
            rec.Practice = practice;

            recordFormat = rec.ToString();

            //adds it to the supply list
            supplyList.Items.Add(recordFormat);

            if (recordList != null)
            {
                //add it to the list that hold the records
                recordList.Add(rec);
            }
            else
            {
                recordList = new ArrayList();
                //add it to the list that holds the records
                recordList.Add(rec);
            }

            numItemsL.Text = "There are " + recordList.Count +
                " items in this practice's supply list.";
        }

        //Purpose: Deletes a selected record from supply list
        //if the selected index in the supply list is not 0.
        //Requires: nothing
        //Returns: nothing
        public void deleteFromList()
        {
            //if its not the first thing in the list box
            if (supplyList.SelectedIndex != 0 && supplyList.SelectedIndex != -1)
            {
                //also remove the record from the list
                recordList.RemoveAt(supplyList.SelectedIndex - 1);
                supplyList.Items.Remove(supplyList.SelectedItem);

            }

            numItemsL.Text = "There are " + recordList.Count +
                " items in this practice's supply list.";
        }

        //Purpose: Updates the selected record
        //Requires:Record rec
        //Returns: nothing
        public void updateRecord(Record rec)
        {
            //if its not the first thing in the list box
            if (supplyList.SelectedIndex != 0 && supplyList.SelectedIndex != -1)
            {
                rec.Practice = practice;
                //change the record in the list to the new one
                recordList[supplyList.SelectedIndex - 1] = rec;
                
                //change selected item to new the new record
                supplyList.Items[supplyList.SelectedIndex] = rec.ToString() ;

            }
        }
        public ArrayList RecordList
        {
            get
            {
                return recordList;
            }
        }

        public string FileToSave
        {
            get
            {
                return fileToSave;
            }
        }
    }
}
