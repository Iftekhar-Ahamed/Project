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
    public partial class ControlPanel : Form
    {
        private string _title;
        private Panel DESKTOP;
        PersonalDataFromFillUp personalDataFromFillUp;
        PERSONAL_INFO_SHOW pERSONAL_INFO_SHOW;
        UPDATE_USER uPDATE_USER;
        private string id; 
        public ControlPanel(string _title,Panel DESKTOP)
        {
            InitializeComponent();
            this._title = _title;
            label4.Text = _title;
            button1.Text = "ADD " + _title;
            button4.Text = "DELETE " + _title;
            button3.Text = "UPDATE " + _title;
            button2.Text = "SEARCH " + _title;
            this.DESKTOP = DESKTOP;

            this.id= "11";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            personalDataFromFillUp = new PersonalDataFromFillUp(_title,DESKTOP);
            //this.Close();
            //ob.Show();
            DESKTOP.Controls.Clear();
            personalDataFromFillUp.TopLevel = false;
            DESKTOP.Controls.Add(personalDataFromFillUp);
            personalDataFromFillUp.Dock = DockStyle.Fill;
            personalDataFromFillUp.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            personalDataFromFillUp.Show();
        }

        private void label4_Click(object sender, EventArgs e)
        {
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void button4_Click_1(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            pERSONAL_INFO_SHOW = new PERSONAL_INFO_SHOW(_title, id, DESKTOP, "DELETE");
            Dispose();
            //ob.Show();
            DESKTOP.Controls.Clear();
            pERSONAL_INFO_SHOW.TopLevel = false;
            DESKTOP.Controls.Add(pERSONAL_INFO_SHOW);
            pERSONAL_INFO_SHOW.Dock = DockStyle.Fill;
            pERSONAL_INFO_SHOW.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            pERSONAL_INFO_SHOW.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            uPDATE_USER = new UPDATE_USER(_title,DESKTOP);
            Dispose();
            //ob.Show();
            DESKTOP.Controls.Clear();
            uPDATE_USER.TopLevel = false;
            DESKTOP.Controls.Add(uPDATE_USER);
            uPDATE_USER.Dock = DockStyle.Fill;
            uPDATE_USER.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            uPDATE_USER.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            pERSONAL_INFO_SHOW = new PERSONAL_INFO_SHOW(_title, id, DESKTOP,"SEARCH");
            Dispose();
            //ob.Show();
            DESKTOP.Controls.Clear();
            pERSONAL_INFO_SHOW.TopLevel = false;
            DESKTOP.Controls.Add(pERSONAL_INFO_SHOW);
            pERSONAL_INFO_SHOW.Dock = DockStyle.Fill;
            pERSONAL_INFO_SHOW.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            pERSONAL_INFO_SHOW.Show();
        }

        private void ControlPanel_Load(object sender, EventArgs e)
        {

        }
    }
}
