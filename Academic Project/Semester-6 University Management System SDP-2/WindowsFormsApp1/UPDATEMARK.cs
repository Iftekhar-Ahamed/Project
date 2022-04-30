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
    public partial class UPDATEMARK : Form
    {
        private string secid;
        public UPDATEMARK(string assignment,string attendence,string mid,string final,string id,string secid)
        {
            InitializeComponent();
            textBox4.Text = assignment;
            textBox5.Text = attendence;
            textBox2.Text = mid;
            textBox3.Text = final;
            textBox1.Text = id;
            this.secid = secid;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string connectingstring = "datasource= localhost;username=root;password=;database=registration";
            MySqlConnection databaseconnection = new MySqlConnection(connectingstring);
            databaseconnection.Open();

            MySqlCommand command = new MySqlCommand("UPDATE `section" + secid + "`  SET `Attendance` = "+Convert.ToDouble(textBox5.Text.ToString()) + ",`Assignment` = " + Convert.ToDouble(textBox4.Text.ToString()) + ",`MID`= " + Convert.ToDouble(textBox2.Text.ToString()) + ",`FINAL`= " + Convert.ToDouble(textBox3.Text.ToString()) + " WHERE `ID`= " + Convert.ToDouble(textBox1.Text.ToString()) + "", databaseconnection);
            try
            {
                command.ExecuteNonQuery();
            }catch (Exception ex)
            {
                MessageBox.Show(ex.Message, " ERROR ");
            }
            databaseconnection.Close();
        }
    }
}
