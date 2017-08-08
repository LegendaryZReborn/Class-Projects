/* Name: Cavaughn Browne
 Record class - holds record data for a particular medical practice.
*/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MedicalSupplies_CavaughnBrowne
{
    [Serializable]
    public class Record
    {
        private string id, name, practice;
        private int qtyReq, quantityHeld;

        public Record()
        {
            id = "";
            name = "";
            practice = "";
            qtyReq = 0;
            quantityHeld = 0;
        }

        
        public Record(string id, string name, string practice, int qtyReq, int quantityHeld)
        {
            this.id = id;
            this.name = name;
            this.practice = practice;
            this.qtyReq = qtyReq;
            this.quantityHeld = quantityHeld;
        }

        //Purpose: Converts the record to a string format
        //Requires: nothing
        //Returns: The record in a string format
        public override string ToString()
        {
            string recordString;
          

            recordString = padWidth(id, 8) + padWidth(name, 23)  + 
                padWidth(qtyReq.ToString(), 19) + quantityHeld;

            return recordString;
        }

        //Purpose: Returns a padded string;
        //The difference is 0 if the number is  less than the length.
        //For use with padding. Works like setw in C++
        //Requires: int item, int num
        //Returns: int diff
        private string padWidth(string item, int num)
        {
            int diff = num - item.Length;

            if (diff < 0)
                diff = 0;

            for (int i  = 0; i < diff; i++)
            {
                item += " ";
            }
            //  return item.PadRight(diff, ' ');
            return item;
        }


        public string ID {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }
        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }
        public int QtyReq
        {
            get
            {
                return qtyReq;
            }
            set
            {
                qtyReq = value;
            }
        }
        public int QuantityHeld
        {
            get
            {
                return quantityHeld;
            }
            set
            {
                quantityHeld = value;
            }
        }
        public string Practice
        {
            get
            {
                return practice;
            }
            set
            {
                practice = value;
            }
        }
    }
}
