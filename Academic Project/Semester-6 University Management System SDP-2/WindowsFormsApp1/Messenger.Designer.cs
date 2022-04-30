namespace WindowsFormsApp1
{
    partial class Messenger
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Messenger));
            this.panel3 = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.textBoxMsg = new System.Windows.Forms.TextBox();
            this.panelSend = new System.Windows.Forms.Panel();
            this.newMsgBtn = new System.Windows.Forms.Button();
            this.refreshBtn = new System.Windows.Forms.Button();
            this.buttonSend = new System.Windows.Forms.Button();
            this.richTextBoxmsg = new System.Windows.Forms.RichTextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panelNewMsg = new System.Windows.Forms.Panel();
            this.NewMsgExitBtn = new System.Windows.Forms.Button();
            this.NewMsgBoxLabel = new System.Windows.Forms.Label();
            this.richTextBoxNewMsg = new System.Windows.Forms.RichTextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.NewMsgToLabel = new System.Windows.Forms.Label();
            this.NewMsgTo = new System.Windows.Forms.TextBox();
            this.panel2 = new System.Windows.Forms.Panel();
            this.listBoxID = new System.Windows.Forms.ListBox();
            this.panel3.SuspendLayout();
            this.panelSend.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.panelNewMsg.SuspendLayout();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.SystemColors.Control;
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel3.Location = new System.Drawing.Point(0, 0);
            this.panel3.Margin = new System.Windows.Forms.Padding(4);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1314, 46);
            this.panel3.TabIndex = 6;
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft YaHei", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label3.Location = new System.Drawing.Point(821, 6);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(196, 36);
            this.label3.TabIndex = 1;
            this.label3.Text = "Conversation";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Tai Le", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label2.Location = new System.Drawing.Point(4, 6);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(222, 34);
            this.label2.TabIndex = 0;
            this.label2.Text = "Recent Contacts";
            // 
            // textBoxMsg
            // 
            this.textBoxMsg.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.textBoxMsg.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBoxMsg.Location = new System.Drawing.Point(827, 5);
            this.textBoxMsg.Margin = new System.Windows.Forms.Padding(4);
            this.textBoxMsg.Name = "textBoxMsg";
            this.textBoxMsg.Size = new System.Drawing.Size(372, 34);
            this.textBoxMsg.TabIndex = 0;
            // 
            // panelSend
            // 
            this.panelSend.BackColor = System.Drawing.SystemColors.ControlDarkDark;
            this.panelSend.Controls.Add(this.newMsgBtn);
            this.panelSend.Controls.Add(this.refreshBtn);
            this.panelSend.Controls.Add(this.buttonSend);
            this.panelSend.Controls.Add(this.textBoxMsg);
            this.panelSend.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelSend.Location = new System.Drawing.Point(0, 843);
            this.panelSend.Margin = new System.Windows.Forms.Padding(4);
            this.panelSend.Name = "panelSend";
            this.panelSend.Size = new System.Drawing.Size(1314, 46);
            this.panelSend.TabIndex = 1;
            // 
            // newMsgBtn
            // 
            this.newMsgBtn.Font = new System.Drawing.Font("Microsoft YaHei", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.newMsgBtn.Location = new System.Drawing.Point(13, 5);
            this.newMsgBtn.Margin = new System.Windows.Forms.Padding(4);
            this.newMsgBtn.Name = "newMsgBtn";
            this.newMsgBtn.Size = new System.Drawing.Size(128, 34);
            this.newMsgBtn.TabIndex = 4;
            this.newMsgBtn.Text = "New Messege";
            this.newMsgBtn.UseVisualStyleBackColor = true;
            this.newMsgBtn.Click += new System.EventHandler(this.newMsgBtn_Click);
            // 
            // refreshBtn
            // 
            this.refreshBtn.AutoSize = true;
            this.refreshBtn.Font = new System.Drawing.Font("Microsoft YaHei", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.refreshBtn.Location = new System.Drawing.Point(226, 6);
            this.refreshBtn.Margin = new System.Windows.Forms.Padding(4);
            this.refreshBtn.Name = "refreshBtn";
            this.refreshBtn.Size = new System.Drawing.Size(118, 34);
            this.refreshBtn.TabIndex = 5;
            this.refreshBtn.Text = "Refresh";
            this.refreshBtn.UseVisualStyleBackColor = true;
            this.refreshBtn.Click += new System.EventHandler(this.refreshBtn_Click);
            // 
            // buttonSend
            // 
            this.buttonSend.Anchor = System.Windows.Forms.AnchorStyles.Right;
            this.buttonSend.Font = new System.Drawing.Font("Microsoft Tai Le", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.buttonSend.Location = new System.Drawing.Point(1207, 6);
            this.buttonSend.Margin = new System.Windows.Forms.Padding(4);
            this.buttonSend.Name = "buttonSend";
            this.buttonSend.Size = new System.Drawing.Size(94, 31);
            this.buttonSend.TabIndex = 1;
            this.buttonSend.Text = "Send";
            this.buttonSend.UseVisualStyleBackColor = true;
            this.buttonSend.Click += new System.EventHandler(this.buttonSend_Click);
            // 
            // richTextBoxmsg
            // 
            this.richTextBoxmsg.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.richTextBoxmsg.Dock = System.Windows.Forms.DockStyle.Fill;
            this.richTextBoxmsg.Location = new System.Drawing.Point(0, 0);
            this.richTextBoxmsg.Margin = new System.Windows.Forms.Padding(4);
            this.richTextBoxmsg.Name = "richTextBoxmsg";
            this.richTextBoxmsg.ReadOnly = true;
            this.richTextBoxmsg.Size = new System.Drawing.Size(487, 797);
            this.richTextBoxmsg.TabIndex = 0;
            this.richTextBoxmsg.Text = "";
            this.richTextBoxmsg.TextChanged += new System.EventHandler(this.richTextBoxmsg_TextChanged);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.richTextBoxmsg);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Right;
            this.panel1.Location = new System.Drawing.Point(827, 46);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(487, 797);
            this.panel1.TabIndex = 7;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.SystemColors.Control;
            this.pictureBox1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.BackgroundImage")));
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pictureBox1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pictureBox1.Location = new System.Drawing.Point(344, 46);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(483, 797);
            this.pictureBox1.TabIndex = 9;
            this.pictureBox1.TabStop = false;
            // 
            // panelNewMsg
            // 
            this.panelNewMsg.AutoSize = true;
            this.panelNewMsg.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.panelNewMsg.BackColor = System.Drawing.Color.LightSalmon;
            this.panelNewMsg.Controls.Add(this.NewMsgExitBtn);
            this.panelNewMsg.Controls.Add(this.NewMsgBoxLabel);
            this.panelNewMsg.Controls.Add(this.richTextBoxNewMsg);
            this.panelNewMsg.Controls.Add(this.label1);
            this.panelNewMsg.Controls.Add(this.NewMsgToLabel);
            this.panelNewMsg.Controls.Add(this.NewMsgTo);
            this.panelNewMsg.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelNewMsg.Location = new System.Drawing.Point(0, 542);
            this.panelNewMsg.Margin = new System.Windows.Forms.Padding(4);
            this.panelNewMsg.Name = "panelNewMsg";
            this.panelNewMsg.Size = new System.Drawing.Size(344, 255);
            this.panelNewMsg.TabIndex = 4;
            this.panelNewMsg.Visible = false;
            // 
            // NewMsgExitBtn
            // 
            this.NewMsgExitBtn.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.NewMsgExitBtn.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NewMsgExitBtn.Location = new System.Drawing.Point(276, 4);
            this.NewMsgExitBtn.Margin = new System.Windows.Forms.Padding(4);
            this.NewMsgExitBtn.Name = "NewMsgExitBtn";
            this.NewMsgExitBtn.Size = new System.Drawing.Size(48, 25);
            this.NewMsgExitBtn.TabIndex = 3;
            this.NewMsgExitBtn.Text = "X";
            this.NewMsgExitBtn.UseVisualStyleBackColor = true;
            this.NewMsgExitBtn.Click += new System.EventHandler(this.NewMsgExitBtn_Click);
            // 
            // NewMsgBoxLabel
            // 
            this.NewMsgBoxLabel.AutoSize = true;
            this.NewMsgBoxLabel.Font = new System.Drawing.Font("Times New Roman", 10F, System.Drawing.FontStyle.Bold);
            this.NewMsgBoxLabel.Location = new System.Drawing.Point(4, 71);
            this.NewMsgBoxLabel.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NewMsgBoxLabel.Name = "NewMsgBoxLabel";
            this.NewMsgBoxLabel.Size = new System.Drawing.Size(78, 19);
            this.NewMsgBoxLabel.TabIndex = 6;
            this.NewMsgBoxLabel.Text = "Messege:";
            // 
            // richTextBoxNewMsg
            // 
            this.richTextBoxNewMsg.Location = new System.Drawing.Point(51, 100);
            this.richTextBoxNewMsg.Margin = new System.Windows.Forms.Padding(4);
            this.richTextBoxNewMsg.Name = "richTextBoxNewMsg";
            this.richTextBoxNewMsg.Size = new System.Drawing.Size(273, 151);
            this.richTextBoxNewMsg.TabIndex = 5;
            this.richTextBoxNewMsg.Text = "";
            this.richTextBoxNewMsg.TextChanged += new System.EventHandler(this.richTextBoxNewMsg_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(110, 6);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(124, 23);
            this.label1.TabIndex = 5;
            this.label1.Text = "New messege";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // NewMsgToLabel
            // 
            this.NewMsgToLabel.AutoSize = true;
            this.NewMsgToLabel.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NewMsgToLabel.Location = new System.Drawing.Point(4, 44);
            this.NewMsgToLabel.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.NewMsgToLabel.Name = "NewMsgToLabel";
            this.NewMsgToLabel.Size = new System.Drawing.Size(42, 19);
            this.NewMsgToLabel.TabIndex = 5;
            this.NewMsgToLabel.Text = "TO :";
            // 
            // NewMsgTo
            // 
            this.NewMsgTo.Font = new System.Drawing.Font("Times New Roman", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.NewMsgTo.Location = new System.Drawing.Point(54, 41);
            this.NewMsgTo.Margin = new System.Windows.Forms.Padding(4);
            this.NewMsgTo.Name = "NewMsgTo";
            this.NewMsgTo.Size = new System.Drawing.Size(270, 26);
            this.NewMsgTo.TabIndex = 5;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.listBoxID);
            this.panel2.Controls.Add(this.panelNewMsg);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel2.Location = new System.Drawing.Point(0, 46);
            this.panel2.Margin = new System.Windows.Forms.Padding(4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(344, 797);
            this.panel2.TabIndex = 8;
            // 
            // listBoxID
            // 
            this.listBoxID.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.listBoxID.Dock = System.Windows.Forms.DockStyle.Fill;
            this.listBoxID.Font = new System.Drawing.Font("Microsoft YaHei", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.listBoxID.FormattingEnabled = true;
            this.listBoxID.ItemHeight = 31;
            this.listBoxID.Location = new System.Drawing.Point(0, 0);
            this.listBoxID.Margin = new System.Windows.Forms.Padding(4);
            this.listBoxID.Name = "listBoxID";
            this.listBoxID.Size = new System.Drawing.Size(344, 542);
            this.listBoxID.TabIndex = 3;
            this.listBoxID.SelectedIndexChanged += new System.EventHandler(this.listBoxID_SelectedIndexChanged);
            // 
            // Messenger
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1314, 889);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panelSend);
            this.DoubleBuffered = true;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Messenger";
            this.Text = "Messenger";
            this.TransparencyKey = System.Drawing.Color.Lime;
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panelSend.ResumeLayout(false);
            this.panelSend.PerformLayout();
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.panelNewMsg.ResumeLayout(false);
            this.panelNewMsg.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textBoxMsg;
        private System.Windows.Forms.Panel panelSend;
        private System.Windows.Forms.Button newMsgBtn;
        private System.Windows.Forms.Button refreshBtn;
        private System.Windows.Forms.Button buttonSend;
        private System.Windows.Forms.RichTextBox richTextBoxmsg;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Panel panelNewMsg;
        private System.Windows.Forms.Button NewMsgExitBtn;
        private System.Windows.Forms.Label NewMsgBoxLabel;
        private System.Windows.Forms.RichTextBox richTextBoxNewMsg;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label NewMsgToLabel;
        private System.Windows.Forms.TextBox NewMsgTo;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ListBox listBoxID;
    }
}