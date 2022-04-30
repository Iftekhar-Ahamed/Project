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
    public partial class ChangePassword : Form
    {
        private string title;
        public ChangePassword(string tile)
        {
            InitializeComponent();
            this.title = tile;
        }
        public ChangePassword()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string mysqlconnetstring = "datasource= localhost;username=root;password=;database=ums";
                MySqlConnection databaseconnection = new MySqlConnection(mysqlconnetstring);
                databaseconnection.Open();
                MySqlCommand command = new MySqlCommand("select `PASSWORD` FROM `profile` WHERE `ID`='" + ID.Text.ToString() + "'", databaseconnection);
                MySqlDataReader reader = command.ExecuteReader();
                string real = " ";
                while (reader.Read())
                {
                    real = reader.GetString(0);
                }
                reader.Close();
                if (NEWPASS.Text.ToString() == CONFIRM.Text.ToString() && OLDPASS.Text.ToString() == real)
                {
                    command = new MySqlCommand("UPDATE `profile` SET `PASSWORD` = '" + CONFIRM.Text.ToString() + "'  WHERE `ID`='" + ID.Text.ToString() + "'", databaseconnection);
                    command.ExecuteNonQuery();
                }
                else
                {
                    MessageBox.Show("TRY AGIN");
                }
                databaseconnection.Close();

            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            
        }
    }
}
