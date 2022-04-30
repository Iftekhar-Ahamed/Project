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
    public partial class StudentAcademicInfo : Form
    {
        private string id, type;
        private Panel DESKTOP;
        public StudentAcademicInfo(string type,string id,Panel DESKTOP)
        {
            InitializeComponent();
            this.id = id;
            this.type = type;
            this.DESKTOP = DESKTOP;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            STUDENT_ALL_COURSE ob = new STUDENT_ALL_COURSE(type,id,DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            Dispose();
            ob.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            DESKTOP.Controls.Clear();
            ShowAllRewsult ob = new ShowAllRewsult(id,DESKTOP);
            ob.TopLevel = false;
            DESKTOP.Controls.Add(ob);
            ob.Dock = DockStyle.Fill;
            ob.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            Dispose();
            ob.Show();
        }

        private void StudentAcademicInfo_Load(object sender, EventArgs e)
        {

        }
    }
}
