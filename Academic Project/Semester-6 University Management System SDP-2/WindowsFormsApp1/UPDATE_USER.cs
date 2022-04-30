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
    public partial class UPDATE_USER : Form
    {
        private string _title;
        private string id;
        private Panel DESKTOP;
        public UPDATE_USER(string _tile, Panel DESKTOP)
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
                command = new MySqlCommand("select * from `department`", databaseconnection);
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


        private void UPDATE_USER_Load(object sender, EventArgs e)
        {

        }

        private void buttonSEARCH_Click(object sender, EventArgs e)
        {
            foreach (Control p in panel1.Controls)
                if (p is TextBox)
                {
                    p.Text = "";
                }
            foreach (Control p in panelbsc.Controls)
                if (p is TextBox)
                {
                    p.Text = "";
                }

            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                id = textBox11.Text;
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command;
                MySqlDataReader reader;
                string cmd1s = "SELECT * FROM `profile` WHERE `ID` = " + id + " AND `USERTYPE` = '" + _title + "'";
                command = new MySqlCommand(cmd1s, databaseconnection);
                reader = command.ExecuteReader();

                if (reader.Read())
                {
                    fname.Text = reader.GetString(1);
                    lname.Text = reader.GetString(2);
                    if (reader.GetString(3) == "Male")
                    {
                        male.Checked = true;
                    }
                    else if (reader.GetString(3) == "Female")
                    {
                        felmale.Checked = true;
                    }
                    else
                    {
                        custom.Checked = true;
                    }


                    dob.Value = Convert.ToDateTime(reader.GetString(10));


                    address.Text = reader.GetString(4);
                    bloodgroup.Text = reader.GetString(9);
                    phoneno1.Text = reader.GetString(5);
                    phoneno2.Text = reader.GetString(6);
                    fathername.Text = reader.GetString(12);
                    mothername.Text = reader.GetString(13);
                    if (reader.GetString(7) == "NID")
                    {
                        nid.Checked = true;
                    }
                    else
                    {
                        bc.Checked = true;
                    }
                    idno.Text = reader.GetString(8);
                    email.Text = reader.GetString(11);
                    nationality.Text = reader.GetString(14);
                    department.SelectedItem = reader.GetString(16);
                    reader.Close();



                    string cmd2s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'SSC'";
                    string cmd3s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'HSC'";
                    string cmd4s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'BSC'";
                    MySqlCommand cmd2 = new MySqlCommand(cmd2s, databaseconnection);
                    MySqlCommand cmd3 = new MySqlCommand(cmd3s, databaseconnection);
                    MySqlCommand cmd4 = new MySqlCommand(cmd4s, databaseconnection);

                    MySqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read() == true)
                    {
                        //academic information show
                        sscpass.Text = reader2.GetString(2);
                        textBoxsscgrade.Text = reader2.GetString(3);
                        textBoxsscgroup.Text = reader2.GetString(4);
                        textBoxsscins.Text = reader2.GetString(5);
                    }
                    else
                    {
                        MessageBox.Show("No Data Found");
                    }
                    reader2.Close();
                    MySqlDataReader reader3 = cmd3.ExecuteReader();
                    if (reader3.Read() == true)
                    {
                        textBoxHscpass.Text = reader3.GetString(2);
                        textBoxhscgrade.Text = reader3.GetString(3);
                        textBoxhscgroup.Text = reader3.GetString(4);
                        textBoxhscins.Text = reader3.GetString(5);
                    }
                    else
                    {
                        MessageBox.Show("No Data Found");
                    }
                    reader3.Close();



                    if (_title != "STUDENT")
                    {
                        MySqlDataReader reader4 = cmd4.ExecuteReader();
                        if (reader4.Read() == true)
                        {
                            textBoxbscpass.Text = reader4.GetString(2);
                            textBoxbscgrade.Text = reader4.GetString(3);
                            textBoxbscgroup.Text = reader4.GetString(4);
                            textBoxbscins.Text = reader4.GetString(5);
                        }
                        else
                        {
                            MessageBox.Show("No Data Found");
                        }
                        reader4.Close();
                    }

                    panel1.Visible = true;
                }
                else
                {
                    MessageBox.Show("No Data Found");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }




        private void buttonUPDATE_Click_1(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                string g, idNO;
                if (male.Checked)
                {
                    g = male.Text;
                }
                else if (felmale.Checked)
                {
                    g = felmale.Text;
                }
                else
                {
                    g = custom.Text;
                }
                if (nid.Checked)
                {
                    idNO = nid.Text;
                }
                else
                {
                    idNO = bc.Text;
                }
                //MessageBox.Show("UPDATE `profile` SET `FIRST_NAME` = '" + fname.Text + "',`LAST_NAME`='" + lname.Text + "',`GENDER` '" + g + "',`ADDRESS`= '" + address.Text + "',`PHONE_NUMBER` = '" + phoneno1.Text + "',`PHONE_NUMBER2`= '" + phoneno2.Text + "',`ID_TYPE` = '" + idNO + "',`ID_NO`='" + idno.Text + "',`BLOOD_GROUP` = '" + bloodgroup.Text + "',`DOB`='" + dob.Text + "',`EMAIL`='" + email.Text + "',`FATHERSNAME`='" + fathername.Text + "',`MOTHERSNAME`='" + mothername.Text + "',`NATIONALITY`='" + nationality.Text + "',`DEPARTMENT`='" + department.SelectedItem.ToString() + "' WHERE `ID`='" + id + "'");
                MySqlCommand command = new MySqlCommand("UPDATE `profile` SET `FIRST_NAME` = '" + fname.Text + "',`LAST_NAME`='" + lname.Text + "',`GENDER` = '" + g + "',`ADDRESS`= '" + address.Text + "',`PHONE_NUMBER` = '" + phoneno1.Text + "',`PHONE_NUMBER2`= '" + phoneno2.Text + "',`ID_TYPE` = '" + idNO + "',`ID_NO`='" + idno.Text + "',`BLOOD_GROUP` = '" + bloodgroup.Text + "',`DOB`='" + dob.Text + "',`EMAIL`='" + email.Text + "',`FATHERSNAME`='" + fathername.Text + "',`MOTHERSNAME`='" + mothername.Text + "',`NATIONALITY`='" + nationality.Text + "',`DEPARTMENT`='" + department.SelectedItem.ToString() + "' WHERE `ID`='" + id + "'", databaseconnection);
                command.ExecuteNonQuery();



                MySqlCommand command1 = new MySqlCommand("UPDATE `academic_info` SET `YEAR`='" + sscpass.Text + "',`GRADE`='" + textBoxsscgrade.Text + "',`GROUP`='" + textBoxsscgroup.Text + "',`INST`='" + textBoxsscins.Text + "' WHERE `ID` = '" + id + "' AND `BOARD_EXAM` = 'SSC'", databaseconnection);
                command1.ExecuteNonQuery();
                MySqlCommand command2 = new MySqlCommand("UPDATE `academic_info` SET `YEAR`= '" + textBoxHscpass.Text + "',`GRADE`= '" + textBoxhscgrade.Text + "',`GROUP`= '" + textBoxhscgroup.Text + "',`INST`= '" + textBoxhscins.Text + "' WHERE `ID` = '" + id + "' AND `BOARD_EXAM` = 'HSC'", databaseconnection);
                command2.ExecuteNonQuery();

                if (_title != "STUDENT")
                {
                    MySqlCommand command3 = new MySqlCommand("UPDATE `academic_info` SET `YEAR`= '" + textBoxbscpass.Text + "',`GRADE`= '" + textBoxbscgrade.Text + "',`GROUP`= '" + textBoxbscgroup.Text + "',`INST`= '" + textBoxbscins.Text + "' WHERE `ID` = '" + id + "' AND `BOARD_EXAM` = 'BSC'", databaseconnection);
                    command3.ExecuteNonQuery();
                }

                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            ControlPanel ob = new ControlPanel(_title, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Close();
            ob.Show();
        }
    }
}
