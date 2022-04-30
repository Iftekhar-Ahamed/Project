namespace WindowsFormsApp1
{
    partial class SemesterRegistration
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.operation = new System.Windows.Forms.Label();
            this.EXIT = new System.Windows.Forms.Button();
            this.prerequestcoursecode = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.CourseCredit = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.CourseCode = new System.Windows.Forms.TextBox();
            this.ADDCourse = new System.Windows.Forms.Button();
            this.label14 = new System.Windows.Forms.Label();
            this.CourseName = new System.Windows.Forms.TextBox();
            this.label15 = new System.Windows.Forms.Label();
            this.SUBMIT = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridViewIncompleteCourse = new System.Windows.Forms.DataGridView();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewIncompleteCourse)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.panel1.Controls.Add(this.operation);
            this.panel1.Controls.Add(this.EXIT);
            this.panel1.Controls.Add(this.prerequestcoursecode);
            this.panel1.Controls.Add(this.label18);
            this.panel1.Controls.Add(this.CourseCredit);
            this.panel1.Controls.Add(this.label11);
            this.panel1.Controls.Add(this.CourseCode);
            this.panel1.Controls.Add(this.ADDCourse);
            this.panel1.Controls.Add(this.label14);
            this.panel1.Controls.Add(this.CourseName);
            this.panel1.Controls.Add(this.label15);
            this.panel1.Controls.Add(this.SUBMIT);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.dataGridView1);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.dataGridViewIncompleteCourse);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1308, 750);
            this.panel1.TabIndex = 0;
            // 
            // operation
            // 
            this.operation.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.operation.AutoSize = true;
            this.operation.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.operation.Location = new System.Drawing.Point(547, 197);
            this.operation.Name = "operation";
            this.operation.Size = new System.Drawing.Size(0, 22);
            this.operation.TabIndex = 33;
            // 
            // EXIT
            // 
            this.EXIT.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.EXIT.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.EXIT.Location = new System.Drawing.Point(652, 679);
            this.EXIT.Name = "EXIT";
            this.EXIT.Size = new System.Drawing.Size(100, 35);
            this.EXIT.TabIndex = 32;
            this.EXIT.Text = "EXIT";
            this.EXIT.UseVisualStyleBackColor = true;
            this.EXIT.Click += new System.EventHandler(this.EXIT_Click);
            // 
            // prerequestcoursecode
            // 
            this.prerequestcoursecode.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.prerequestcoursecode.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.prerequestcoursecode.Location = new System.Drawing.Point(409, 460);
            this.prerequestcoursecode.Name = "prerequestcoursecode";
            this.prerequestcoursecode.ReadOnly = true;
            this.prerequestcoursecode.Size = new System.Drawing.Size(184, 29);
            this.prerequestcoursecode.TabIndex = 31;
            // 
            // label18
            // 
            this.label18.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label18.AutoSize = true;
            this.label18.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label18.Location = new System.Drawing.Point(408, 426);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(124, 22);
            this.label18.TabIndex = 30;
            this.label18.Text = "PREREQUISITE";
            // 
            // CourseCredit
            // 
            this.CourseCredit.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.CourseCredit.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CourseCredit.Location = new System.Drawing.Point(649, 360);
            this.CourseCredit.Name = "CourseCredit";
            this.CourseCredit.ReadOnly = true;
            this.CourseCredit.Size = new System.Drawing.Size(187, 29);
            this.CourseCredit.TabIndex = 28;
            // 
            // label11
            // 
            this.label11.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(645, 325);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(145, 22);
            this.label11.TabIndex = 27;
            this.label11.Text = "COURSE CREDIT:";
            // 
            // CourseCode
            // 
            this.CourseCode.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.CourseCode.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CourseCode.Location = new System.Drawing.Point(410, 361);
            this.CourseCode.Name = "CourseCode";
            this.CourseCode.ReadOnly = true;
            this.CourseCode.Size = new System.Drawing.Size(184, 29);
            this.CourseCode.TabIndex = 25;
            // 
            // ADDCourse
            // 
            this.ADDCourse.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.ADDCourse.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ADDCourse.Location = new System.Drawing.Point(720, 456);
            this.ADDCourse.Name = "ADDCourse";
            this.ADDCourse.Size = new System.Drawing.Size(116, 33);
            this.ADDCourse.TabIndex = 26;
            this.ADDCourse.Text = "ADD";
            this.ADDCourse.UseVisualStyleBackColor = true;
            this.ADDCourse.Click += new System.EventHandler(this.ADDCourse_Click);
            // 
            // label14
            // 
            this.label14.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(405, 329);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(127, 22);
            this.label14.TabIndex = 24;
            this.label14.Text = "COURSE CODE";
            // 
            // CourseName
            // 
            this.CourseName.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.CourseName.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.CourseName.Location = new System.Drawing.Point(411, 282);
            this.CourseName.Name = "CourseName";
            this.CourseName.ReadOnly = true;
            this.CourseName.Size = new System.Drawing.Size(425, 29);
            this.CourseName.TabIndex = 23;
            // 
            // label15
            // 
            this.label15.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label15.Location = new System.Drawing.Point(406, 254);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(141, 22);
            this.label15.TabIndex = 22;
            this.label15.Text = "COURSE NAME :";
            // 
            // SUBMIT
            // 
            this.SUBMIT.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.SUBMIT.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.SUBMIT.Location = new System.Drawing.Point(529, 679);
            this.SUBMIT.Name = "SUBMIT";
            this.SUBMIT.Size = new System.Drawing.Size(100, 35);
            this.SUBMIT.TabIndex = 4;
            this.SUBMIT.Text = "SUBMIT";
            this.SUBMIT.UseVisualStyleBackColor = true;
            this.SUBMIT.Click += new System.EventHandler(this.SUBMIT_Click);
            // 
            // label2
            // 
            this.label2.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(76, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(141, 22);
            this.label2.TabIndex = 3;
            this.label2.Text = "ADDED COURSE";
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.Anchor = System.Windows.Forms.AnchorStyles.Left;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 90);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(393, 624);
            this.dataGridView1.TabIndex = 2;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Tai Le", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(988, 62);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(186, 22);
            this.label1.TabIndex = 1;
            this.label1.Text = "INCOMPLETE COURSE";
            // 
            // dataGridViewIncompleteCourse
            // 
            this.dataGridViewIncompleteCourse.AllowUserToAddRows = false;
            this.dataGridViewIncompleteCourse.AllowUserToDeleteRows = false;
            this.dataGridViewIncompleteCourse.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.dataGridViewIncompleteCourse.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridViewIncompleteCourse.BackgroundColor = System.Drawing.SystemColors.Control;
            this.dataGridViewIncompleteCourse.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridViewIncompleteCourse.Location = new System.Drawing.Point(860, 102);
            this.dataGridViewIncompleteCourse.Name = "dataGridViewIncompleteCourse";
            this.dataGridViewIncompleteCourse.ReadOnly = true;
            this.dataGridViewIncompleteCourse.RowHeadersWidth = 51;
            this.dataGridViewIncompleteCourse.RowTemplate.Height = 24;
            this.dataGridViewIncompleteCourse.Size = new System.Drawing.Size(420, 612);
            this.dataGridViewIncompleteCourse.TabIndex = 0;
            this.dataGridViewIncompleteCourse.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridViewIncompleteCourse_CellContentClick);
            // 
            // SemesterRegistration
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1308, 750);
            this.Controls.Add(this.panel1);
            this.Name = "SemesterRegistration";
            this.Text = "SemesterRegistration";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridViewIncompleteCourse)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dataGridViewIncompleteCourse;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button SUBMIT;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox prerequestcoursecode;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.TextBox CourseCredit;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox CourseCode;
        private System.Windows.Forms.Button ADDCourse;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.TextBox CourseName;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Button EXIT;
        private System.Windows.Forms.Label operation;
    }
}