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
    public partial class PersonalDataFromFillUp : Form
    {
        private string _title;
        private Panel DESKTOP;
        public PersonalDataFromFillUp(string _tile,Panel DESKTOP)
        {
            InitializeComponent();
            this.DESKTOP = DESKTOP;
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command;
                MySqlDataReader reader;
                this._title = _tile;
                if (_tile == "TEACHER" || _tile == "EMPLOYEE")
                {
                    panelbsc.Visible = true;
                    INTAKE.Visible = false;
                    label33.Visible = false;
                }
                else
                {
                    INTAKE.Visible = true;

                    command = new MySqlCommand("select `INTAKEID` from `intake` GROUP BY `INTAKEID` ORDER BY `INTAKEID`", databaseconnection);
                    reader = command.ExecuteReader();
                    INTAKE.Items.Clear();
                    while (reader.Read())
                    {
                        INTAKE.Items.Add(reader.GetString(0));
                    }
                    reader.Close();
                }
                string xx = "";
                if (_tile == "TEACHER" || _tile == "STUDENT")
                {
                    xx = "ACADEMIC";
                }
                else
                {
                    xx = "EMPLOYEE";
                }
                command = new MySqlCommand("select * from `department` WHERE  `TYPE`= '"+xx+"'", databaseconnection);
                MySqlDataReader r = command.ExecuteReader();
                department.Items.Clear();
                while (r.Read())
                {
                    department.Items.Add(r.GetString(1));
                }
                label24.Text = _tile + " INFORMATION FROM";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }






        private void PersonalDataFromFillUp_Load(object sender, EventArgs e)
        {

        }


        private void ceratestudentacademictable(string id)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();

                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + department.SelectedItem.ToString() + "`", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();


                string mysqlconnetstring2 = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection2 = new MySqlConnection(mysqlconnetstring2);
                databaseconnection2.Open();
                MySqlCommand command2 = new MySqlCommand("CREATE TABLE `" + id + "`(`COURSE_NAME` VARCHAR(50) NOT NULL,`COURSE_CODE` VARCHAR(50) NOT NULL,`PREREQUISITE` VARCHAR(50) NOT NULL,`CREDIT` DOUBLE NOT NULL,`STATUS` INT NOT NULL,`RESULT` DOUBLE,`TEACHERSNAME` VARCHAR(100),`SNAME` VARCHAR(100),PRIMARY KEY(`COURSE_CODE`))", databaseconnection2);
                command2.ExecuteNonQuery();
                while (reader.Read())
                {
                    command2 = new MySqlCommand("INSERT INTO `" + id + "`(`COURSE_NAME`,`COURSE_CODE`,`PREREQUISITE`,`CREDIT`,`STATUS`,`RESULT`,`TEACHERSNAME`,`SNAME`)VALUES('" + reader.GetString(0) + "','" + reader.GetString(1) + "','" + reader.GetString(2) + "','" + reader.GetString(3) + "',0,0,' ',' ')", databaseconnection2);
                    command2.ExecuteNonQuery();
                }

                command2 = new MySqlCommand("CREATE TABLE `" + id + "addedcourse`(`COURSE_NAME` VARCHAR(50),`COURSE_CODE` VARCHAR(50),`PREREQUISITE` VARCHAR(50),`CREDIT` DOUBLE)", databaseconnection2);
                command2.ExecuteNonQuery();


                databaseconnection.Close();
                databaseconnection2.Close();
                reader.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        

        private void button1_Click_1(object sender, EventArgs e)
        {
            try
            {
                string Fname = textBox1.Text, Lname = textBox2.Text, Address = textBox3.Text, Email = textBox4.Text, PhoneNo1 = textBox5.Text, PhoneNo2 = textBox6.Text, Nbid = textBox7.Text, Ntionality = textBox10.Text, fatherN = textBox8.Text, MatherN = textBox9.Text, Bgroup = textBox15.Text;
                string Idtype, gender, DOB = dateTimePicker1.Text, password = "1234";
                if (radioButton1.Checked == true)
                {
                    gender = radioButton1.Text;
                }
                else if (radioButton2.Checked == true)
                {
                    gender = radioButton2.Text;
                }
                else
                {
                    gender = radioButton3.Text;
                }
                if (radioButton4.Checked == true)
                {
                    Idtype = radioButton4.Text;
                }
                else
                {
                    Idtype = radioButton5.Text;
                }


                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();

                MySqlCommand command = new MySqlCommand("INSERT INTO `profile`(`FIRST_NAME`,`LAST_NAME`,`GENDER`,`ADDRESS`,`PHONE_NUMBER`,`PHONE_NUMBER2`,`ID_TYPE`,`ID_NO`,`BLOOD_GROUP`,`DOB`,`EMAIL`,`FATHERSNAME`,`MOTHERSNAME`,`NATIONALITY`,`PASSWORD`,`USERTYPE`,`DEPARTMENT`)VALUES('" + Fname + "','" + Lname + "','" + gender + "','" + Address + "','" + PhoneNo1 + "','" + PhoneNo2 + "','" + Idtype + "','" + Nbid + "','" + Bgroup + "','" + DOB + "','" + Email + "','" + fatherN + "','" + MatherN + "','" + Ntionality + "','" + password + "','" + _title + "','" + department.SelectedItem.ToString() + "')", databaseconnection);
                int i = command.ExecuteNonQuery();
                command = new MySqlCommand("SELECT max(ID) FROM `profile`", databaseconnection);
                string id = command.ExecuteScalar().ToString();

                MySqlCommand command1, command2, command3;
                databaseconnection.Close();
                databaseconnection.Open();
                command1 = new MySqlCommand("INSERT INTO `academic_info`(`ID`,`BOARD_EXAM`,`YEAR`,`GRADE`,`GROUP`,`INST`)VALUES(" + id + ",'SSC','" + textBoxsscpass.Text + "','" + textBoxsscgrade.Text + "','" + textBoxsscgroup.Text + "','" + textBoxsscins.Text + "')", databaseconnection);
                command1.ExecuteNonQuery();
                command2 = new MySqlCommand("INSERT INTO `academic_info`(`ID`,`BOARD_EXAM`,`YEAR`,`GRADE`,`GROUP`,`INST`)VALUES(" + id + ",'HSC','" + textBoxHscpass.Text + "','" + textBoxhscgrade.Text + "','" + textBoxhscgroup.Text + "','" + textBoxhscins.Text + "')", databaseconnection);


                command2.ExecuteNonQuery();

                if (_title != "STUDENT")
                {
                    command3 = new MySqlCommand("INSERT INTO `academic_info`(`ID`,`BOARD_EXAM`,`YEAR`,`GRADE`,`GROUP`,`INST`)VALUES(" + id + ",'BSC','" + textBoxbscpass.Text + "','" + textBoxbscgrade.Text + "','" + textBoxbscgroup.Text + "','" + textBoxbscins.Text + "')", databaseconnection);
                    //MessageBox.Show("INSERT INTO `academic_info`(`ID`,`BOARD_EXAM`,`YEAR`,`GRADE`,`GROUP`,`INST`)VALUES(" + id + ",'BSC','" + textBoxbscins.Text + "','" + textBoxbscgrade.Text + "','" + textBoxbscgroup.Text + "','" + textBoxbscins.Text + "')");
                    command3.ExecuteNonQuery();
                    UserPositionInUniversity ob = new UserPositionInUniversity(id, Fname + " " + Lname, department.SelectedItem.ToString());
                    ob.Show();
                } 

                if (_title == "STUDENT")
                {
                    command = new MySqlCommand("INSERT INTO `intake`(`INTAKEID`,`STUDENTID`)VALUES('" + INTAKE.SelectedItem.ToString() + "','" + id + "')", databaseconnection);
                    command.ExecuteNonQuery();
                    ceratestudentacademictable(id);
                    UserPositionInUniversity ob = new UserPositionInUniversity(id, Fname + " " + Lname, department.SelectedItem.ToString(), INTAKE.SelectedItem.ToString());
                    ob.Show();
                }
                //Data form clear start
                textBox1.Clear();
                textBox2.Clear();
                textBox3.Clear();
                textBox4.Clear();
                textBox5.Clear();
                textBox6.Clear();
                textBox7.Clear();
                textBox10.Clear();
                textBox8.Clear();
                textBox9.Clear();
                textBox15.Clear();

                textBoxsscgrade.Clear();
                textBoxsscgroup.Clear();
                textBoxsscins.Clear();
                textBoxsscpass.Clear();

                textBoxhscgrade.Clear();
                textBoxhscgroup.Clear();
                textBoxhscins.Clear();
                textBoxHscpass.Clear();

                textBoxbscgrade.Clear();
                textBoxbscgroup.Clear();
                textBoxbscins.Clear();
                textBoxbscpass.Clear();


                //Data form clear end
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            ControlPanel ob = new ControlPanel(_title, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            Dispose();
            ob.Show();
        }

        private void INTAKE_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
