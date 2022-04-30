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
    public partial class TeacherClasses : Form
    {
        private string id,op="",secid;
        public TeacherClasses(string id)
        {
            InitializeComponent();
            this.id = id;
            SHOWCLASSES();
        }
        public TeacherClasses(string id,string op)
        {
            InitializeComponent();
            this.id = id;
            this.op = op;
            SHOWCLASSES();
        }
        private string getActivesemester (){
            string semester=null;
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
        private void SHOWCLASSES()
        {
            try
            {
                string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `section` WHERE `TID` = '" + id + "'  AND  `SEMESTER` = '" + getActivesemester() + "';", databaseconnection);

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
                dataGridViewALLCLASSES.RowHeadersVisible = false;
                dataGridViewALLCLASSES.Columns[4].Visible = false;
                dataGridViewALLCLASSES.Columns[3].Visible = false;
                dataGridViewALLCLASSES.Columns[2].Visible = false;
                reader.Close();

                databaseconnection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void dataGridViewALLCLASSES_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 0)
            {
                try
                {
                    DataGridViewRow row = this.dataGridViewALLCLASSES.Rows[e.RowIndex];

                    string connectingstring = "datasource= localhost;username=root;password=;database=registration";
                    MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
                    databaseconnection.Open();
                    //MessageBox.Show("SELECT * FROM `section" + row.Cells[1].Value.ToString() + "`");
                    MySqlCommand command = new MySqlCommand("SELECT * FROM `section" + row.Cells[1].Value.ToString() + "`", databaseconnection);

                    secid = row.Cells[1].Value.ToString();
                    label2.Text = "SECTION " + row.Cells[1].Value.ToString() + " STUDENT LIST";
                    
                    MySqlDataReader reader = command.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    dataGridViewSTUDENTLIST.Columns.Clear();
                    dataGridViewSTUDENTLIST.DataSource = dt;
                    if (op == "UPDATE")
                    {
                        DataGridViewButtonColumn btn = new DataGridViewButtonColumn();
                        btn.Text = "UPDATE";
                        btn.HeaderText = "ACTION";
                        btn.Name = "selectstudent";
                        btn.UseColumnTextForButtonValue = true;
                        dataGridViewSTUDENTLIST.Columns.Add(btn);
                    }
                    dataGridViewSTUDENTLIST.RowHeadersVisible = false;
                    reader.Close();
                    databaseconnection.Close();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, " FAILD");
                }
            }
        }

        private void dataGridViewSTUDENTLIST_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex>=0 && op == "UPDATE")
            {
                DataGridViewRow row = this.dataGridViewSTUDENTLIST.Rows[e.RowIndex];
                UPDATEMARK OB =new UPDATEMARK(row.Cells[2].Value.ToString(), row.Cells[1].Value.ToString(), row.Cells[3].Value.ToString(), row.Cells[4].Value.ToString(), row.Cells[0].Value.ToString(),secid);
                OB.Show();
            }
        }
    }
}
