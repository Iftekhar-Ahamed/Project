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
    public partial class PublishResult : Form
    {
        private string secid;
        private Panel DESKTOP;
        bool f = true;
        public PublishResult(Panel DE)
        {
            InitializeComponent();
            SHOWCLASSES();
            this.DESKTOP = DE;
        }

        private string getActivesemester()
        {
            string semester = null;
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `SEMESTERNAME` FROM `SNAME` WHERE `STATUS` = 1", connection);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    semester = reader.GetString(0);
                }
                reader.Close();
                connection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            return semester;
        }
        private void updatesection(string s)
        {
            
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("UPDATE `section` SET `STATUS` = 1 WHERE `ID` = '"+s+"'", connection);
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private string getteachername(string id)
        {
            string name = null;
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=ums");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `FIRST_NAME`,`LAST_NAME` FROM `profile` WHERE `ID` = '" + id+"'", connection);
                MySqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    name = reader.GetString(0)+" "+ reader.GetString(1);
                }
                reader.Close();
                connection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            return name;
        }

        private void SHOWCLASSES()
        {
            string connectingstring = "datasource= localhost;username=root;password=;database=registration";
            MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
            databaseconnection.Open();
            MySqlCommand command = new MySqlCommand("SELECT * FROM `section` WHERE `SEMESTER` = '" + getActivesemester() + "' AND `STATUS`=0;", databaseconnection);

            MySqlDataReader reader = command.ExecuteReader();

            DataTable dt = new DataTable();
            dt.Load(reader);
            dataGridViewALLCLASSES.DataSource = dt;


                DataGridViewButtonColumn btn = new DataGridViewButtonColumn();
                btn.Text = "SELECT";
                btn.HeaderText = "ACTION";
                btn.Name = "selectsction";
                btn.UseColumnTextForButtonValue = true;
                dataGridViewALLCLASSES.Columns.Add(btn);

                btn = new DataGridViewButtonColumn();
                btn.Text = "PUBLISH";
                btn.HeaderText = "ACTION";
                btn.Name = "publish";
                btn.UseColumnTextForButtonValue = true;
                dataGridViewALLCLASSES.Columns.Add(btn);
                f = false;
            
            

            dataGridViewALLCLASSES.RowHeadersVisible = false;
            dataGridViewALLCLASSES.Columns[1].Visible = false;
            dataGridViewALLCLASSES.Columns[2].Visible = false;
            dataGridViewALLCLASSES.Columns[4].Visible = false;
            reader.Close();

            databaseconnection.Close();
        }
        private void updateresult(double total,string id,string tname,string sname,string ccode) 
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("UPDATE `"+id+"` SET `STATUS` = '1', `RESULT` = '"+total+"', `TEACHERSNAME` = '"+tname+"', `SNAME` = '"+sname+"' WHERE `"+id+"`.`COURSE_CODE` = '"+ccode+"';", databaseconnection);
                command.ExecuteNonQuery();
                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
        private void dataGridViewALLCLASSES_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            //MessageBox.Show(e.ColumnIndex.ToString());
            if (e.ColumnIndex == 0)
            {
                try
                {
                    DataGridViewRow row = this.dataGridViewALLCLASSES.Rows[e.RowIndex];

                    string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                    MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                    databaseconnection.Open();
                    //MessageBox.Show("SELECT * FROM `section" + row.Cells[1].Value.ToString() + "`");
                    MySqlCommand command = new MySqlCommand("SELECT * FROM `section" + row.Cells[2].Value.ToString() + "`", databaseconnection);

                    secid = row.Cells[1].Value.ToString();
                    label2.Text = "SECTION " + row.Cells[2].Value.ToString() + " STUDENT LIST";

                    MySqlDataReader reader = command.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    dataGridViewSTUDENTLIST.Columns.Clear();
                    dataGridViewSTUDENTLIST.DataSource = dt;
                    dataGridViewSTUDENTLIST.RowHeadersVisible = false;
                    reader.Close();
                    databaseconnection.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, " FAILD");
                }
            }else if (e.ColumnIndex == 1)
            {
                try
                {
                    DataGridViewRow row = this.dataGridViewALLCLASSES.Rows[e.RowIndex];

                    string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                    MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                    databaseconnection.Open();
                    //MessageBox.Show("SELECT * FROM `section" + row.Cells[1].Value.ToString() + "`");
                    MySqlCommand command = new MySqlCommand("SELECT * FROM `section" + row.Cells[2].Value.ToString() + "`", databaseconnection);

                    secid = row.Cells[2].Value.ToString();
                    label2.Text = "SECTION " + row.Cells[2].Value.ToString() + " STUDENT LIST";

                    MySqlDataReader reader = command.ExecuteReader();
                    
                    while (reader.Read())
                    {
                        updateresult(Convert.ToDouble(reader.GetString(1))+ Convert.ToDouble(reader.GetString(2))+ Convert.ToDouble(reader.GetString(3))+Convert.ToDouble(reader.GetString(4)), reader.GetString(0),getteachername( row.Cells[4].Value.ToString() ), getActivesemester(),row.Cells[3].Value.ToString());
                        
                    }
                    updatesection(row.Cells[2].Value.ToString());
                    reader.Close();
                    databaseconnection.Close();
                    dataGridViewALLCLASSES.Rows.RemoveAt(e.RowIndex);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, " FAILD");
                }
            }
        }

    }
}
