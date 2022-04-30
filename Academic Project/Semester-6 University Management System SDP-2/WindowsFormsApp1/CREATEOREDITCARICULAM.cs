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
    public partial class CREATEOREDITCARICULAM : Form
    {
        private Panel DESKTOP;
        private string dptname;
        public CREATEOREDITCARICULAM(Panel DESKTOP)
        {
            InitializeComponent();
            this.DESKTOP = DESKTOP;
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


        private void buttonCREATENEWCARICULAM_Click(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("CREATE TABLE `" + selectdepartment.SelectedItem.ToString() + "`(`COURSE_NAME` VARCHAR(50) NOT NULL,`COURSE_CODE` VARCHAR(50) NOT NULL,`PREREQUISITE` VARCHAR(50) NOT NULL,`CREDIT` DOUBLE NOT NULL,PRIMARY KEY(`COURSE_CODE`))", databaseconnection);
                command.ExecuteNonQuery();
                databaseconnection.Close();
                panel_CREATE_NEW_ACADEMIC_CARICULAM.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void buttondelete_Click(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("drop table `" + comboBoxDELETECARICULAM.SelectedItem.ToString() + "`", databaseconnection);
                command.ExecuteNonQuery();
                databaseconnection.Close();
                paneldelete.Visible = false;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            

        }

        private void comboBoxallcoursecodeupdate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (comboBoxallcoursecode.SelectedItem != null)
            {
                try
                {
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    string csc = comboBoxallcoursecode.SelectedItem.ToString();
                    MySqlCommand command = new MySqlCommand("select * from `course` WHERE `COURSE_CODE` = '" + csc + "'", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        labelcoursename.Text = reader.GetString(2);
                        labelcoursecode.Text = reader.GetString(1);
                        labelcoursecedit.Text = reader.GetString(4);
                        labelprerequest.Text = reader.GetString(3);
                    }
                    reader.Close();
                    databaseconnection.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
                
            }
            else
            {
                labelcoursename.Text = "";
                labelcoursecode.Text = "";
                labelcoursecedit.Text = "";
                labelprerequest.Text = "";
            }
            
        }

        private void buttonSELECTOPTION_Click(object sender, EventArgs e)
        {
            groupBoxADD.Visible = false;
            groupBoxEDITCOURSE.Visible = false;
            
            
            if (radioButtonADD.Checked)
            {
                addcourse.Visible = true;
                addcourse.Text = "ADD";
                groupBoxADD.Visible = true;
                
            }
            else if (radioButtonDELETECOURSE.Checked)
            {
                groupBoxEDITCOURSE.Visible = true;
                groupBoxEDITCOURSE.Text = "DELETE COURSE";
                addcourse.Visible = false;
                buttonDELETECOURSE.Visible = true;

            }
            
        }

        private void SaveEditCourse_Click(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("INSERT INTO`" + allcariculamdept.SelectedItem.ToString() + "`(`COURSE_NAME`,`COURSE_CODE`,`PREREQUISITE`,`CREDIT`)VALUES( '" + labelcoursename.Text.ToString() + "' ,'" + labelcoursecode.Text.ToString() + "' , '" + labelprerequest.Text.ToString() + "' , " + labelcoursecedit.Text.ToString() + " )", databaseconnection);
                command.ExecuteNonQuery();
                double cr = Convert.ToDouble(labelcoursecedit.Text.ToString());
                databaseconnection.Close();
                mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                command = new MySqlCommand("UPDATE `department` SET `TOTALCREDIT`=`TOTALCREDIT`+ " + cr + " WHERE `DEPARTMENT_NAME`= '" + allcariculamdept.SelectedItem.ToString() + "'", databaseconnection);
                command.ExecuteNonQuery();

                databaseconnection.Close();
                refreshdatagrigvies();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void radioButtonDELETECOURSE_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        private void radioButtonEDIT_CheckedChanged(object sender, EventArgs e)
        {
            
        }

        private void allcariculamdept_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void refreshdatagrigvies()
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + dptname + "`", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader(), r1;
                DataTable dt = new DataTable();
                dt.Load(reader);
                dataGridViewcariculamdpt.DataSource = dt;
                dataGridViewcariculamdpt.RowHeadersVisible = false;
                dataGridViewcariculamdpt.Columns["COURSE_NAME"].Visible = false;
                dataGridViewcariculamdpt.Columns[1].Width = 130;
                dataGridViewcariculamdpt.Columns[2].Width = 130;
                dataGridViewcariculamdpt.Columns[3].Width = 100;
                reader.Close();
                r1 = command.ExecuteReader();
                comBoxSelectforedit.Items.Clear();
                comBoxSelectforedit.SelectedIndex = -1;
                while (r1.Read())
                {
                    comBoxSelectforedit.Items.Add(r1.GetString(1));
                }
                r1.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void refreshcoursecodeacademic()
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select * from `course`", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                comboBoxallcoursecode.Items.Clear();
                while (reader.Read())
                {
                    comboBoxallcoursecode.Items.Add(reader.GetString(1));
                }
                reader.Close();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
        private void comBoxselectdepartmant_Click(object sender, EventArgs e)
        {
            try
            {
                groupBoxOPARETION.Visible = true;
                groupBoxEDITCOURSE.Visible = false;
                groupBoxADD.Visible = false;
                dataGridViewcariculamdpt.Visible = true;
                ResetAll(groupBoxEDITCOURSE);
                ResetAll(groupBoxOPARETION);

                refreshcoursecodeacademic();




                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                comBoxSelectforedit.Items.Clear();
                comBoxSelectforedit.SelectedItem = null;
                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + allcariculamdept.SelectedItem.ToString() + "`", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    comBoxSelectforedit.Items.Add(reader.GetString(1));
                }

                dptname = allcariculamdept.SelectedItem.ToString();
                refreshdatagrigvies();
                refreshcoursecodeacademic();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void comBoxSelectforedit_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select * from `" + dptname + "` WHERE `COURSE_CODE` = '" + comBoxSelectforedit.SelectedItem.ToString() + "'", databaseconnection);
                if (comBoxSelectforedit.SelectedItem != null)
                {
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        textBoxcoursename.Text = reader.GetString(0);
                        textBoxcoursecode.Text = reader.GetString(1);
                        textBoxprerequest.Text = reader.GetString(2);
                        textBoxcoursecredit.Text = reader.GetString(3);
                    }
                    reader.Close();
                }
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        private void buttonSave_Click(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("UPDATE `" + dptname + "` SET `COURSE_NAME` = '" + textBoxcoursename.Text.ToString() + "',  `COURSE_CODE` = '" + textBoxcoursecode.Text.ToString() + "',`PREREQUISITE` = '" + textBoxprerequest.Text.ToString() + "',`CREDIT`='" + textBoxcoursecredit.Text.ToString() + "' where `COURSE_CODE`= '" + comBoxSelectforedit.SelectedItem.ToString() + "'", databaseconnection);
                int i = command.ExecuteNonQuery();
                if (i != 0)
                {
                    MessageBox.Show("SUCESSFULLY EDITED");
                }
                else
                {
                    MessageBox.Show("FAILD");
                }
                refreshdatagrigvies();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void CREATEOREDITCARICULAM_Load(object sender, EventArgs e)
        {

        }
        private void subtract(string coursecode)
        {
            string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
            MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
            databaseconnection.Open();
            string cmd= "SELECT `CREDIT` FROM `course` WHERE `COURSE_CODE`= '"+coursecode+"'";
            MySqlCommand command = new MySqlCommand(cmd,databaseconnection);
            MySqlDataReader reader =command.ExecuteReader();
            double cr=0;
            if (reader.Read())
            {
                cr=reader.GetDouble(0);
            }
            reader.Close();
            command = new MySqlCommand("UPDATE `department` SET `TOTALCREDIT`=`TOTALCREDIT`- " + cr + " WHERE `DEPARTMENT_NAME`= '" + dptname + "'", databaseconnection);
            command.ExecuteNonQuery();
            databaseconnection.Close();
        }
        private void buttonDELETECOURSE_Click(object sender, EventArgs e)
        {

            subtract(comBoxSelectforedit.SelectedItem.ToString());
            string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
            MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
            databaseconnection.Open();
            MySqlCommand command = new MySqlCommand("DELETE  FROM `" + dptname + "` WHERE `COURSE_CODE` = '" + comBoxSelectforedit.SelectedItem.ToString() + "'", databaseconnection);
            int i=command.ExecuteNonQuery();
            if (i != 0)
            {
                MessageBox.Show("SUCESSFULLY DELETED");
            }
            else
            {
                MessageBox.Show("FAILD");
            }
            databaseconnection.Close();
            refreshdatagrigvies();
            refreshcoursecodeacademic();
        }

        private void SELECT_Click_1(object sender, EventArgs e)
        {
            try
            {
                paneldelete.Visible = false;
                panel_CREATE_NEW_ACADEMIC_CARICULAM.Visible = false;
                panelDEcariculam.Visible = false;

                if (CREATE_NEW_ACADEMIC_CARICULAM.Checked)
                {
                    panel_CREATE_NEW_ACADEMIC_CARICULAM.Visible = true;
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("select * from `department`  WHERE `TYPE`='ACADEMIC' ", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    selectdepartment.Items.Clear();
                    selectdepartment.SelectedIndex = -1;
                    while (reader.Read())
                    {
                        selectdepartment.Items.Add(reader.GetString(1));
                    }
                    reader.Close();

                }
                else if (EDIT_CARICULAM.Checked)
                {
                    ResetAll(groupBoxEDITCOURSE);
                    ResetAll(groupBoxOPARETION);
                    panelDEcariculam.Visible = true;
                    allcariculamdept.SelectedIndex = -1;
                    allcariculamdept.Items.Clear();
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("show tables", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        allcariculamdept.Items.Add(reader.GetString(0));
                    }
                    reader.Close();
                    databaseconnection.Close();
                }
                else if (radioButtondelete.Checked)
                {

                    paneldelete.Visible = true;
                    string mysqlconnetstring = "datasource= localhost;username=root;password=;database=curriculum";
                    MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                    databaseconnection.Open();
                    MySqlCommand command = new MySqlCommand("show tables", databaseconnection);
                    MySqlDataReader reader = command.ExecuteReader();
                    comboBoxDELETECARICULAM.Items.Clear();
                    comboBoxDELETECARICULAM.SelectedIndex = -1;
                    while (reader.Read())
                    {
                        comboBoxDELETECARICULAM.Items.Add(reader.GetString(0));
                    }
                    reader.Close();
                    databaseconnection.Close();
                }
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void radioButtonADD_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void exit_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            AdminAcademicControlPanel ob = new AdminAcademicControlPanel(DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Close();
            ob.Show();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
