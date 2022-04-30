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
    public partial class LogIn : Form
    {
        private string LogInDivision;
        public LogIn(string LogInDivision)
        {
            InitializeComponent();
            this.LogInDivision = LogInDivision;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void LogIn_Load(object sender, EventArgs e)
        {

        }

        private void label8_Click(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void back_Click(object sender, EventArgs e)
        {
            MainMenu ob=new MainMenu();
            
            ob.Show();
            Dispose();
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {


                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                string uname = username.Text, pass = password.Text;
                MySqlCommand command = new MySqlCommand("select `PASSWORD`,`USERTYPE` from `profile` where `ID` = '" + uname + "'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                reader.Read();


                if (reader.GetString(0) == pass)
                {
                    if (this.LogInDivision == "Admin" && reader.GetString(1) == "ADMIN")
                    {
                        ADMIN_MENU OB = new ADMIN_MENU(uname);
                        
                        OB.Show();
                        Dispose();
                    }
                    else if (this.LogInDivision == "STUDENT" && reader.GetString(1) == "STUDENT")
                    {
                        STUDENT_MAINMENU ob = new STUDENT_MAINMENU(uname, "STUDENT");
                       
                        ob.Show();
                        Dispose();

                    }
                    else if (this.LogInDivision == "TEACHER" && reader.GetString(1) == "TEACHER")
                    {
                        TEACHER_MAINMENU OB = new TEACHER_MAINMENU(this.LogInDivision, uname);
                        
                        OB.Show();
                        Dispose();
                    }
                    else if (reader.GetString(1) == "EMPLOYEE")
                    {
                        Employee employee = new Employee(uname);
                        
                        employee.Show();
                        Dispose();
                    }


                }
                else
                {
                    label9.Text = "Wrong User Id and Password";
                }
                databaseconnection.Close();
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void LogIn_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }
    }
}
