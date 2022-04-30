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
using System.Collections;

namespace WindowsFormsApp1
{
    public partial class Messenger : Form
    {
        private string SenderId, ReceiverId,TableID="";
        private bool NewMsgBtnClicked=false;
        private string NameS, NameR, IdR;
        private ArrayList arrayList;


        private void GetUserName(string rcvr)
        {
            try
            {
                IdR = rcvr;
                string connection = "datasource= localhost;username=root;password=;database=ums";

                MySqlConnection conn = new MySqlConnection(connection);
                conn.Open();
                string cmd1 = "SELECT `FIRST_NAME`,`LAST_NAME` FROM `profile` WHERE `ID`= '" + rcvr + "'";
                MySqlCommand Command = new MySqlCommand(cmd1, conn);
                MySqlDataReader reader = Command.ExecuteReader();
                while (reader.Read())
                {
                    NameR = reader.GetString(0) + " " + reader.GetString(1);
                }
                reader.Close();

                cmd1 = "SELECT `FIRST_NAME`,`LAST_NAME` FROM `profile` WHERE `ID`= '" + SenderId + "'";
                Command = new MySqlCommand(cmd1, conn);
                reader = Command.ExecuteReader();
                while (reader.Read())
                {
                    NameS = reader.GetString(0) + " " + reader.GetString(1);
                }
                reader.Close();
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }

        public Messenger(string user)
        {
            InitializeComponent();
            SenderId = user;

            showIdList();

            // showMsg();

        }
        private string takename(string id)
        {
            string name = " ";
            try
            {
                
                string connection = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection conn = new MySqlConnection(connection);
                conn.Open();
                string cmd1 = "SELECT `FIRST_NAME`,`LAST_NAME` from `profile` WHERE `ID`=" + id;
                MySqlCommand Command = new MySqlCommand(cmd1, conn);
                MySqlDataReader reader = Command.ExecuteReader();
                if (reader.Read())
                {
                    name = reader.GetString(0) + " " + reader.GetString(1);
                }
                reader.Close();
                conn.Close();
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            return name;
        }
        private void showIdList()
        {
            try
            {
                listBoxID.Items.Clear();
                arrayList = new ArrayList();
                string connection = "datasource= localhost;username=root;password=;database=messenger";
                MySqlConnection conn = new MySqlConnection(connection);
                conn.Open();
                string cmd1 = "SELECT `r_ID` from `detector` WHERE `s_ID`=" + SenderId;
                //MessageBox.Show(cmd1);
                MySqlCommand Command = new MySqlCommand(cmd1, conn);
                MySqlDataReader reader = Command.ExecuteReader();

                while (reader.Read())
                {
                    listBoxID.Items.Add(takename(reader.GetString(0)));
                    arrayList.Add(reader.GetString(0));
                }
                reader.Close();
                cmd1 = "SELECT `s_ID` from `detector` WHERE `r_ID`=" + SenderId;
                //MessageBox.Show(cmd1);
                Command = new MySqlCommand(cmd1, conn);
                MySqlDataReader reader1 = Command.ExecuteReader();

                while (reader1.Read())
                {
                    listBoxID.Items.Add(takename(reader1.GetString(0)));
                    arrayList.Add(reader1.GetString(0));
                }
                reader.Close();

                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void TableIdGet(string sender,string receiver)
        {
            string tableID = null;
            string connection = "datasource= localhost;username=root;password=;database=messenger";
            MySqlConnection conn = new MySqlConnection(connection);
            conn.Open();
            string cmd1 = "SELECT `table_ID` FROM `detector` WHERE (`s_ID`= "+sender+" AND `r_ID`= "+receiver+") OR (`s_ID`= "+receiver+" AND `r_ID`= "+sender+")";
            MySqlCommand Command = new MySqlCommand(cmd1, conn);
            MySqlDataReader reader = Command.ExecuteReader();
            
            while(reader.Read())
            {
                tableID = reader.GetString(0);
            }
            reader.Close();
            if (tableID == null)
            {
                cmd1 = "INSERT INTO `detector` (`s_ID`, `r_ID`, `table_ID`) VALUES ('" + sender + "', '" + receiver + "', NULL)";
                Command = new MySqlCommand(cmd1, conn);
               Command.ExecuteNonQuery();

                cmd1 = "SELECT `table_ID` FROM `detector` WHERE (`s_ID`= " + sender + " AND `r_ID`= " + receiver + ") OR (`s_ID`= " + receiver + " AND `r_ID`= " + sender + ")";
                Command = new MySqlCommand(cmd1, conn);
                reader = Command.ExecuteReader();
                while (reader.Read())
                {
                    tableID = reader.GetString(0);
                }   
                reader.Close();
                
                TableID = tableID;

                cmd1 = "CREATE TABLE `"+TableID+"`( `message` TEXT(40000), `sender` INT(20) );";
                Command = new MySqlCommand(cmd1, conn);
                Command.ExecuteNonQuery();

            }
            else
            {
                TableID = tableID;
            }

            conn.Close();
        }
        private void showMsg()
        {
            try
            {
                richTextBoxmsg.Clear();
                string connection = "datasource= localhost;username=root;password=;database=messenger";
                MySqlConnection conn = new MySqlConnection(connection);
                conn.Open();
                string cmd1 = "SELECT * FROM `" + TableID + "`";
                MySqlCommand Command = new MySqlCommand(cmd1, conn);
                MySqlDataReader reader = Command.ExecuteReader();
                // dt.Load(reader);
                // msgbody.DataSource = dt;

                string prev_username = "";


                while (reader.Read())
                {
                    string msg = reader.GetString(0);
                    string sender = reader.GetString(1);

                    FontFamily family = new FontFamily("Microsoft Tai Le");
                    Font nf = new Font(family, 15.0f, FontStyle.Bold);
                    Font nf2 = new Font(family, 14.0f, FontStyle.Regular);
                    if (sender == SenderId)
                    {
                        if (prev_username != sender)
                        {
                            richTextBoxmsg.SelectionFont = nf;
                            richTextBoxmsg.SelectionColor = Color.Black;
                            richTextBoxmsg.SelectedText = Environment.NewLine + NameS;
                        }
                        richTextBoxmsg.SelectionFont = nf2;
                        richTextBoxmsg.SelectionColor = Color.Black;
                        richTextBoxmsg.SelectedText = Environment.NewLine + msg;
                        prev_username = sender;
                    }
                    else
                    {
                        if (prev_username != sender)
                        {
                            richTextBoxmsg.SelectionFont = nf;
                            richTextBoxmsg.SelectionColor = Color.Black;
                            richTextBoxmsg.SelectedText = Environment.NewLine + NameR;
                        }
                        richTextBoxmsg.SelectionFont = nf2;
                        richTextBoxmsg.SelectionColor = Color.Black;
                        richTextBoxmsg.SelectedText = Environment.NewLine + msg;
                        prev_username = sender;
                    }
                    richTextBoxmsg.SelectedText = Environment.NewLine;
                }

                //listBoxmsg.SelectedIndex = listBoxmsg.Items.Count - 1;
                richTextBoxmsg.ScrollToCaret();
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
                
        private void newMsgBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (NewMsgBtnClicked)
                {
                    ReceiverId = NewMsgTo.Text;
                    TableIdGet(SenderId, ReceiverId);

                    string connection = "datasource= localhost;username=root;password=;database=messenger";
                    MySqlConnection conn = new MySqlConnection(connection);
                    conn.Open();

                    string cmd1 = "INSERT INTO `" + TableID + "` (`message`, `sender`) VALUES ('" + richTextBoxNewMsg.Text + "', '" + SenderId + "')";
                    MySqlCommand Command = new MySqlCommand(cmd1, conn);
                    Command.ExecuteNonQuery();

                    GetUserName(ReceiverId);
                    richTextBoxNewMsg.Clear();
                    NewMsgTo.Clear();
                    showMsg();

                    panelNewMsg.Visible = false;
                    NewMsgBtnClicked = false;
                    newMsgBtn.Text = "New Messege";
                    listBoxID.Items.Add(ReceiverId);
                    showIdList();
                }
                else
                {
                    panelNewMsg.Visible = true;
                    newMsgBtn.Text = "Send";
                    NewMsgBtnClicked = true;
                }
            } catch (Exception ex)
            {
                MessageBox.Show("ENTER RECIVER ID AND MESSAGE PROPERLY", "ERROR");
            }
        }

        private void richTextBoxmsg_TextChanged(object sender, EventArgs e)
        {

        }

        private void richTextBoxNewMsg_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void NewMsgExitBtn_Click(object sender, EventArgs e)
        {
            panelNewMsg.Visible = false;
            newMsgBtn.Text = "New Messege";
            NewMsgBtnClicked = false;
        }

        private void refreshBtn_Click(object sender, EventArgs e)
        {
            if (TableID != "")
            {
                showMsg();
            }
            showIdList();
        }

        private void buttonSend_Click(object sender, EventArgs e)
        {
            try
            {
                string connection = "datasource= localhost;username=root;password=;database=messenger";
                MySqlConnection conn = new MySqlConnection(connection);
                conn.Open();

                string cmd1 = "INSERT INTO `" + TableID + "` (`message`, `sender`) VALUES ('" + textBoxMsg.Text + "', '" + SenderId + "')";
                MySqlCommand Command = new MySqlCommand(cmd1, conn);
                Command.ExecuteNonQuery();
                conn.Close();
                textBoxMsg.Clear();
                showMsg();
            }catch (Exception ex)
            {
                MessageBox.Show("NOTHING FOR SEND","ERROR");
            }
            
        }

        private void listBoxID_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (listBoxID.Text.ToString() != "")
            {
                int i = listBoxID.SelectedIndex;
                var x = arrayList[i];
                ReceiverId = x.ToString();
                TableIdGet(SenderId, ReceiverId);
                GetUserName(ReceiverId);
                showMsg();
            }
        }
    }
}
