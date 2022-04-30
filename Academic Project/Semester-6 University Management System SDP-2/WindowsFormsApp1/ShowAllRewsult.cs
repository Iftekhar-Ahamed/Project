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
    public partial class ShowAllRewsult : Form
    {
        private Panel DESKTOP;
        private string id;
        public ShowAllRewsult(string id ,Panel DESKTOP)
        {
            InitializeComponent();
            this.DESKTOP = DESKTOP;
            this.id = id;
            initCombobox();
        }
        private void initCombobox()
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT `SNAME` FROM `"+id+"` GROUP BY `SNAME`;", connection);
                MySqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    MessageBox.Show("hi");
                    if (!reader.IsDBNull(0) && reader.GetString(0) != " ")
                    {
                        selectsemester.Items.Add(reader.GetString(0));
                    }
                    
                }
                reader.Close();
                connection.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message+"init");
            }

        }



        private void selectsemester_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            try
            {
                if (selectsemester.SelectedItem.ToString() != " ")
                {
                    MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                    connection.Open();
                    MySqlCommand command = new MySqlCommand("SELECT `COURSE_NAME`,`COURSE_CODE`,`PREREQUISITE`,`CREDIT`,`RESULT`,`TEACHERSNAME` FROM `"+id+"` WHERE `SNAME`= '" + selectsemester.SelectedItem.ToString() + "'", connection);
                    MySqlDataReader reader = command.ExecuteReader();

                    DataTable dt = new DataTable();
                    dt.Load(reader);
                    result.DataSource = dt;

                    reader.Close();
                    connection.Close();
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            StudentAcademicInfo ob = new StudentAcademicInfo("STUDENT", id, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            Dispose();
            ob.Show();
        }
    }
}
