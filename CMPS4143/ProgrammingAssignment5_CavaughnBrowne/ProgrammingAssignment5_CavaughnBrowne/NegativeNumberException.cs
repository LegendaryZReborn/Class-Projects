using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProgrammingAssignment5_CavaughnBrowne
{
   public class NegativeNumberException:ApplicationException
    {
        private string neg = "Negative Number Invalid. Try Again";

       public NegativeNumberException():base("Negative Number Invalid. Try Again")
        {
            MessageBox.Show(neg, neg, MessageBoxButtons.OK,
               MessageBoxIcon.Error);
        }

       public NegativeNumberException(string message): base(message)
        {
            MessageBox.Show(message, neg, MessageBoxButtons.OK,
                MessageBoxIcon.Error);
        }

        public NegativeNumberException(string message, Exception inner): base(message, inner)
        {
            MessageBox.Show(message, neg, MessageBoxButtons.OK,
                MessageBoxIcon.Error);
        }
    }
}
