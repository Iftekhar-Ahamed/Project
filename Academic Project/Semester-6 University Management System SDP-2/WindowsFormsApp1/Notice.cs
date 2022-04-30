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
    public partial class Notice : Form
    {
        private bool check;
        public Notice(string chek)
        {
            InitializeComponent();

            if (chek == "admin")
                check = true;
            else
            {
                check = false;
                button1.Visible = false;
            }

            populateItem();


        }

        private void populateItem()
        {
            try
            {
                List[] list = new List[20];
                flowLayoutPanel1.Controls.Clear();
                string conns = "datasource=localhost;username=root;password=;database=ums";
                string commnd = "SELECT * FROM `notice`";
                MySqlConnection conn = new MySqlConnection(conns);

                conn.Open();
                MySqlCommand cmd = new MySqlCommand(commnd, conn);
                MySqlDataReader reader = cmd.ExecuteReader();
                int i = 0;
                while (reader.Read())
                {
                    list[i] = new List(check);
                    list[i].ID = reader.GetString(0);
                    list[i].Title = reader.GetString(1);
                    list[i].Messege = reader.GetString(2);
                    list[i].Anchor = AnchorStyles.Top;
                    list[i].Anchor = AnchorStyles.Left;
                    list[i].Anchor = AnchorStyles.Right;
                    //list[i].Anchor = AnchorStyles.Bottom;
                    list[i].AutoSize = true;


                    flowLayoutPanel1.Controls.Add(list[i]);
                    i++;
                }
                conn.Close();
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "Error");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List list = new List(check);

            list.Title = "Type title here";
            list.Messege = "Type notice here";
            list.NewOrNot = true;

            list.Anchor = AnchorStyles.Top;
            list.Anchor = AnchorStyles.Left;
            list.Anchor = AnchorStyles.Right;
            //list[i].Anchor = AnchorStyles.Bottom;
            list.AutoSize = true;


            flowLayoutPanel1.Controls.Add(list);
        }

        private void Notice_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (check)
            {
                Application.Exit();
            }
            else
            {
                MainMenu mainMenu = new MainMenu();
                Dispose();
                mainMenu.Show();
            }

        }

        private void Notice_Load(object sender, EventArgs e)
        {

        }
    }
}
