using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace WindowsFormsApp1
{
    public partial class UserPositionInUniversity : Form
    {

        public UserPositionInUniversity(string Id,string name,string department,string intake)
        {
            InitializeComponent();
            unsername.Text = name;
            DEPARTMENT.Text = department;
            IDNO.Text = Id;
            dateTimePicker1.Value = DateTime.Today;
            leve2.Text = "INATKE";
            leve2.Visible = true;
            Intake.Visible = true;
            Intake.Text = intake;
        }
        public UserPositionInUniversity(string Id, string name, string department)
        {
            InitializeComponent();
            unsername.Text = name;
            DEPARTMENT.Text = department;
            IDNO.Text = Id;
            dateTimePicker1.Value = DateTime.Today;
            leve2.Text = "";
            Intake.Visible = false;
            label2.Visible = false;
        }

        private void Intake_Click(object sender, EventArgs e)
        {

        }

        private void DEPARTMENT_Click(object sender, EventArgs e)
        {

        }

        private void IDNO_Click(object sender, EventArgs e)
        {

        }

        private void UserPositionInUniversity_Load(object sender, EventArgs e)
        {

        }

        private void unsername_Click(object sender, EventArgs e)
        {

        }

        private void UserPositionInUniversity_FormClosing(object sender, FormClosingEventArgs e)
        {
            this.Dispose();
        }
    }
}
