using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class TEACHER_MAINMENU : Form
    {
        private string type, id;
        public TEACHER_MAINMENU(string type,string id)
        {
            InitializeComponent();
            this.type = type;
            this.id = id;
            this.MinimumSize = new Size(1380, 800);

        }

        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            PERSONAL_INFO_SHOW pERSONAL_INFO_SHOW = new PERSONAL_INFO_SHOW("STUDENT", id, DESKTOP,"TEACHER");
            DESKTOP.Controls.Clear();
            pERSONAL_INFO_SHOW.TopLevel = false;
            DESKTOP.Controls.Add(pERSONAL_INFO_SHOW);
            pERSONAL_INFO_SHOW.Dock = DockStyle.Fill;
            pERSONAL_INFO_SHOW.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            pERSONAL_INFO_SHOW.Show();
        }

        private void classes_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            TeacherClasses ob = new TeacherClasses(id);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            TeacherClasses ob = new TeacherClasses(id,"UPDATE");
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            ChangePassword changePassword;
            DESKTOP.Controls.Clear();
            changePassword = new ChangePassword();
            changePassword.TopLevel = false;
            DESKTOP.Controls.Add(changePassword);
            changePassword.Dock = DockStyle.Fill;
            changePassword.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            changePassword.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            Messenger ob = new Messenger(id);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Dispose();
            MainMenu ob = new MainMenu();
            ob.Show();
        }

        private void TEACHER_MAINMENU_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void TPROFILE_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            PERSONAL_INFO_SHOW ob = new PERSONAL_INFO_SHOW(type, id, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }
    }
}
