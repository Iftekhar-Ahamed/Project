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
    public partial class List : UserControl
    {

       private bool flag = false,edt=false;

        public List(bool b)
        {
            InitializeComponent();
            if(b)
            {
                buttonClose.Visible = true;
                buttonEdit.Visible = true;
            }
            else
            {
                buttonClose.Visible = false;
                buttonEdit.Visible = false;
                
            }

        }

        #region Properties
        private string _title;
        private string _messege;
        private bool _new = false;
        private string _id;

        [Category("Custom Props")]
        public string Title
        {
            get { return _title; }
            set { _title = value; lblTitle.Text = value; }
        }

        [Category("Custom Props")]
        public string Messege
        {
            get { return _messege; }
            set { _messege = value; richTextBox1.Text = value; }
        }

        [Category("Custom Props")]
        public bool NewOrNot
        {
            get { return _new; }
            set { _new = value; }
        }

        [Category("Custom Props")]
        public string ID
        {
            get { return _id; }
            set { _id = value; }
        }

        #endregion

        
            
        private void expndbtn_Click(object sender, EventArgs e)
        {
            if (flag)
            {
                richTextBox1.Height = 40;
                flag = false;
                expndbtn.Text = "Expand";
            }
            else
            {
                richTextBox1.Height = 500;
                flag = true;
                expndbtn.Text = "Hide";
            }
        }

        private void List_Load(object sender, EventArgs e)
        {

        }

        private void buttonClose_MouseLeave(object sender, EventArgs e)
        {
            buttonClose.BackColor = Color.Black;
        }

        private void buttonClose_MouseHover(object sender, EventArgs e)
        {
            buttonClose.BackColor = Color.Red;
        }

        private void buttonClose_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Do you want to delete?", "Delete", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                string conc = "datasource=localhost;username=root;password=;database=ums";
                string cmd = "DELETE FROM `notice` WHERE `notice`.`ID` = '" + _id + "'";

                MySqlConnection conn = new MySqlConnection(conc);
                conn.Open();

                MySqlCommand cmd1 = new MySqlCommand(cmd, conn);
                cmd1.ExecuteNonQuery();
                conn.Close();

                this.Hide();
            }
        }

        private void buttonEdit_Click(object sender, EventArgs e)
        {
            try
            {
                if (edt)
                {
                    DialogResult d = MessageBox.Show("Do you want to save this change?", "Save", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);
                    if (d == DialogResult.Yes)
                    {
                        labelEdit.Visible = false;
                        textBoxEdit.Visible = false;
                        lblTitle.Text = textBoxEdit.Text;
                        richTextBox1.ReadOnly = true;
                        _messege = richTextBox1.Text;
                        buttonEdit.Text = "Edit";

                        string cnt = "datasource=localhost;username=root;password=;database=ums";
                        MySqlConnection conn = new MySqlConnection(cnt);
                        conn.Open();

                        if (_new)
                        {
                            string cmdd = "INSERT INTO `notice` (`ID`, `TITLE`, `DESCRIPTION`) VALUES (null, '" + textBoxEdit.Text + "', '" + richTextBox1.Text + "')";
                            MySqlCommand cmd = new MySqlCommand(cmdd, conn);
                            cmd.ExecuteNonQuery();
                        }
                        else
                        {
                            string cmdd = "UPDATE `notice` SET `TITLE` = '" + textBoxEdit.Text + "', `DESCRIPTION` = '" + richTextBox1.Text + "' WHERE `notice`.`ID` = " + _id;
                            MySqlCommand cmd = new MySqlCommand(cmdd, conn);
                            cmd.ExecuteNonQuery();
                        }
                        conn.Close();
                        edt = false;
                    }
                    else if (d == DialogResult.No)
                    {
                        labelEdit.Visible = false;
                        textBoxEdit.Visible = false;
                        richTextBox1.ReadOnly = true;
                        richTextBox1.Text = _messege;
                        buttonEdit.Text = "Edit";
                        edt = false;
                    }
                    else
                    {

                    }
                }
                else
                {
                    labelEdit.Visible = true;
                    textBoxEdit.Visible = true;
                    textBoxEdit.Text = lblTitle.Text;
                    richTextBox1.ReadOnly = false;
                    buttonEdit.Text = "Save";



                    richTextBox1.Height = 500;
                    flag = true;
                    expndbtn.Text = "Hide";


                    edt = true;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message,"Error");
            }
            
        }
    }
}
