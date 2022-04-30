using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class MainMenu : Form
    {
        
        
        public MainMenu()
        {
            InitializeComponent();
        }


        

      

        private void MainMenu_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            LogIn ob = new LogIn("Admin");
            this.Hide();
            ob.Show();
        }

        private void student_Click(object sender, EventArgs e)
        {
            LogIn ob = new LogIn("STUDENT");
            this.Hide();
            ob.Show();
        }

        private void teacher_Click(object sender, EventArgs e)
        {
            LogIn ob = new LogIn("TEACHER");
            this.Hide();
            ob.Show();
        }

        private void employee_Click(object sender, EventArgs e)
        {
            LogIn ob = new LogIn("Employee");
            this.Hide();
            ob.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Notice ob = new Notice("");
            this.Hide();
            ob.Show();
            
        }

       
        private void button1_Click(object sender, EventArgs e)
        {
            
            this.Close();

        }

        private void MainMenu_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}
