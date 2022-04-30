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
    public partial class STUDENT_ALL_COURSE : Form
    {
        private Panel DESKTOP;
        private string type, id;
        public STUDENT_ALL_COURSE(string type , string id,Panel DESKTOP)
        {

            InitializeComponent();
            try
            {
                this.type = type;
                this.id = id;
                this.DESKTOP = DESKTOP;
                MySqlConnection connection = new MySqlConnection("datasource= localhost;username=root;password=;database=registration");
                connection.Open();
                MySqlCommand command = new MySqlCommand("SELECT * FROM `" + id + "`", connection);
                MySqlDataReader reader = command.ExecuteReader();
                DataTable dt = new DataTable();

                dt.Load(reader);
                dataGridViewstudentallcourse.DataSource = dt;
                dataGridViewstudentallcourse.RowHeadersVisible = false;
                dataGridViewstudentallcourse.Columns["STATUS"].Visible = false;
                dataGridViewstudentallcourse.Columns["RESULT"].Visible = false;
                dataGridViewstudentallcourse.Columns["TEACHERSNAME"].Visible = false;
                dataGridViewstudentallcourse.Columns["SNAME"].Visible = false;
                reader.Close();
                connection.Close();
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void exit_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            StudentAcademicInfo ob = new StudentAcademicInfo(type,id,DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            Dispose();
            ob.Show();
        }
    }
}
