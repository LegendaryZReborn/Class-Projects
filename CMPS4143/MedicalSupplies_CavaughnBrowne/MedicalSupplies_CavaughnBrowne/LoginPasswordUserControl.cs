/*
 Cavaughn Browne
 Implements the LoginPasswordUserControl allows the user to submit
 a login and a password 
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MedicalSupplies_CavaughnBrowne
{
    public partial class LoginPasswordUserControl : UserControl
    {
        private string login = "", password = "";
        public event EventHandler LoggedIn;

        public LoginPasswordUserControl()
        {
            InitializeComponent();
        }

        private void loginB_Click(object sender, EventArgs e)
        {
            loginB.Enabled = false;
            loginTB.Enabled = false;
            passwordTB.Enabled = false;

            //Hands the event to LoggedIn
            if (LoggedIn != null)
                LoggedIn(this, e);
        }

        public string Login
        {
            get
            {
                return login;
            }
        }

     

        public string Password
        {
            get
            {
                return password;
            }
        }

        
    }
}
