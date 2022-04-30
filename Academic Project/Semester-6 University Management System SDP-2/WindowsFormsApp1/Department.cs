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
    public partial class Department : Form
    {
        private Panel DESKTOP;
        public Department(Panel DESKTOP)
        {
            InitializeComponent();
            getdepartmentlist();
            this.DESKTOP = DESKTOP;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
        }
        private void getdepartmentlist()
        {
            try
            {
                DataTable dt = new DataTable();
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select * from `department` WHERE `TYPE`='ACADEMIC'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                dt.Load(reader);
                departmentlist.DataSource = dt;
                departmentlist.RowHeadersVisible = false;
                departmentlist.Columns["DEPARTMENT_ID"].Visible = false;
                departmentlist.Columns["TYPE"].Visible = false;
                departmentlist.ColumnHeadersVisible = false;


                departmentlist.Columns[1].Width = 400;
                departmentlist.Columns[2].Width = 80;
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void back_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            AdminAcademicControlPanel ob = new AdminAcademicControlPanel(DESKTOP);
            Dispose();
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            Add_Delete_Update_course_department ob = new Add_Delete_Update_course_department(DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void Department_Load(object sender, EventArgs e)
        {

        }
    }
}
