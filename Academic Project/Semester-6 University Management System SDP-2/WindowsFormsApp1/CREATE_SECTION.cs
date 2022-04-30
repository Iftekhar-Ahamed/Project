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
    public partial class CREATE_SECTION : Form
    {
        private Panel DESKTOP;
        private string semester;
        public CREATE_SECTION(Panel DESKTOP)
        {

            InitializeComponent();
            this.DESKTOP = DESKTOP;
            departmentboxinti();
            courseboxinit();
            initsemestername();
        }
        private void initsemestername()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `SNAME` WHERE `STATUS`=1", connection);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    semester = reader.GetString(0);
                }
                reader.Close();
                connection.Close();
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message,"ERROR");
            }
            
        }
        private void courseboxinit()
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `COURSE_CODE`FROM `registrationreport`GROUP BY `COURSE_CODE`", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                comboBoxcoursecode.Items.Clear();
                while (reader.Read())
                {
                    comboBoxcoursecode.Items.Add(reader.GetString(0));
                }
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
        }
        private void departmentboxinti()
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `DEPARTMENT_NAME` FROM `department` WHERE `TYPE`='ACADEMIC'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                comboBoxteacherdept.Items.Clear();
                while (reader.Read())
                {
                    comboBoxteacherdept.Items.Add(reader.GetString(0));
                }
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
        }
        private void comboBoxteacherdept_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `ID`,`FIRST_NAME`,`LAST_NAME` FROM `profile` WHERE `DEPARTMENT`='" + comboBoxteacherdept.SelectedItem.ToString() + "' AND `USERTYPE`='TEACHER'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                dataGridViewTeacher.Columns.Clear();
                table.Load(reader);
                dataGridViewTeacher.DataSource = table;
                dataGridViewTeacher.RowHeadersVisible = false;
                reader.Close();
                databaseconnection.Close();

                
                    DataGridViewButtonColumn btn = new DataGridViewButtonColumn();
                    btn.Text = "SELECT";
                    btn.HeaderText = "ACTION";
                    btn.Name = "selectsction";
                    btn.UseColumnTextForButtonValue = true;
                    dataGridViewTeacher.Columns.Add(btn);


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
        }

        private void dataGridViewTeacher_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 3)
            {
                DataGridViewRow row = this.dataGridViewTeacher.Rows[e.RowIndex];
                textBoxteacherid.Text = row.Cells[0].Value.ToString();
                textBoxSelectedTeacher.Text = row.Cells[1].Value.ToString()+" "+ row.Cells[2].Value.ToString();
            }
        }

        private void comboBoxcoursecode_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT COUNT(*) FROM `registrationreport` WHERE `COURSE_CODE` = '" + comboBoxcoursecode.SelectedItem.ToString() + "';", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    textBoxAS.Text = reader.GetString(0);
                }
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void View_Click(object sender, EventArgs e)
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `registrationreport` WHERE `COURSE_CODE` = '" + comboBoxcoursecode.SelectedItem.ToString() + "' LIMIT " + Convert.ToInt64(textBoxLIMIT.Text.ToString()) + "", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                DataTable table = new DataTable();
                table.Load(reader);
                dataGridViewstudent.DataSource = table;
                dataGridViewstudent.RowHeadersVisible = false;
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }
        private void createsection()
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT MAX(`ID`) FROM `section`", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                int id = 0;
                if (reader.Read())
                {
                    id = reader.GetInt32(0);
                }
                else
                {
                    id = 0;
                }
                reader.Close();
                command = new MySqlCommand("CREATE TABLE `section" + id + "`(`ID` BIGINT NOT NULL,`Attendance` DOUBLE NOT NULL,`Assignment` DOUBLE NOT NULL, `MID` DOUBLE NOT NULL,`FINAL`DOUBLE NOT NULL)", databaseconnection);
                command.ExecuteNonQuery();

                command = new MySqlCommand("SELECT * FROM `registrationreport` WHERE `COURSE_CODE` = '" + comboBoxcoursecode.SelectedItem.ToString() + "' LIMIT " + Convert.ToInt64(textBoxLIMIT.Text.ToString()) + "", databaseconnection);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    MySqlConnection d = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                    d.Open();
                    MySqlCommand command1 = new MySqlCommand("INSERT INTO `section" + id + "`(`ID`,`Attendance`,`Assignment`,`MID`,`FINAL`)VALUES(" + reader.GetString(0) + ",0,0,0,0);", d), cmd2 = new MySqlCommand("DELETE FROM `registrationreport` WHERE `ID`='" + reader.GetString(0) + "' AND `COURSE_CODE` = '" + comboBoxcoursecode.SelectedItem.ToString() + "'", d);
                    cmd2.ExecuteNonQuery();
                    //MessageBox.Show("DELETE FROM `registrationreport` WHERE `ID`=" + id + " AND `COURSE_CODE` = '" + comboBoxcoursecode.SelectedItem.ToString() + "'");
                    command1.ExecuteNonQuery();
                    d.Close();
                }
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            

        }
        private void create_Click(object sender, EventArgs e)
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("INSERT INTO `section`(`ID`,`COURSE_CODE`,`TID`,`SEMESTER`)VALUES(null,'" + comboBoxcoursecode.SelectedItem.ToString() + "','" + textBoxteacherid.Text + "','" + semester + "');", databaseconnection);
                command.ExecuteNonQuery();
                databaseconnection.Close();
                createsection();
                MessageBox.Show("SUCESSFULLY DONE");
                DESKTOP.Controls.Clear();
                CREATE_SECTION ob = new CREATE_SECTION(DESKTOP);
                Dispose();
                ob.TopLevel = false;
                DESKTOP.Controls.Add(ob);
                ob.Dock = DockStyle.Fill;
                ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
                ob.Show();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void button1_Click(object sender, EventArgs e)
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
    }
}
