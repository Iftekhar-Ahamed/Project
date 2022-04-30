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
    public partial class SemesterRegistration : Form
    {
        private string id,type;
        private bool f = true , f1=true;
        private Panel DESKTOP;
        public SemesterRegistration(string type,string id,Panel DESKTOP)
        {
            InitializeComponent();
            this.id = id;
            this.type = type;
            this.DESKTOP = DESKTOP;

            refreshnotregistredcourse();
            refreshaddcoursetable();

        }
        private void refreshnotregistredcourse()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + id + "` WHERE `RESULT`<33", connection);
                MySqlDataReader reader = command.ExecuteReader();
                DataTable dt = new DataTable();

                dt.Load(reader);
                dataGridViewIncompleteCourse.DataSource = dt;
                //dataGridViewIncompleteCourse.Columns.Clear();
                

                dataGridViewIncompleteCourse.RowHeadersVisible = false;
                dataGridViewIncompleteCourse.Columns["COURSE_NAME"].Visible = false;
                dataGridViewIncompleteCourse.Columns["STATUS"].Visible = false;
                dataGridViewIncompleteCourse.Columns["RESULT"].Visible = false;
                dataGridViewIncompleteCourse.Columns["TEACHERSNAME"].Visible = false;
                dataGridViewIncompleteCourse.Columns["SNAME"].Visible = false;
                reader.Close();
                connection.Close();


                
                if (f)
                {
                    DataGridViewButtonColumn btn = new DataGridViewButtonColumn();
                    btn.Text = "SELECT";
                    btn.HeaderText = "ACTION";
                    btn.Name = "selectsction";
                    btn.UseColumnTextForButtonValue = true;
                    dataGridViewIncompleteCourse.Columns.Add(btn);
                    f = false;
                }
                

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message, " refreshnotregistredcourse ERROR");
            }
            
        }
        private void refreshaddcoursetable()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + id + "addedcourse`", connection);
                MySqlDataReader reader = command.ExecuteReader();
                DataTable dt = new DataTable();

                dt.Load(reader);
                //dataGridView1.Columns.Clear();
                dataGridView1.DataSource = dt;
                
                dataGridView1.RowHeadersVisible = false;
                dataGridView1.Columns["COURSE_NAME"].Visible = false;
                reader.Close();
                connection.Close();


                if(f1){
                    DataGridViewButtonColumn btn = new DataGridViewButtonColumn();
                    btn.Text = "SELECT";
                    btn.HeaderText = "ACTION";
                    btn.Name = "selectsction";
                    btn.UseColumnTextForButtonValue = true;
                    dataGridView1.Columns.Add(btn);
                    f1 = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "refreshaddcoursetable ERROR");
            }
        }


        private void EXIT_Click(object sender, EventArgs e)
        {
            Dispose();
            DESKTOP.Controls.Clear();
            
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                operation.Text = "ADDED COURSE";
                ADDCourse.Text = "DELETE";
                DataGridViewRow row = this.dataGridView1.Rows[e.RowIndex];
                CourseName.Text = row.Cells[1].Value.ToString();
                CourseCode.Text = row.Cells[2].Value.ToString();
                prerequestcoursecode.Text = row.Cells[3].Value.ToString();
                CourseCredit.Text = row.Cells[4].Value.ToString();
            }
        }

        private void ADDCourse_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
            connection.Open();
            if (ADDCourse.Text== "DELETE" && CourseName.Text != null)
            {
                MySqlCommand command = new MySqlCommand("DELETE FROM `" + id + "addedcourse` WHERE `COURSE_CODE`= '"+CourseCode.Text+"'", connection);
                command.ExecuteNonQuery();
            }
            else if(CourseName.Text!=null)
            {
                MySqlCommand command = new MySqlCommand("INSERT INTO `" + id + "addedcourse`(`COURSE_NAME`,`COURSE_CODE`,`PREREQUISITE`,`CREDIT`)VALUES('"+CourseName.Text+"','"+CourseCode.Text+"','"+prerequestcoursecode.Text+"',"+Convert.ToDouble(CourseCredit.Text.ToString())+");", connection);
                command.ExecuteNonQuery();
            }
            connection.Close();
            refreshaddcoursetable();
        }
        private bool calculatecreadit()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + id + "addedcourse`", connection);
                MySqlDataReader reader = command.ExecuteReader();
                double credit=0;
                while (reader.Read())
                {
                    credit += Convert.ToDouble(reader.GetString(3));
                }
                reader.Close();
                command = new MySqlCommand("SELECT * FROM `sname` WHERE `STATUS`=1", connection);
                reader = command.ExecuteReader();
                if (reader.Read())
                {
                    if (Convert.ToDouble(reader.GetString(2)) >= credit)
                    {
                        return true;
                    }
                    else
                    {
                        MessageBox.Show("MAXIMUM CREDIT = "+ Convert.ToDouble(reader.GetString(2)));
                        return false;
                    }
                }
                reader.Close ();
                connection.Close();


            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "calculatecreadit() ERROR");
            }
            return true;
        }
        private bool preok()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration"), connection1 = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `PREREQUISITE` FROM `" + id + "addedcourse`", connection), commandprevcheck;
                MySqlDataReader reader = command.ExecuteReader();
                //MessageBox.Show("SELECT * FROM `" + id + "addedcourse`");
                while (reader.Read())
                {
                    
                    if (reader.GetString(0) != "")
                    {
                        connection1.Open();
                        MessageBox.Show(reader.GetString(0));
                        commandprevcheck = new MySqlCommand("SELECT `STATUS` FROM `" + id + "` WHERE `COURSE_CODE` = '" + reader.GetString(0) + "'", connection1);
                        //MessageBox.Show("SELECT `STATUS` FROM `" + id + "` WHERE `COURSE_CODE` = '" + reader.GetString(1) + "'");
                        MySqlDataReader reader1 = commandprevcheck.ExecuteReader();
                        if (reader1.Read())
                        {
                            //MessageBox.Show(reader1.GetString(0)+" " + reader1.GetString(1));

                            if (reader1.GetString(0) == "0" )
                            {
                                MessageBox.Show(reader.GetString(0) + " is not completed");
                                return false;
                            }
                        }
                        reader1.Close();
                        connection1.Close();
                    }
                    
                }
                reader.Close();
            }
            catch (Exception ex)
            {
                 MessageBox.Show (ex.Message, "preok() ERROR");
            }

            return true;
        }
        private void SUBMIT_Click(object sender, EventArgs e)
        {
            try
            {
                if (calculatecreadit() && preok())
                {
                    try
                    {
                        
                        MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration"), connection1 = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                        connection1.Open();
                        connection.Open();
                        MySqlCommand command = new MySqlCommand("SELECT * FROM `" + id + "addedcourse`", connection), commandinsert;
                        MySqlDataReader reader = command.ExecuteReader();
                        while (reader.Read())
                        {
                            commandinsert = new MySqlCommand("INSERT INTO `registrationreport`(`ID`,`COURSE_CODE`)VALUES('" + id + "','" + reader.GetString(1) + "')", connection1);
                            commandinsert.ExecuteNonQuery();
                        }
                        reader.Close();
                        command = new MySqlCommand("DELETE FROM `" + id + "addedcourse`", connection);
                        command.ExecuteNonQuery();
                        connection.Close();
                        connection1.Close();
                        refreshaddcoursetable();
                        MessageBox.Show("SUCESSFULLY DONE");
                    }catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "SUBMIT_Click");
                    }
                    
                }
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "SUBMIT_Click ERROR");
            }
            
        }

        private void dataGridViewIncompleteCourse_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                operation.Text = "INCOMPLETE COURSE";
                ADDCourse.Text = "ADD";
                DataGridViewRow row =this.dataGridViewIncompleteCourse.Rows[e.RowIndex];
                CourseName.Text= row.Cells[1].Value.ToString();
                CourseCode.Text= row.Cells[2].Value.ToString();
                prerequestcoursecode.Text= row.Cells[3].Value.ToString();
                CourseCredit.Text= row.Cells[4].Value.ToString();

            }
            

        }
    }
}
