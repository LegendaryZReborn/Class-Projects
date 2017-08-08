namespace Painter
{
    partial class Painter
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
            this.brushColorP = new System.Windows.Forms.Panel();
            this.colorsCBox = new System.Windows.Forms.ComboBox();
            this.colorLabel = new System.Windows.Forms.Label();
            this.yellowRButton = new System.Windows.Forms.RadioButton();
            this.blueRButton = new System.Windows.Forms.RadioButton();
            this.redRButton = new System.Windows.Forms.RadioButton();
            this.sizePanel = new System.Windows.Forms.Panel();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.size3B = new System.Windows.Forms.RadioButton();
            this.size2B = new System.Windows.Forms.RadioButton();
            this.size1B = new System.Windows.Forms.RadioButton();
            this.painterMenu = new System.Windows.Forms.MenuStrip();
            this.fileToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.clearToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sizesToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem2 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem3 = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem4 = new System.Windows.Forms.ToolStripMenuItem();
            this.colorsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.redToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yellowToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.blueToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.drawPanel = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.brushColorP.SuspendLayout();
            this.sizePanel.SuspendLayout();
            this.painterMenu.SuspendLayout();
            this.SuspendLayout();
            // 
            // brushColorP
            // 
            this.brushColorP.BackColor = System.Drawing.SystemColors.Control;
            this.brushColorP.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.brushColorP.Controls.Add(this.colorsCBox);
            this.brushColorP.Controls.Add(this.colorLabel);
            this.brushColorP.Controls.Add(this.yellowRButton);
            this.brushColorP.Controls.Add(this.blueRButton);
            this.brushColorP.Controls.Add(this.redRButton);
            this.brushColorP.Location = new System.Drawing.Point(222, 29);
            this.brushColorP.Name = "brushColorP";
            this.brushColorP.Size = new System.Drawing.Size(310, 48);
            this.brushColorP.TabIndex = 0;
            // 
            // colorsCBox
            // 
            this.colorsCBox.AllowDrop = true;
            this.colorsCBox.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.colorsCBox.DropDownWidth = 50;
            this.colorsCBox.FormattingEnabled = true;
            this.colorsCBox.Items.AddRange(new object[] {
            "Red",
            "Yellow",
            "Blue",
            "Orange",
            "Purple",
            "Pink",
            "Green",
            "Black",
            "White"});
            this.colorsCBox.Location = new System.Drawing.Point(68, 13);
            this.colorsCBox.Name = "colorsCBox";
            this.colorsCBox.Size = new System.Drawing.Size(18, 21);
            this.colorsCBox.TabIndex = 3;
            this.colorsCBox.SelectedIndexChanged += new System.EventHandler(this.swapColorOnPallette);
            // 
            // colorLabel
            // 
            this.colorLabel.AutoSize = true;
            this.colorLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.colorLabel.Location = new System.Drawing.Point(8, 11);
            this.colorLabel.Name = "colorLabel";
            this.colorLabel.Size = new System.Drawing.Size(54, 20);
            this.colorLabel.TabIndex = 3;
            this.colorLabel.Text = "Colors";
            // 
            // yellowRButton
            // 
            this.yellowRButton.AutoSize = true;
            this.yellowRButton.Location = new System.Drawing.Point(240, 13);
            this.yellowRButton.Name = "yellowRButton";
            this.yellowRButton.Size = new System.Drawing.Size(46, 17);
            this.yellowRButton.TabIndex = 2;
            this.yellowRButton.Text = "Blue";
            this.yellowRButton.UseVisualStyleBackColor = true;
            this.yellowRButton.CheckedChanged += new System.EventHandler(this.colorRadioButton_CheckedChanged);
            // 
            // blueRButton
            // 
            this.blueRButton.AutoSize = true;
            this.blueRButton.Location = new System.Drawing.Point(175, 14);
            this.blueRButton.Name = "blueRButton";
            this.blueRButton.Size = new System.Drawing.Size(56, 17);
            this.blueRButton.TabIndex = 1;
            this.blueRButton.Text = "Yellow";
            this.blueRButton.UseVisualStyleBackColor = true;
            this.blueRButton.CheckedChanged += new System.EventHandler(this.colorRadioButton_CheckedChanged);
            // 
            // redRButton
            // 
            this.redRButton.AutoSize = true;
            this.redRButton.Location = new System.Drawing.Point(108, 13);
            this.redRButton.Name = "redRButton";
            this.redRButton.Size = new System.Drawing.Size(45, 17);
            this.redRButton.TabIndex = 0;
            this.redRButton.Text = "Red";
            this.redRButton.UseVisualStyleBackColor = true;
            this.redRButton.CheckedChanged += new System.EventHandler(this.colorRadioButton_CheckedChanged);
            // 
            // sizePanel
            // 
            this.sizePanel.BackColor = System.Drawing.SystemColors.Control;
            this.sizePanel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.sizePanel.Controls.Add(this.comboBox1);
            this.sizePanel.Controls.Add(this.label1);
            this.sizePanel.Controls.Add(this.size3B);
            this.sizePanel.Controls.Add(this.size2B);
            this.sizePanel.Controls.Add(this.size1B);
            this.sizePanel.Location = new System.Drawing.Point(0, 29);
            this.sizePanel.Name = "sizePanel";
            this.sizePanel.Size = new System.Drawing.Size(224, 48);
            this.sizePanel.TabIndex = 1;
            // 
            // comboBox1
            // 
            this.comboBox1.AllowDrop = true;
            this.comboBox1.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.comboBox1.DropDownWidth = 50;
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "4",
            "6",
            "8",
            "10",
            "12",
            "14",
            "16",
            "18",
            "20",
            "22",
            "24",
            "26",
            "28"});
            this.comboBox1.Location = new System.Drawing.Point(62, 12);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(18, 21);
            this.comboBox1.TabIndex = 5;
            this.comboBox1.SelectedIndexChanged += new System.EventHandler(this.swapSizeOnPallette);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(8, 13);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(48, 20);
            this.label1.TabIndex = 4;
            this.label1.Text = "Sizes";
            // 
            // size3B
            // 
            this.size3B.AutoSize = true;
            this.size3B.Location = new System.Drawing.Point(180, 14);
            this.size3B.Name = "size3B";
            this.size3B.Size = new System.Drawing.Size(37, 17);
            this.size3B.TabIndex = 2;
            this.size3B.Text = "12";
            this.size3B.UseVisualStyleBackColor = true;
            this.size3B.CheckedChanged += new System.EventHandler(this.sizeRadioButton_CheckedChanged);
            // 
            // size2B
            // 
            this.size2B.AutoSize = true;
            this.size2B.Location = new System.Drawing.Point(143, 14);
            this.size2B.Name = "size2B";
            this.size2B.Size = new System.Drawing.Size(31, 17);
            this.size2B.TabIndex = 1;
            this.size2B.Text = "8";
            this.size2B.UseVisualStyleBackColor = true;
            this.size2B.CheckedChanged += new System.EventHandler(this.sizeRadioButton_CheckedChanged);
            // 
            // size1B
            // 
            this.size1B.AutoSize = true;
            this.size1B.Location = new System.Drawing.Point(106, 14);
            this.size1B.Name = "size1B";
            this.size1B.Size = new System.Drawing.Size(31, 17);
            this.size1B.TabIndex = 0;
            this.size1B.Text = "4";
            this.size1B.UseVisualStyleBackColor = true;
            this.size1B.CheckedChanged += new System.EventHandler(this.sizeRadioButton_CheckedChanged);
            // 
            // painterMenu
            // 
            this.painterMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileToolStripMenuItem,
            this.sizesToolStripMenuItem1,
            this.colorsToolStripMenuItem});
            this.painterMenu.Location = new System.Drawing.Point(0, 0);
            this.painterMenu.Name = "painterMenu";
            this.painterMenu.Size = new System.Drawing.Size(533, 24);
            this.painterMenu.TabIndex = 2;
            this.painterMenu.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            this.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.clearToolStripMenuItem});
            this.fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            this.fileToolStripMenuItem.Size = new System.Drawing.Size(37, 20);
            this.fileToolStripMenuItem.Text = "File";
            // 
            // clearToolStripMenuItem
            // 
            this.clearToolStripMenuItem.Name = "clearToolStripMenuItem";
            this.clearToolStripMenuItem.Size = new System.Drawing.Size(101, 22);
            this.clearToolStripMenuItem.Text = "Clear";
            this.clearToolStripMenuItem.Click += new System.EventHandler(this.clearB_Click);
            // 
            // sizesToolStripMenuItem1
            // 
            this.sizesToolStripMenuItem1.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripMenuItem2,
            this.toolStripMenuItem3,
            this.toolStripMenuItem4});
            this.sizesToolStripMenuItem1.Name = "sizesToolStripMenuItem1";
            this.sizesToolStripMenuItem1.Size = new System.Drawing.Size(44, 20);
            this.sizesToolStripMenuItem1.Text = "Sizes";
            // 
            // toolStripMenuItem2
            // 
            this.toolStripMenuItem2.MergeIndex = 0;
            this.toolStripMenuItem2.Name = "toolStripMenuItem2";
            this.toolStripMenuItem2.Size = new System.Drawing.Size(152, 22);
            this.toolStripMenuItem2.Text = "4";
            this.toolStripMenuItem2.Click += new System.EventHandler(this.sizeRadioButton_CheckedChanged);
            // 
            // toolStripMenuItem3
            // 
            this.toolStripMenuItem3.MergeIndex = 1;
            this.toolStripMenuItem3.Name = "toolStripMenuItem3";
            this.toolStripMenuItem3.Size = new System.Drawing.Size(152, 22);
            this.toolStripMenuItem3.Text = "8";
            this.toolStripMenuItem3.Click += new System.EventHandler(this.sizeRadioButton_CheckedChanged);
            // 
            // toolStripMenuItem4
            // 
            this.toolStripMenuItem4.MergeIndex = 2;
            this.toolStripMenuItem4.Name = "toolStripMenuItem4";
            this.toolStripMenuItem4.Size = new System.Drawing.Size(152, 22);
            this.toolStripMenuItem4.Text = "12";
            this.toolStripMenuItem4.Click += new System.EventHandler(this.sizeRadioButton_CheckedChanged);
            // 
            // colorsToolStripMenuItem
            // 
            this.colorsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.redToolStripMenuItem,
            this.yellowToolStripMenuItem,
            this.blueToolStripMenuItem});
            this.colorsToolStripMenuItem.Name = "colorsToolStripMenuItem";
            this.colorsToolStripMenuItem.Size = new System.Drawing.Size(53, 20);
            this.colorsToolStripMenuItem.Text = "Colors";
            // 
            // redToolStripMenuItem
            // 
            this.redToolStripMenuItem.MergeIndex = 0;
            this.redToolStripMenuItem.Name = "redToolStripMenuItem";
            this.redToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.redToolStripMenuItem.Text = "Red";
            this.redToolStripMenuItem.Click += new System.EventHandler(this.colorRadioButton_CheckedChanged);
            // 
            // yellowToolStripMenuItem
            // 
            this.yellowToolStripMenuItem.MergeIndex = 1;
            this.yellowToolStripMenuItem.Name = "yellowToolStripMenuItem";
            this.yellowToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.yellowToolStripMenuItem.Text = "Yellow";
            this.yellowToolStripMenuItem.Click += new System.EventHandler(this.colorRadioButton_CheckedChanged);
            // 
            // blueToolStripMenuItem
            // 
            this.blueToolStripMenuItem.MergeIndex = 2;
            this.blueToolStripMenuItem.Name = "blueToolStripMenuItem";
            this.blueToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.blueToolStripMenuItem.Text = "Blue";
            this.blueToolStripMenuItem.Click += new System.EventHandler(this.colorRadioButton_CheckedChanged);
            // 
            // drawPanel
            // 
            this.drawPanel.BackColor = System.Drawing.Color.White;
            this.drawPanel.Location = new System.Drawing.Point(0, 76);
            this.drawPanel.Name = "drawPanel";
            this.drawPanel.Size = new System.Drawing.Size(532, 258);
            this.drawPanel.TabIndex = 2;
            this.drawPanel.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Painter_MouseDown);
            this.drawPanel.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Painter_MouseMove);
            this.drawPanel.MouseUp += new System.Windows.Forms.MouseEventHandler(this.Painter_MouseUp);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(446, 1);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "Clear";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.clearB_Click);
            // 
            // Painter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.ClientSize = new System.Drawing.Size(533, 333);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.drawPanel);
            this.Controls.Add(this.sizePanel);
            this.Controls.Add(this.brushColorP);
            this.Controls.Add(this.painterMenu);
            this.Name = "Painter";
            this.Text = "Painter";
            this.MouseDown += new System.Windows.Forms.MouseEventHandler(this.Painter_MouseDown);
            this.MouseMove += new System.Windows.Forms.MouseEventHandler(this.Painter_MouseMove);
            this.MouseUp += new System.Windows.Forms.MouseEventHandler(this.Painter_MouseUp);
            this.brushColorP.ResumeLayout(false);
            this.brushColorP.PerformLayout();
            this.sizePanel.ResumeLayout(false);
            this.sizePanel.PerformLayout();
            this.painterMenu.ResumeLayout(false);
            this.painterMenu.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel brushColorP;
        private System.Windows.Forms.RadioButton yellowRButton;
        private System.Windows.Forms.RadioButton blueRButton;
        private System.Windows.Forms.RadioButton redRButton;
        private System.Windows.Forms.Panel sizePanel;
        private System.Windows.Forms.RadioButton size3B;
        private System.Windows.Forms.RadioButton size2B;
        private System.Windows.Forms.RadioButton size1B;
        private System.Windows.Forms.Label colorLabel;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.MenuStrip painterMenu;
        private System.Windows.Forms.ToolStripMenuItem colorsToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem redToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yellowToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem blueToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sizesToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem2;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem3;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem4;
        private System.Windows.Forms.ComboBox colorsCBox;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.ToolStripMenuItem fileToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem clearToolStripMenuItem;
        private System.Windows.Forms.Panel drawPanel;
        private System.Windows.Forms.Button button1;
    }
}

