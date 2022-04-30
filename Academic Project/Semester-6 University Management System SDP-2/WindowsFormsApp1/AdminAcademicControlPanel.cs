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
    public partial class AdminAcademicControlPanel : Form
    {
        private Panel DESKTOP;
        private Department department;
        private CREATESEMESTER cREATESEMESTER;
        private CREATE_SECTION cREATE_SECTION;
        
        CREATEOREDITCARICULAM cREATEOREDITCARICULAM;

        public AdminAcademicControlPanel(Panel DESKTOP)
        {
            InitializeComponent();
            this.DESKTOP = DESKTOP;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (cREATEOREDITCARICULAM != null)
            {
                cREATEOREDITCARICULAM.Dispose();
            }
            if (department != null)
            {
                department.Dispose();
            }
            if (cREATESEMESTER != null)
            {
                cREATESEMESTER.Dispose();
            }
            if (cREATE_SECTION != null)
            {
                cREATE_SECTION.Dispose();
            }


            DESKTOP.Controls.Clear();
            department = new Department(DESKTOP);

            department.TopLevel = false;
            DESKTOP.Controls.Add(department);
            department.Dock = DockStyle.Fill;
            department.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            department.Show();
            this.Dispose();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (cREATEOREDITCARICULAM != null)
            {
                cREATEOREDITCARICULAM.Dispose();
            }
            if (department != null)
            {
                department.Dispose();
            }
            if (cREATESEMESTER != null)
            {
                cREATESEMESTER.Dispose();
            }
            if (cREATE_SECTION != null)
            {
                cREATE_SECTION.Dispose();
            }

            DESKTOP.Controls.Clear();
            cREATEOREDITCARICULAM = new CREATEOREDITCARICULAM(DESKTOP);

            cREATEOREDITCARICULAM.TopLevel = false;
            DESKTOP.Controls.Add(cREATEOREDITCARICULAM);
            cREATEOREDITCARICULAM.Dock = DockStyle.Fill;
            cREATEOREDITCARICULAM.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            cREATEOREDITCARICULAM.Show();
            this.Dispose();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (cREATEOREDITCARICULAM != null)
            {
                cREATEOREDITCARICULAM.Dispose();
            }
            if (department != null)
            {
                department.Dispose();
            }
            if (cREATESEMESTER != null)
            {
                cREATESEMESTER.Dispose();
            }
            if (cREATE_SECTION != null)
            {
                cREATE_SECTION.Dispose();
            }
            DESKTOP.Controls.Clear();
            cREATESEMESTER = new CREATESEMESTER(DESKTOP);

            cREATESEMESTER.TopLevel = false;
            DESKTOP.Controls.Add(cREATESEMESTER);
            cREATESEMESTER.Dock = DockStyle.Fill;
            cREATESEMESTER.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            cREATESEMESTER.Show();
            this.Dispose();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if (cREATEOREDITCARICULAM != null)
            {
                cREATEOREDITCARICULAM.Dispose();
            }
            if (department != null)
            {
                department.Dispose();
            }
            if (cREATESEMESTER != null)
            {
                cREATESEMESTER.Dispose();
            }
            if (cREATE_SECTION != null)
            {
                cREATE_SECTION.Dispose();
            }
            DESKTOP.Controls.Clear();
            cREATE_SECTION = new CREATE_SECTION(DESKTOP);

            cREATE_SECTION.TopLevel = false;
            DESKTOP.Controls.Add(cREATE_SECTION);
            cREATE_SECTION.Dock = DockStyle.Fill;
            cREATE_SECTION.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            cREATE_SECTION.Show();
            Dispose();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            PublishResult publish = new PublishResult(DESKTOP);

            publish.TopLevel = false;
            DESKTOP.Controls.Add(publish);
            publish.Dock = DockStyle.Fill;
            publish.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            publish.Show();
            Dispose();
        }
    }
}
