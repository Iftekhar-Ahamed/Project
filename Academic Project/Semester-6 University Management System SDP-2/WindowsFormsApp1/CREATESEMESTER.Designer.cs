namespace WindowsFormsApp1
{
    partial class CREATESEMESTER
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(CREATESEMESTER));
            this.panel1 = new System.Windows.Forms.Panel();
            this.back = new System.Windows.Forms.Button();
            this.groupBoxaddeditsemester = new System.Windows.Forms.GroupBox();
            this.comboBoxselectsemster = new System.Windows.Forms.ComboBox();
            this.selectsemester = new System.Windows.Forms.Label();
            this.action = new System.Windows.Forms.Button();
            this.comboBoxSTATUS = new System.Windows.Forms.ComboBox();
            this.STATUS = new System.Windows.Forms.Label();
            this.maxcredit = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.sname = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBoxoparetion = new System.Windows.Forms.GroupBox();
            this.buttoneditsemester = new System.Windows.Forms.Button();
            this.buttonaddsemester = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.groupBoxaddeditsemester.SuspendLayout();
            this.groupBoxoparetion.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.LightCoral;
            this.panel1.Controls.Add(this.back);
            this.panel1.Controls.Add(this.groupBoxaddeditsemester);
            this.panel1.Controls.Add(this.groupBoxoparetion);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1205, 707);
            this.panel1.TabIndex = 0;
            // 
            // back
            // 
            this.back.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.back.BackColor = System.Drawing.SystemColors.ControlLight;
            this.back.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("back.BackgroundImage")));
            this.back.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.back.FlatAppearance.BorderSize = 0;
            this.back.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.back.ForeColor = System.Drawing.SystemColors.ControlText;
            this.back.Location = new System.Drawing.Point(1078, 664);
            this.back.Name = "back";
            this.back.Size = new System.Drawing.Size(127, 43);
            this.back.TabIndex = 64;
            this.back.UseVisualStyleBackColor = false;
            this.back.Click += new System.EventHandler(this.back_Click);
            // 
            // groupBoxaddeditsemester
            // 
            this.groupBoxaddeditsemester.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBoxaddeditsemester.Controls.Add(this.comboBoxselectsemster);
            this.groupBoxaddeditsemester.Controls.Add(this.selectsemester);
            this.groupBoxaddeditsemester.Controls.Add(this.action);
            this.groupBoxaddeditsemester.Controls.Add(this.comboBoxSTATUS);
            this.groupBoxaddeditsemester.Controls.Add(this.STATUS);
            this.groupBoxaddeditsemester.Controls.Add(this.maxcredit);
            this.groupBoxaddeditsemester.Controls.Add(this.label2);
            this.groupBoxaddeditsemester.Controls.Add(this.sname);
            this.groupBoxaddeditsemester.Controls.Add(this.label1);
            this.groupBoxaddeditsemester.Font = new System.Drawing.Font("Microsoft Tai Le", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxaddeditsemester.Location = new System.Drawing.Point(551, 99);
            this.groupBoxaddeditsemester.Name = "groupBoxaddeditsemester";
            this.groupBoxaddeditsemester.Size = new System.Drawing.Size(615, 507);
            this.groupBoxaddeditsemester.TabIndex = 1;
            this.groupBoxaddeditsemester.TabStop = false;
            this.groupBoxaddeditsemester.Text = "ADD SEMESTER";
            this.groupBoxaddeditsemester.Visible = false;
            // 
            // comboBoxselectsemster
            // 
            this.comboBoxselectsemster.FormattingEnabled = true;
            this.comboBoxselectsemster.Location = new System.Drawing.Point(262, 74);
            this.comboBoxselectsemster.Name = "comboBoxselectsemster";
            this.comboBoxselectsemster.Size = new System.Drawing.Size(167, 37);
            this.comboBoxselectsemster.TabIndex = 8;
            this.comboBoxselectsemster.SelectedIndexChanged += new System.EventHandler(this.comboBoxselectsemster_SelectedIndexChanged);
            // 
            // selectsemester
            // 
            this.selectsemester.AutoSize = true;
            this.selectsemester.Location = new System.Drawing.Point(36, 82);
            this.selectsemester.Name = "selectsemester";
            this.selectsemester.Size = new System.Drawing.Size(207, 29);
            this.selectsemester.TabIndex = 7;
            this.selectsemester.Text = "SELECT SEMESTER";
            // 
            // action
            // 
            this.action.Location = new System.Drawing.Point(241, 375);
            this.action.Name = "action";
            this.action.Size = new System.Drawing.Size(128, 39);
            this.action.TabIndex = 6;
            this.action.Text = "button1";
            this.action.UseVisualStyleBackColor = true;
            this.action.Click += new System.EventHandler(this.action_Click);
            // 
            // comboBoxSTATUS
            // 
            this.comboBoxSTATUS.FormattingEnabled = true;
            this.comboBoxSTATUS.Location = new System.Drawing.Point(346, 296);
            this.comboBoxSTATUS.Name = "comboBoxSTATUS";
            this.comboBoxSTATUS.Size = new System.Drawing.Size(121, 37);
            this.comboBoxSTATUS.TabIndex = 5;
            // 
            // STATUS
            // 
            this.STATUS.AutoSize = true;
            this.STATUS.Location = new System.Drawing.Point(36, 308);
            this.STATUS.Name = "STATUS";
            this.STATUS.Size = new System.Drawing.Size(266, 29);
            this.STATUS.TabIndex = 4;
            this.STATUS.Text = "REGISTRATION STATUS";
            // 
            // maxcredit
            // 
            this.maxcredit.Location = new System.Drawing.Point(262, 228);
            this.maxcredit.Name = "maxcredit";
            this.maxcredit.Size = new System.Drawing.Size(295, 37);
            this.maxcredit.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(36, 231);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(150, 29);
            this.label2.TabIndex = 2;
            this.label2.Text = "MAX CREDIT";
            // 
            // sname
            // 
            this.sname.Location = new System.Drawing.Point(262, 148);
            this.sname.Name = "sname";
            this.sname.Size = new System.Drawing.Size(295, 37);
            this.sname.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(36, 156);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(199, 29);
            this.label1.TabIndex = 0;
            this.label1.Text = "SEMESTER NAME";
            // 
            // groupBoxoparetion
            // 
            this.groupBoxoparetion.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBoxoparetion.Controls.Add(this.buttoneditsemester);
            this.groupBoxoparetion.Controls.Add(this.buttonaddsemester);
            this.groupBoxoparetion.Font = new System.Drawing.Font("Microsoft Tai Le", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBoxoparetion.Location = new System.Drawing.Point(61, 181);
            this.groupBoxoparetion.Name = "groupBoxoparetion";
            this.groupBoxoparetion.Size = new System.Drawing.Size(328, 335);
            this.groupBoxoparetion.TabIndex = 0;
            this.groupBoxoparetion.TabStop = false;
            this.groupBoxoparetion.Text = "SELECT ";
            // 
            // buttoneditsemester
            // 
            this.buttoneditsemester.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.buttoneditsemester.Location = new System.Drawing.Point(52, 189);
            this.buttoneditsemester.Name = "buttoneditsemester";
            this.buttoneditsemester.Size = new System.Drawing.Size(245, 60);
            this.buttoneditsemester.TabIndex = 1;
            this.buttoneditsemester.Text = "EDIT STATUS";
            this.buttoneditsemester.UseVisualStyleBackColor = true;
            this.buttoneditsemester.Click += new System.EventHandler(this.buttoneditsemester_Click);
            // 
            // buttonaddsemester
            // 
            this.buttonaddsemester.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.buttonaddsemester.Location = new System.Drawing.Point(52, 82);
            this.buttonaddsemester.Name = "buttonaddsemester";
            this.buttonaddsemester.Size = new System.Drawing.Size(245, 60);
            this.buttonaddsemester.TabIndex = 0;
            this.buttonaddsemester.Text = "ADD SEMESTER";
            this.buttonaddsemester.UseVisualStyleBackColor = true;
            this.buttonaddsemester.Click += new System.EventHandler(this.buttonaddsemester_Click);
            // 
            // CREATESEMESTER
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1205, 707);
            this.Controls.Add(this.panel1);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "CREATESEMESTER";
            this.Text = "CREATESEMESTER";
            this.panel1.ResumeLayout(false);
            this.groupBoxaddeditsemester.ResumeLayout(false);
            this.groupBoxaddeditsemester.PerformLayout();
            this.groupBoxoparetion.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.GroupBox groupBoxaddeditsemester;
        private System.Windows.Forms.ComboBox comboBoxSTATUS;
        private System.Windows.Forms.Label STATUS;
        private System.Windows.Forms.TextBox maxcredit;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox sname;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBoxoparetion;
        private System.Windows.Forms.Button buttoneditsemester;
        private System.Windows.Forms.Button buttonaddsemester;
        private System.Windows.Forms.Button action;
        private System.Windows.Forms.ComboBox comboBoxselectsemster;
        private System.Windows.Forms.Label selectsemester;
        private System.Windows.Forms.Button back;
    }
}