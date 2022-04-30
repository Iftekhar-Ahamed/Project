namespace WindowsFormsApp1
{
    partial class Employee
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Employee));
            this.panelboard = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.LogoBubt = new System.Windows.Forms.PictureBox();
            this.DESKTOP = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.panelboard.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.LogoBubt)).BeginInit();
            this.SuspendLayout();
            // 
            // panelboard
            // 
            this.panelboard.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panelboard.Controls.Add(this.button4);
            this.panelboard.Controls.Add(this.button3);
            this.panelboard.Controls.Add(this.button2);
            this.panelboard.Controls.Add(this.button1);
            this.panelboard.Controls.Add(this.panel1);
            this.panelboard.Dock = System.Windows.Forms.DockStyle.Left;
            this.panelboard.Location = new System.Drawing.Point(0, 0);
            this.panelboard.Margin = new System.Windows.Forms.Padding(4);
            this.panelboard.Name = "panelboard";
            this.panelboard.Size = new System.Drawing.Size(267, 814);
            this.panelboard.TabIndex = 6;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.LogoBubt);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(267, 246);
            this.panel1.TabIndex = 4;
            // 
            // LogoBubt
            // 
            this.LogoBubt.BackColor = System.Drawing.Color.White;
            this.LogoBubt.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("LogoBubt.BackgroundImage")));
            this.LogoBubt.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.LogoBubt.Dock = System.Windows.Forms.DockStyle.Fill;
            this.LogoBubt.Location = new System.Drawing.Point(0, 0);
            this.LogoBubt.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.LogoBubt.Name = "LogoBubt";
            this.LogoBubt.Size = new System.Drawing.Size(267, 246);
            this.LogoBubt.TabIndex = 3;
            this.LogoBubt.TabStop = false;
            // 
            // DESKTOP
            // 
            this.DESKTOP.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("DESKTOP.BackgroundImage")));
            this.DESKTOP.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.DESKTOP.Dock = System.Windows.Forms.DockStyle.Fill;
            this.DESKTOP.Location = new System.Drawing.Point(267, 0);
            this.DESKTOP.Margin = new System.Windows.Forms.Padding(4);
            this.DESKTOP.Name = "DESKTOP";
            this.DESKTOP.Size = new System.Drawing.Size(1077, 814);
            this.DESKTOP.TabIndex = 7;
            // 
            // button1
            // 
            this.button1.Dock = System.Windows.Forms.DockStyle.Top;
            this.button1.Font = new System.Drawing.Font("Microsoft Tai Le", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button1.Location = new System.Drawing.Point(0, 246);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(267, 103);
            this.button1.TabIndex = 5;
            this.button1.Text = "PERSONAL INFO";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Dock = System.Windows.Forms.DockStyle.Top;
            this.button2.Font = new System.Drawing.Font("Microsoft Tai Le", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.Location = new System.Drawing.Point(0, 349);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(267, 103);
            this.button2.TabIndex = 6;
            this.button2.Text = "MESSENGER";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button3
            // 
            this.button3.Dock = System.Windows.Forms.DockStyle.Top;
            this.button3.Font = new System.Drawing.Font("Microsoft Tai Le", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.Location = new System.Drawing.Point(0, 452);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(267, 103);
            this.button3.TabIndex = 7;
            this.button3.Text = "CHANGE PASSWORD";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click_1);
            // 
            // button4
            // 
            this.button4.Dock = System.Windows.Forms.DockStyle.Top;
            this.button4.Font = new System.Drawing.Font("Microsoft Tai Le", 18F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.Location = new System.Drawing.Point(0, 555);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(267, 103);
            this.button4.TabIndex = 8;
            this.button4.Text = "EXIT";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // Employee
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLight;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1344, 814);
            this.Controls.Add(this.DESKTOP);
            this.Controls.Add(this.panelboard);
            this.DoubleBuffered = true;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "Employee";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Employee";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Employee_FormClosing);
            this.Load += new System.EventHandler(this.Employee_Load);
            this.panelboard.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.LogoBubt)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelboard;
        private System.Windows.Forms.Panel DESKTOP;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox LogoBubt;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
    }
}