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
    public partial class ADMIN_MENU : Form
    {
        AdminAcademicControlPanel adminAcademicControlPanel;
        ChangePassword changePassword;
        ControlPanel controlPanel;
        Messenger messenger;
        Notice notice;
        private string id;

        public ADMIN_MENU(string id)
        {
            InitializeComponent();
            this.MinimumSize = new Size(1380, 800);
            this.id = id;
        }

        private void ADMIN_MENU_Load(object sender, EventArgs e)
        {

        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }


            DESKTOP.Controls.Clear();
            ControlPanel ob = new ControlPanel("EMPLOYEE", DESKTOP);

            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }



        private void ADMIN_MENU_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void STUDENT_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }

            DESKTOP.Controls.Clear();
            controlPanel = new ControlPanel("STUDENT", DESKTOP);

            controlPanel.TopLevel = false;
            DESKTOP.Controls.Add(controlPanel);
            controlPanel.Dock = DockStyle.Fill;
            controlPanel.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            controlPanel.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }

            DESKTOP.Controls.Clear();
            ControlPanel ob = new ControlPanel("TEACHER", DESKTOP);

            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            ob.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }

            DESKTOP.Controls.Clear();
            adminAcademicControlPanel = new AdminAcademicControlPanel(DESKTOP);
            adminAcademicControlPanel.TopLevel = false;
            DESKTOP.Controls.Add(adminAcademicControlPanel);
            adminAcademicControlPanel.Dock = DockStyle.Fill;
            adminAcademicControlPanel.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            adminAcademicControlPanel.Show();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }


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
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }
            if (notice != null)
            {
                notice.Dispose(); ;
            }

            DESKTOP.Controls.Clear();
            notice = new Notice("admin");
            notice.TopLevel = false;
            DESKTOP.Controls.Add(notice);
            notice.Dock = DockStyle.Fill;
            notice.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            notice.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (changePassword != null)
            {
                changePassword.Dispose(); ;
            }
            if (controlPanel != null)
            {
                controlPanel.Dispose(); ;
            }
            if (adminAcademicControlPanel != null)
            {
                adminAcademicControlPanel.Dispose(); ;
            }
            if (messenger != null)
            {
                messenger.Dispose(); ;
            }

            DESKTOP.Controls.Clear();
            messenger = new Messenger(id);
            messenger.TopLevel = false;
            DESKTOP.Controls.Add(messenger);

            messenger.Dock = DockStyle.Fill;
            messenger.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            messenger.Show();
        }

        private void button7_Click(object sender, EventArgs e)
        {
            MainMenu mainMenu = new MainMenu();
            Dispose();
            mainMenu.Show();
        }
    }
}
