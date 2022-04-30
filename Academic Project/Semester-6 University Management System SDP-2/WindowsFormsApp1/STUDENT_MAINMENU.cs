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
    public partial class STUDENT_MAINMENU : Form
    {
        private string id,type;
        public STUDENT_MAINMENU(string id,string type)
        {
            InitializeComponent();
            this.id = id;
            this.type = type;
            this.MinimumSize = new Size(1380, 800);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            StudentAcademicInfo ob = new StudentAcademicInfo(type, id, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void STUDENT_MAINMENU_Load(object sender, EventArgs e)
        {

        }

        private void registration_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            SemesterRegistration ob = new SemesterRegistration(type, id, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            Messenger messenger = new Messenger(id);
            messenger.TopLevel = false;
            DESKTOP.Controls.Add(messenger);

            messenger.Dock = DockStyle.Fill;
            messenger.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            messenger.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            ChangePassword ob = new ChangePassword(id);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            Dispose();
            mainMenu.Show();
        }

        private void STUDENT_MAINMENU_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void buttonprofile_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            PERSONAL_INFO_SHOW ob = new PERSONAL_INFO_SHOW(type,id, DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }
    }
}
