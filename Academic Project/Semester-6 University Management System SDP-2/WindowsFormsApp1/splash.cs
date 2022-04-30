using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class splash : Form
    {
        public splash()
        {
            InitializeComponent();
            timer1.Start();
            
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            for(int i=0;i<266;i++)
            {
                panelLOAD.Width = panelLOAD.Width + 3;
                Thread.Sleep(1);
            }
            timer1.Stop();

            this.Hide();
            MainMenu mn = new MainMenu();
            mn.Show();

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
    }
