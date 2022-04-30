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
    public partial class Add_Delete_Update_course_department : Form
    {
        private Panel DESKTOP;
        public Add_Delete_Update_course_department(Panel DESKTOP)
        {
            InitializeComponent();
            this.DESKTOP = DESKTOP;
        }
        private void Add_Delete_Update_course_department_Load(object sender, EventArgs e)
        {

        }

        private void ResetAll(GroupBox gbox)

        {

            foreach (Control ctrl in gbox.Controls)

            {

                if (ctrl is TextBox)

                {

                    TextBox textBox = (TextBox)ctrl;

                    textBox.Text = null;

                }

                if (ctrl is ComboBox)

                {

                    ComboBox comboBox = (ComboBox)ctrl;

                    comboBox.SelectedIndex = -1;

                }

                if (ctrl is CheckBox)

                {

                    CheckBox checkBox = (CheckBox)ctrl;

                    checkBox.Checked = false;

                }

                if (ctrl is RadioButton)

                {

                    RadioButton radioButton = (RadioButton)ctrl;

                    radioButton.Checked = false;

                }

                if (ctrl is ListBox)

                {

                    ListBox listBox = (ListBox)ctrl;

                    listBox.ClearSelected();

                }

            }

        }



        private void type_TextChanged(object sender, EventArgs e)
        {

        }

        private void save_Click_1(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                string departmentname = this.departmentname.Text;
                MySqlCommand command = new MySqlCommand("INSERT INTO `department`(`DEPARTMENT_NAME`,`TYPE`, `TOTALCREDIT`)VALUES('" + departmentname + "','" + type.Text + "','0')", databaseconnection);
                command.ExecuteNonQuery();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void cobodeartmentnameforupdate_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void updatesave_Click_1(object sender, EventArgs e)
        {
            try
            {
                string dptname = updateddepartmentname.Text, type = edittype.Text;
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("UPDATE `department` SET `DEPARTMENT_NAME` = '" + dptname + "' , `TYPE`= '" + type + "' WHERE `DEPARTMENT_NAME` = '" + cobodeartmentnameforupdate.SelectedItem.ToString() + "'", databaseconnection);
                command.ExecuteNonQuery();

                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void next_Click_2(object sender, EventArgs e)
        {
            try
            {
                string deptname = cobodeartmentnameforupdate.SelectedItem.ToString(), dtype = " ";
                groupBoxeditdepartment.Visible = true;
                ResetAll(groupBoxeditdepartment);
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select * from `department` WHERE `DEPARTMENT_NAME`= '" + deptname + "'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    //dcreadit = reader.GetString(2);
                    dtype = reader.GetString(3);
                }
                groupBoxUpdateCourse.Visible = false;
                groupBoxEditCourse.Visible = false;
                groupBoxcourse.Visible = false;
                groupBoxdepartmentoperation.Visible = true;
                groupBoxaddcourse.Visible = false;
                groupBoxadddepartment.Visible = false;
                groupBoxeditdepartment.Visible = true;
                groupboxupdatedepartment.Visible = true;
                groupBoxsection.Visible = true;
                updateddepartmentname.Text = deptname;
                edittype.Text = dtype;
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void button1_Click_2(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums", deptname = comboBoxdepartment.Text, courseName = textBoxCourseName.Text, courseCode = textBoxCourseCode.Text;
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();

                string prerequest = "";
                if (comboBoxshowallcourse.SelectedItem != null)
                {
                    prerequest = comboBoxshowallcourse.SelectedItem.ToString();
                }

                MySqlCommand command = new MySqlCommand("INSERT INTO `course`(`DEPARTMENT_NAME`,`COURSE_CODE`,`COURSE_NAME`,`PREREQUISITE`,`CREDIT`)VALUES('" + deptname + "','" + courseCode + "','" + courseName + "','" + prerequest + "','" + txtboxCourseCredit.Text + "')", databaseconnection);
                int i = command.ExecuteNonQuery();
                if (i != 0)
                {
                    MessageBox.Show(i + "Data Saved");
                    ResetAll(groupBoxaddcourse);
                }
                else
                {
                    MessageBox.Show("Data not Saved");
                }


                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void comboBoxshowallcourse_SelectedIndexChanged_1(object sender, EventArgs e)
        {

        }

        private void radioButtonPREREQUISITEYES_CheckedChanged_1(object sender, EventArgs e)
        {
            try
            {
                if (radioButtonPREREQUISITEYES.Checked)
                {
                    label7.Visible = true;
                    comboBoxshowallcourse.Visible = true;
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums", deptname = comboBoxdepartment.SelectedItem.ToString();
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("select `COURSE_CODE` from `course` where `DEPARTMENT_NAME` = '" + deptname + "'", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    comboBoxshowallcourse.Items.Clear();
                    while (reader.Read())
                    {
                        comboBoxshowallcourse.Items.Add(reader.GetString(0));
                    }
                    databaseconnection.Close();
                }
                else if (radioButtonPREREQUISITENO.Checked)
                {
                    label7.Visible = false;
                    comboBoxshowallcourse.Visible = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void radioButtonPREREQUISITENO_CheckedChanged_1(object sender, EventArgs e)
        {
            try
            {
                if (radioButtonPREREQUISITEYES.Checked)
                {
                    label7.Visible = true;
                    comboBoxshowallcourse.Visible = true;
                    label7.Visible = true;
                    comboBoxshowallcourse.Visible = true;
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums", deptname = comboBoxdepartment.SelectedItem.ToString();
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("select * from `course` where `DEPARTMENT_NAME` = '" + deptname + "'", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    comboBoxshowallcourse.Items.Clear();
                    while (reader.Read())
                    {
                        comboBoxshowallcourse.Items.Add(reader.GetString(1));
                    }
                    reader.Close();
                    databaseconnection.Close();
                }
                else if (radioButtonPREREQUISITENO.Checked)
                {
                    label7.Visible = false;
                    comboBoxshowallcourse.Visible = false;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void button3_Click_2(object sender, EventArgs e)
        {
            try
            {
                groupBoxUpdateCourse.Visible = true;
                groupBoxEditCourse.Visible = false;
                groupBoxcourse.Visible = true;
                groupBoxdepartmentoperation.Visible = false;
                groupBoxaddcourse.Visible = false;
                groupBoxadddepartment.Visible = false;
                groupBoxeditdepartment.Visible = false;
                groupboxupdatedepartment.Visible = false;
                groupBoxsection.Visible = true;
                labelcoursecode.Visible = true;
                comboBoxallcoursecodeupdate.Visible = true;
                Slectedcoursecode.Visible = true;
                ResetAll(groupBoxEditCourse);

                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums", deptname = comboBoxupdatecourealldepartment.SelectedItem.ToString();
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select * from `course` where `DEPARTMENT_NAME` = '" + deptname + "'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                comboBoxallcoursecodeupdate.Items.Clear();
                while (reader.Read())
                {
                    comboBoxallcoursecodeupdate.Items.Add(reader.GetString(1));
                }
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
           
        }

        private void Slectedcoursecode_Click_2(object sender, EventArgs e)
        {
            try
            {
                groupBoxEditCourse.Visible = true;
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select * from `course` where `COURSE_CODE` = '" + comboBoxallcoursecodeupdate.SelectedItem.ToString() + "'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                string coursecode = "", coursename = "", coursecredit = "", deptname = "", prerequest = "";
                while (reader.Read())
                {
                    deptname = reader.GetString(0);
                    coursecode = reader.GetString(1);
                    coursename = reader.GetString(2);
                    prerequest = reader.GetString(3);
                    coursecredit = reader.GetString(4);
                }
                reader.Close();




                command = new MySqlCommand("select * from `department`  WHERE `TYPE`='ACADEMIC' ", databaseconnection);
                reader = command.ExecuteReader();
                comboBoxselectediteddept.Items.Clear();
                while (reader.Read())
                {
                    comboBoxselectediteddept.Items.Add(reader.GetString(1));
                }
                comboBoxselectediteddept.SelectedItem = deptname;
                reader.Close();




                comboBoxprerestedited.Items.Clear();
                command = new MySqlCommand("select * from `course` where `DEPARTMENT_NAME` = '" + deptname + "'", databaseconnection);
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    comboBoxprerestedited.Items.Add(reader.GetString(1));
                }

                comboBoxprerestedited.SelectedItem = prerequest;


                reader.Close();
                //MessageBox.Show(coursecredit);
                databaseconnection.Close();
                EditedCourseName.Text = coursename;
                EditedCourseCode.Text = coursecode;
                EditedCourseCredit.Text = coursecredit;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void comboBoxprerestedited_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void SaveEditCourse_Click(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                string prec = "";
                if (comboBoxprerestedited.SelectedItem != null)
                {
                    prec = comboBoxprerestedited.SelectedItem.ToString();
                }
                MySqlCommand command = new MySqlCommand("UPDATE `course` SET `DEPARTMENT_NAME` = '" + comboBoxselectediteddept.SelectedItem.ToString() + "' , `COURSE_CODE`= '" + EditedCourseCode.Text.ToString() + "',`COURSE_NAME` = '" + EditedCourseName.Text.ToString() + "' ,`PREREQUISITE` = '" + prec + "',`CREDIT` = '" + Convert.ToDouble(EditedCourseCredit.Text.ToString()) + "' WHERE `COURSE_CODE` = '" + comboBoxallcoursecodeupdate.SelectedItem.ToString() + "'", databaseconnection);
                int i = command.ExecuteNonQuery();
                if (i != 0)
                {
                    MessageBox.Show(comboBoxallcoursecodeupdate.SelectedItem.ToString() + " Updated");
                    ResetAll(groupBoxEditCourse);
                }
                else
                {
                    MessageBox.Show("FAILD");
                    ResetAll(groupBoxEditCourse);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void buttoncourse_Click(object sender, EventArgs e)
        {
            try
            {
                if (addnewcourse.Checked)
                {
                    groupBoxUpdateCourse.Visible = false;
                    groupBoxEditCourse.Visible = false;
                    groupBoxcourse.Visible = true;
                    groupBoxdepartmentoperation.Visible = false;
                    groupBoxaddcourse.Visible = true;
                    groupBoxadddepartment.Visible = false;
                    groupBoxeditdepartment.Visible = false;
                    groupboxupdatedepartment.Visible = false;
                    groupBoxsection.Visible = true;
                    ResetAll(groupBoxaddcourse);
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("select * from `department`  WHERE `TYPE`='ACADEMIC' ", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        comboBoxdepartment.Items.Add(reader.GetString(1));
                    }
                    reader.Close();
                    databaseconnection.Close();
                }
                else if (updatecourse.Checked)
                {
                    groupBoxUpdateCourse.Visible = true;
                    groupBoxEditCourse.Visible = false;
                    groupBoxcourse.Visible = true;
                    groupBoxdepartmentoperation.Visible = false;
                    groupBoxaddcourse.Visible = false;
                    groupBoxadddepartment.Visible = false;
                    groupBoxeditdepartment.Visible = false;
                    groupboxupdatedepartment.Visible = false;
                    groupBoxsection.Visible = true;

                    ResetAll(groupBoxUpdateCourse);
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("select * from `department`  WHERE `TYPE`='ACADEMIC' ", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    comboBoxupdatecourealldepartment.Items.Clear();
                    while (reader.Read())
                    {
                        comboBoxupdatecourealldepartment.Items.Add(reader.GetString(1));
                    }
                    databaseconnection.Close();
                    reader.Close();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "ERROR");
            }
            
        }

        private void back_Click_1(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            Department ob = new Department(DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Close();
            ob.Show();
        }

        private void buttonsection_Click(object sender, EventArgs e)
        {
            if (department.Checked)
            {
                groupBoxUpdateCourse.Visible = false;
                groupBoxEditCourse.Visible = false;
                groupBoxcourse.Visible = false;
                groupBoxdepartmentoperation.Visible = true;
                groupBoxaddcourse.Visible = false;
                groupBoxadddepartment.Visible = false;
                groupBoxeditdepartment.Visible = false;
                groupboxupdatedepartment.Visible = false;
                groupBoxsection.Visible = true;
                ResetAll(groupBoxdepartmentoperation);


            }
            else if (course.Checked)
            {
                groupBoxUpdateCourse.Visible = false;
                groupBoxEditCourse.Visible = false;
                groupBoxcourse.Visible = true;
                groupBoxdepartmentoperation.Visible = false;
                groupBoxaddcourse.Visible = false;
                groupBoxadddepartment.Visible = false;
                groupBoxeditdepartment.Visible = false;
                groupboxupdatedepartment.Visible = false;
                groupBoxsection.Visible = true;
                ResetAll(groupBoxcourse);
            }
        }

        private void buttondepartment_Click(object sender, EventArgs e)
        {
            if (radioButton2.Checked)
            {
                groupBoxUpdateCourse.Visible = false;
                groupBoxEditCourse.Visible = false;
                groupBoxcourse.Visible = false;
                groupBoxdepartmentoperation.Visible = true;
                groupBoxaddcourse.Visible = false;
                groupBoxadddepartment.Visible = true;
                groupBoxeditdepartment.Visible = false;
                groupboxupdatedepartment.Visible = false;
                groupBoxsection.Visible = true;

                ResetAll(groupBoxadddepartment);

            }
            else if (updatedepartment.Checked)
            {
                try
                {
                    groupBoxUpdateCourse.Visible = false;
                    groupBoxEditCourse.Visible = false;
                    groupBoxcourse.Visible = false;
                    groupBoxdepartmentoperation.Visible = true;
                    groupBoxaddcourse.Visible = false;
                    groupBoxadddepartment.Visible = false;
                    groupBoxeditdepartment.Visible = false;
                    groupboxupdatedepartment.Visible = true;
                    groupBoxsection.Visible = true;
                    ResetAll(groupboxupdatedepartment);
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("select * from `department`", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    cobodeartmentnameforupdate.Items.Clear();
                    while (reader.Read())
                    {
                        cobodeartmentnameforupdate.Items.Add(reader.GetString(1));
                    }
                    databaseconnection.Close();
                    reader.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "ERROR");
                }
                

            }
        }
    }
}
