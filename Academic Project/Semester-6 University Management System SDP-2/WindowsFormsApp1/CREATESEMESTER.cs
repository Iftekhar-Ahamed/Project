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
    public partial class CREATESEMESTER : Form
    {
        private Panel DESKTOP;
        public CREATESEMESTER(Panel DESKTOP)
        {
            InitializeComponent();
            comboBoxSTATUS.Items.Add("ON");
            comboBoxSTATUS.Items.Add("OFF");
            this.DESKTOP = DESKTOP;
            refreshsemesterbox();
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
        private void buttonaddsemester_Click(object sender, EventArgs e)
        {
            ResetAll(groupBoxaddeditsemester);
            groupBoxaddeditsemester.Text = "ADD SEMESTER";
            sname.ReadOnly = false;
            maxcredit.ReadOnly = false;
            STATUS.Visible = false;
            comboBoxSTATUS.Visible = false;
            groupBoxaddeditsemester.Visible = true;
            action.Text = "ADD";
            selectsemester.Visible = false;
            comboBoxselectsemster.Visible = false;
            refreshsemesterbox();
        }
        private void refreshsemesterbox()
        {
            try
            {
                comboBoxselectsemster.Items.Clear();
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `SNAME`", connection);
                MySqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    comboBoxselectsemster.Items.Add(reader.GetString(0));
                }
                reader.Close();
                connection.Close();
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void buttoneditsemester_Click(object sender, EventArgs e)
        {
            ResetAll(groupBoxaddeditsemester);
            groupBoxaddeditsemester.Text = "ON/OFF STATUS";
            sname.ReadOnly = true;
            maxcredit.ReadOnly = true;
            STATUS.Visible = true;
            comboBoxSTATUS.Visible = true;
            groupBoxaddeditsemester.Visible = true;
            action.Text = "UPDATE";
            selectsemester.Visible = true;
            comboBoxselectsemster.Visible = true;

            refreshsemesterbox();
        }
        private void updateintake()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=ums");
                connection.Open();
                MySqlCommand command = new MySqlCommand("select MAX(`INTAKEID`) from `intake`;", connection);
                MySqlDataReader reader = command.ExecuteReader();
                int intake=0;
                if (reader.Read())
                {
                    intake = reader.GetInt32(0);
                }
                connection.Close();
                reader.Close();
                connection.Open();
                string s = Convert.ToString(intake+1);
                command = new MySqlCommand("INSERT INTO `intake`(`INTAKEID`,`STUDENTID`)VALUES("+s+",1)", connection);
                command.ExecuteNonQuery();
                connection.Close ();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void action_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();

                if (action.Text == "ADD")
                {
                    MySqlCommand command = new MySqlCommand("INSERT INTO `sname`(`SEMESTERNAME`,`STATUS`,`MAXCREDIT`)VALUES('" + sname.Text + "',0,'" + Convert.ToDouble(maxcredit.Text.ToString()) + "')", connection);
                    updateintake();
                    command.ExecuteNonQuery();
                }
                else
                {
                    int s = 0;
                    if (comboBoxSTATUS.SelectedItem.ToString() == "ON")
                    {
                        s = 1;
                    }
                    //MessageBox.Show("UPDATE `sname` SET `STATUS`=" + s + " WHERE `SEMESTERNAME`='" + comboBoxselectsemster.SelectedItem.ToString() + "'");
                    MySqlCommand command = new MySqlCommand("UPDATE `sname` SET `STATUS`=" + s + " WHERE `SEMESTERNAME`='" + comboBoxselectsemster.SelectedItem.ToString() + "'", connection);
                    command.ExecuteNonQuery();
                }
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
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

        private void comboBoxselectsemster_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (comboBoxselectsemster.SelectedItem!= null)
                {
                    MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                    connection.Open();
                    MySqlCommand command = new MySqlCommand("SELECT * FROM `SNAME` WHERE `SEMESTERNAME`='" + comboBoxselectsemster.SelectedItem.ToString() + "'", connection);
                    MySqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        //MessageBox.Show("here");
                        sname.Text = reader.GetString(0);
                        maxcredit.Text = reader.GetString(2);
                        if (reader.GetString(1) == "1")
                        {
                            comboBoxSTATUS.SelectedItem = "ON";
                        }
                        else
                        {
                            comboBoxSTATUS.SelectedItem = "OFF";
                        }
                    }
                    reader.Close();
                    connection.Close();
                }
                
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
    }
}
