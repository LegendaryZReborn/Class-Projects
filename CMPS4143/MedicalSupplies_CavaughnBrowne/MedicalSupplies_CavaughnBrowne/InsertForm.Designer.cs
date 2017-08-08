namespace MedicalSupplies_CavaughnBrowne
{
    partial class InsertForm
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
            this.itemDetails = new System.Windows.Forms.GroupBox();
            this.practiceName = new System.Windows.Forms.Label();
            this.practiceTB = new System.Windows.Forms.TextBox();
            this.qtyHeldTB = new System.Windows.Forms.TextBox();
            this.qtyReqTB = new System.Windows.Forms.TextBox();
            this.itemNameTB = new System.Windows.Forms.TextBox();
            this.itemIdTB = new System.Windows.Forms.TextBox();
            this.qtyHeldLabel = new System.Windows.Forms.Label();
            this.qtyReLabel = new System.Windows.Forms.Label();
            this.itemNameLabel = new System.Windows.Forms.Label();
            this.itemIDLabel = new System.Windows.Forms.Label();
            this.cancelButton = new System.Windows.Forms.Button();
            this.okButton = new System.Windows.Forms.Button();
            this.itemDetails.SuspendLayout();
            this.SuspendLayout();
            // 
            // itemDetails
            // 
            this.itemDetails.Controls.Add(this.practiceName);
            this.itemDetails.Controls.Add(this.practiceTB);
            this.itemDetails.Controls.Add(this.qtyHeldTB);
            this.itemDetails.Controls.Add(this.qtyReqTB);
            this.itemDetails.Controls.Add(this.itemNameTB);
            this.itemDetails.Controls.Add(this.itemIdTB);
            this.itemDetails.Controls.Add(this.qtyHeldLabel);
            this.itemDetails.Controls.Add(this.qtyReLabel);
            this.itemDetails.Controls.Add(this.itemNameLabel);
            this.itemDetails.Controls.Add(this.itemIDLabel);
            this.itemDetails.Location = new System.Drawing.Point(12, 12);
            this.itemDetails.Name = "itemDetails";
            this.itemDetails.Size = new System.Drawing.Size(343, 192);
            this.itemDetails.TabIndex = 0;
            this.itemDetails.TabStop = false;
            this.itemDetails.Text = "Item Details";
            // 
            // practiceName
            // 
            this.practiceName.AutoSize = true;
            this.practiceName.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.practiceName.Location = new System.Drawing.Point(16, 164);
            this.practiceName.Name = "practiceName";
            this.practiceName.Size = new System.Drawing.Size(112, 20);
            this.practiceName.TabIndex = 9;
            this.practiceName.Text = "Practice Name";
            // 
            // practiceTB
            // 
            this.practiceTB.Location = new System.Drawing.Point(133, 164);
            this.practiceTB.Name = "practiceTB";
            this.practiceTB.Size = new System.Drawing.Size(185, 20);
            this.practiceTB.TabIndex = 8;
            this.practiceTB.TextChanged += new System.EventHandler(this.allTextBox_TextChanged);
            // 
            // qtyHeldTB
            // 
            this.qtyHeldTB.Location = new System.Drawing.Point(133, 120);
            this.qtyHeldTB.Name = "qtyHeldTB";
            this.qtyHeldTB.Size = new System.Drawing.Size(85, 20);
            this.qtyHeldTB.TabIndex = 7;
            this.qtyHeldTB.TextChanged += new System.EventHandler(this.allTextBox_TextChanged);
            // 
            // qtyReqTB
            // 
            this.qtyReqTB.Location = new System.Drawing.Point(133, 88);
            this.qtyReqTB.Name = "qtyReqTB";
            this.qtyReqTB.Size = new System.Drawing.Size(85, 20);
            this.qtyReqTB.TabIndex = 6;
            this.qtyReqTB.TextChanged += new System.EventHandler(this.allTextBox_TextChanged);
            // 
            // itemNameTB
            // 
            this.itemNameTB.Location = new System.Drawing.Point(133, 59);
            this.itemNameTB.MaxLength = 22;
            this.itemNameTB.Name = "itemNameTB";
            this.itemNameTB.Size = new System.Drawing.Size(185, 20);
            this.itemNameTB.TabIndex = 5;
            this.itemNameTB.TextChanged += new System.EventHandler(this.allTextBox_TextChanged);
            // 
            // itemIdTB
            // 
            this.itemIdTB.Location = new System.Drawing.Point(133, 25);
            this.itemIdTB.MaxLength = 7;
            this.itemIdTB.Name = "itemIdTB";
            this.itemIdTB.Size = new System.Drawing.Size(117, 20);
            this.itemIdTB.TabIndex = 4;
            this.itemIdTB.TextChanged += new System.EventHandler(this.allTextBox_TextChanged);
            // 
            // qtyHeldLabel
            // 
            this.qtyHeldLabel.AutoSize = true;
            this.qtyHeldLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.qtyHeldLabel.Location = new System.Drawing.Point(16, 118);
            this.qtyHeldLabel.Name = "qtyHeldLabel";
            this.qtyHeldLabel.Size = new System.Drawing.Size(70, 20);
            this.qtyHeldLabel.TabIndex = 3;
            this.qtyHeldLabel.Text = "Qty Held";
            // 
            // qtyReLabel
            // 
            this.qtyReLabel.AutoSize = true;
            this.qtyReLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.qtyReLabel.Location = new System.Drawing.Point(16, 86);
            this.qtyReLabel.Name = "qtyReLabel";
            this.qtyReLabel.Size = new System.Drawing.Size(67, 20);
            this.qtyReLabel.TabIndex = 2;
            this.qtyReLabel.Text = "Qty Req";
            // 
            // itemNameLabel
            // 
            this.itemNameLabel.AutoSize = true;
            this.itemNameLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.itemNameLabel.Location = new System.Drawing.Point(16, 57);
            this.itemNameLabel.Name = "itemNameLabel";
            this.itemNameLabel.Size = new System.Drawing.Size(87, 20);
            this.itemNameLabel.TabIndex = 1;
            this.itemNameLabel.Text = "Item Name";
            // 
            // itemIDLabel
            // 
            this.itemIDLabel.AutoSize = true;
            this.itemIDLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.itemIDLabel.Location = new System.Drawing.Point(16, 25);
            this.itemIDLabel.Name = "itemIDLabel";
            this.itemIDLabel.Size = new System.Drawing.Size(62, 20);
            this.itemIDLabel.TabIndex = 0;
            this.itemIDLabel.Text = "Item ID";
            // 
            // cancelButton
            // 
            this.cancelButton.Location = new System.Drawing.Point(202, 210);
            this.cancelButton.Name = "cancelButton";
            this.cancelButton.Size = new System.Drawing.Size(75, 23);
            this.cancelButton.TabIndex = 1;
            this.cancelButton.Text = "Cancel";
            this.cancelButton.UseVisualStyleBackColor = true;
            this.cancelButton.Click += new System.EventHandler(this.cancelButton_Click);
            // 
            // okButton
            // 
            this.okButton.Location = new System.Drawing.Point(280, 210);
            this.okButton.Name = "okButton";
            this.okButton.Size = new System.Drawing.Size(75, 23);
            this.okButton.TabIndex = 2;
            this.okButton.Text = "Ok";
            this.okButton.UseVisualStyleBackColor = true;
            this.okButton.Click += new System.EventHandler(this.okButton_Click);
            // 
            // InsertForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(380, 245);
            this.Controls.Add(this.okButton);
            this.Controls.Add(this.cancelButton);
            this.Controls.Add(this.itemDetails);
            this.Name = "InsertForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Insert Item";
            this.itemDetails.ResumeLayout(false);
            this.itemDetails.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox itemDetails;
        private System.Windows.Forms.Label qtyHeldLabel;
        private System.Windows.Forms.Label qtyReLabel;
        private System.Windows.Forms.Label itemNameLabel;
        private System.Windows.Forms.Label itemIDLabel;
        private System.Windows.Forms.TextBox qtyHeldTB;
        private System.Windows.Forms.TextBox qtyReqTB;
        private System.Windows.Forms.TextBox itemNameTB;
        private System.Windows.Forms.TextBox itemIdTB;
        private System.Windows.Forms.Button cancelButton;
        private System.Windows.Forms.Button okButton;
        private System.Windows.Forms.Label practiceName;
        private System.Windows.Forms.TextBox practiceTB;
    }
}