using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Employee : Form
    {
        private ChangePassword changePassword;
        private Messenger messenger;
        private string id;
        public Employee(string id)
        {
            InitializeComponent();
            this.MinimumSize = new Size(1300, 800);
            this.id = id;
        }

        private void Employee_Load(object sender, EventArgs e)
        {

        }



        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            PERSONAL_INFO_SHOW ob = new PERSONAL_INFO_SHOW("EMPLOYEE", id, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            Dispose();
            mainMenu.Show();
        }

        private void button3_Click_1(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Close();
            }
            DESKTOP.Controls.Clear();
            changePassword = new ChangePassword();
            changePassword.TopLevel = false;
            DESKTOP.Controls.Add(changePassword);
            changePassword.Dock = DockStyle.Fill;
            changePassword.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            changePassword.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Close();
            }
            if (messenger != null)
            {
                messenger.Close();
            }
            DESKTOP.Controls.Clear();
            messenger = new Messenger(id);
            messenger.TopLevel = false;
            DESKTOP.Controls.Add(messenger);
            messenger.Dock = DockStyle.Fill;
            messenger.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            //messenger.BackColor = Color.Transparent;
            messenger.Show();
        }

        private void Employee_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}
