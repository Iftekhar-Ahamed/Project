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
    public partial class PERSONAL_INFO_SHOW : Form
    {
        private string type, id;
        Panel DESKTOP;
        public PERSONAL_INFO_SHOW(string type,string id, Panel DESKTOP,string from)
        {
            InitializeComponent();
            this.type = type; 
            this.id = id;
            this.DESKTOP = DESKTOP;
            if (from == "TEACHER")
            {
                button1.Visible = false;
            }
            else if (from == "DELETE")
            {
                buttonDELETE.Visible = true;
            }
            else
            {
                buttonDELETE.Visible = false;
            }
        }
        public PERSONAL_INFO_SHOW(string type, string id, Panel DESKTOP)
        {
            InitializeComponent();
            
            this.type = type;
            this.id = id;
            this.DESKTOP = DESKTOP;
            panel1.Visible = false;
            panelshowdata.Visible = true;
            panelshowdata.Dock = DockStyle.Fill;

            showpersonaldata();
        }

        private void PERSONAL_INFO_SHOW_Load(object sender, EventArgs e)
        {

            
        }
        private void cleartxtpanel(Panel panel)
        {
           foreach (Control p in panel.Controls)
             if (p is TextBox)
             {
                p.Text = "";
             }
        }
        private void showpersonaldata()
        {
            try
            {
                groupBoxGRA.Visible = false;
                cleartxtpanel(panelshowdata);
                MySqlConnection sqlconnect = new MySqlConnection("datasource= localhost;username=root;password=;database=ums");
                sqlconnect.Open();
                string cmd1s = "SELECT * FROM `profile` WHERE `ID` = " + id + " AND `USERTYPE` = '" + type + "'";
                MySqlCommand cmd1 = new MySqlCommand(cmd1s, sqlconnect);
                MySqlDataReader reader = cmd1.ExecuteReader();

                if (reader.Read())
                {
                    name.Text = reader.GetString(1) + " " + reader.GetString(2);
                    gender.Text = reader.GetString(3);
                    dob.Value = Convert.ToDateTime(reader.GetString(10));
                    //dob.Text = reader.GetString(10);
                    adress.Text = reader.GetString(4);
                    bloodgroup.Text = reader.GetString(9);
                    phone1.Text = reader.GetString(5);
                    phone2.Text = reader.GetString(6);
                    fathername.Text = reader.GetString(12);
                    mothername.Text = reader.GetString(13);
                    nidbc.Text = reader.GetString(7) + " " + reader.GetString(8);
                    email.Text = reader.GetString(11);
                    nationality.Text = reader.GetString(14);
                    dept.Text = reader.GetString(16);
                    reader.Close();

                    string cmd2s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'SSC'";
                    string cmd3s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'HSC'";
                    string cmd4s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'BSC'";
                    MySqlCommand cmd2 = new MySqlCommand(cmd2s, sqlconnect);
                    MySqlCommand cmd3 = new MySqlCommand(cmd3s, sqlconnect);
                    MySqlCommand cmd4 = new MySqlCommand(cmd4s, sqlconnect);

                    MySqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read() == true)
                    {
                        //academic information show
                        sscyear.Text = reader2.GetString(2);
                        sscgpa.Text = reader2.GetString(3);
                        sscgroup.Text = reader2.GetString(4);
                        sscinstitute.Text = reader2.GetString(5);
                    }
                    else
                    {
                        MessageBox.Show("No Data Found");
                    }
                    reader2.Close();
                    MySqlDataReader reader3 = cmd3.ExecuteReader();
                    if (reader3.Read() == true)
                    {
                        hscyear.Text = reader3.GetString(2);
                        hscgpa.Text = reader3.GetString(3);
                        hscgroup.Text = reader3.GetString(4);
                        hscinstitue.Text = reader3.GetString(5);
                    }
                    else
                    {
                        MessageBox.Show("No Data Found");
                    }
                    reader3.Close();



                    if (type == "STUDENT")
                    {
                        string cmd5s = "SELECT `INTAKEID` FROM `intake` WHERE `STUDENTID` = '" + id + "'";
                        MySqlCommand cmd5 = new MySqlCommand(cmd5s, sqlconnect);
                        MySqlDataReader reader5 = cmd5.ExecuteReader();
                        if (reader5.Read())
                        {
                            intake.Text = reader5.GetString(0);
                        }
                        reader5.Close();

                    }
                    else
                    {
                        label9.Visible = false;
                        intake.Visible = false;
                        groupBoxGRA.Visible = true;
                        MySqlDataReader reader4 = cmd4.ExecuteReader();
                        if (reader4.Read() == true)
                        {
                            hnsyear.Text = reader4.GetString(2);
                            hougpa.Text = reader4.GetString(3);
                            hnsgroup.Text = reader4.GetString(4);
                            honsinstitute.Text = reader4.GetString(5);
                        }
                        else
                        {
                            MessageBox.Show("No Data Found");
                        }
                        reader4.Close();
                    }
                }
                else
                {
                    MessageBox.Show("No Data Found");
                }
                sqlconnect.Close();
                panelshowdata.Visible = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void buttonselectid_Click(object sender, EventArgs e)
        {
            try
            {
                id = textBoxid.Text.ToString();
                groupBoxGRA.Visible = false;
                cleartxtpanel(panelshowdata);
                MySqlConnection sqlconnect = new MySqlConnection("datasource= localhost;username=root;password=;database=ums");
                sqlconnect.Open();
                string cmd1s = "SELECT * FROM `profile` WHERE `ID` = " + id + " AND `USERTYPE` = '" + type + "'";
                MySqlCommand cmd1 = new MySqlCommand(cmd1s, sqlconnect);
                MySqlDataReader reader = cmd1.ExecuteReader();

                if (reader.Read())
                {
                    name.Text = reader.GetString(1) + " " + reader.GetString(2);
                    gender.Text = reader.GetString(3);
                    dob.Value = Convert.ToDateTime(reader.GetString(10));
                    //dob.Text = reader.GetString(10);
                    adress.Text = reader.GetString(4);
                    bloodgroup.Text = reader.GetString(9);
                    phone1.Text = reader.GetString(5);
                    phone2.Text = reader.GetString(6);
                    fathername.Text = reader.GetString(12);
                    mothername.Text = reader.GetString(13);
                    nidbc.Text = reader.GetString(7) + " " + reader.GetString(8);
                    email.Text = reader.GetString(11);
                    nationality.Text = reader.GetString(14);
                    dept.Text = reader.GetString(16);
                    reader.Close();

                    string cmd2s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'SSC'";
                    string cmd3s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'HSC'";
                    string cmd4s = "SELECT * FROM `academic_info` WHERE `ID` = " + id.ToString() + " and `BOARD_EXAM` = 'BSC'";
                    MySqlCommand cmd2 = new MySqlCommand(cmd2s, sqlconnect);
                    MySqlCommand cmd3 = new MySqlCommand(cmd3s, sqlconnect);
                    MySqlCommand cmd4 = new MySqlCommand(cmd4s, sqlconnect);

                    MySqlDataReader reader2 = cmd2.ExecuteReader();
                    if (reader2.Read() == true)
                    {
                        //academic information show
                        sscyear.Text = reader2.GetString(2);
                        sscgpa.Text = reader2.GetString(3);
                        sscgroup.Text = reader2.GetString(4);
                        sscinstitute.Text = reader2.GetString(5);
                    }
                    else
                    {
                        MessageBox.Show("No Data Found");
                    }
                    reader2.Close();
                    MySqlDataReader reader3 = cmd3.ExecuteReader();
                    if (reader3.Read() == true)
                    {
                        hscyear.Text = reader3.GetString(2);
                        hscgpa.Text = reader3.GetString(3);
                        hscgroup.Text = reader3.GetString(4);
                        hscinstitue.Text = reader3.GetString(5);
                    }
                    else
                    {
                        MessageBox.Show("No Data Found");
                    }
                    reader3.Close();



                    if (type == "STUDENT")
                    {

                        string cmd5s = "SELECT `INTAKEID` FROM `intake` WHERE `STUDENTID` = '" + id + "'";
                        MySqlCommand cmd5 = new MySqlCommand(cmd5s, sqlconnect);
                        MySqlDataReader reader5 = cmd5.ExecuteReader();
                        if (reader5.Read())
                        {
                            intake.Text = reader5.GetString(0);
                        }
                        reader5.Close();

                    }
                    else
                    {
                        label9.Visible = false;
                        intake.Visible = false;
                        groupBoxGRA.Visible = true;
                        MySqlDataReader reader4 = cmd4.ExecuteReader();
                        if (reader4.Read() == true)
                        {
                            hnsyear.Text = reader4.GetString(2);
                            hougpa.Text = reader4.GetString(3);
                            hnsgroup.Text = reader4.GetString(4);
                            honsinstitute.Text = reader4.GetString(5);
                        }
                        else
                        {
                            MessageBox.Show("No Data Found");
                        }
                        reader4.Close();
                    }
                }
                else
                {
                    MessageBox.Show("No Data Found");
                }
                sqlconnect.Close();
                panelshowdata.Visible = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {

                DESKTOP.Controls.Clear();
                ControlPanel ob = new ControlPanel(type, DESKTOP);
                ob.TopLevel = false;
                DESKTOP.Controls.Add(ob);
                ob.Dock = DockStyle.Fill;
                ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
                this.Close();
                ob.Show();
        }

        private void buttonDELETE_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection sqlconnect = new MySqlConnection("datasource= localhost;username=root;password=;database=ums");
                sqlconnect.Open();
                string cmd1s = "DELETE  FROM `profile` WHERE `ID` = " + id + " AND `USERTYPE` = '" + type + "'";
                MySqlCommand cmd1 = new MySqlCommand(cmd1s, sqlconnect);
                cmd1.ExecuteNonQuery();
                sqlconnect.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        
    }
}
