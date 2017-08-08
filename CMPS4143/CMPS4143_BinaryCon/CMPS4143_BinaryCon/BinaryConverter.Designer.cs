namespace CMPS4143_BinaryCon
{
    partial class BinaryConverter
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
            this.Promptlabel = new System.Windows.Forms.Label();
            this.binaryBox = new System.Windows.Forms.TextBox();
            this.decimalBox = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.Convert = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // Promptlabel
            // 
            this.Promptlabel.AutoSize = true;
            this.Promptlabel.Font = new System.Drawing.Font("High Tower Text", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Promptlabel.Location = new System.Drawing.Point(70, 27);
            this.Promptlabel.Name = "Promptlabel";
            this.Promptlabel.Size = new System.Drawing.Size(184, 18);
            this.Promptlabel.TabIndex = 0;
            this.Promptlabel.Text = "Enter a binary number below:";
            // 
            // binaryBox
            // 
            this.binaryBox.Location = new System.Drawing.Point(73, 82);
            this.binaryBox.MaxLength = 31;
            this.binaryBox.Name = "binaryBox";
            this.binaryBox.Size = new System.Drawing.Size(181, 20);
            this.binaryBox.TabIndex = 1;
            this.binaryBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // decimalBox
            // 
            this.decimalBox.Location = new System.Drawing.Point(178, 184);
            this.decimalBox.Name = "decimalBox";
            this.decimalBox.Size = new System.Drawing.Size(76, 20);
            this.decimalBox.TabIndex = 2;
            this.decimalBox.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(70, 191);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(90, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Decimal Number";
            // 
            // Convert
            // 
            this.Convert.Font = new System.Drawing.Font("Imprint MT Shadow", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Convert.Location = new System.Drawing.Point(123, 132);
            this.Convert.Name = "Convert";
            this.Convert.Size = new System.Drawing.Size(75, 23);
            this.Convert.TabIndex = 4;
            this.Convert.Text = "Convert";
            this.Convert.UseVisualStyleBackColor = true;
            this.Convert.Click += new System.EventHandler(this.Convert_Click);
            // 
            // BinaryConverter
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(7F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(331, 261);
            this.Controls.Add(this.Convert);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.decimalBox);
            this.Controls.Add(this.binaryBox);
            this.Controls.Add(this.Promptlabel);
            this.Font = new System.Drawing.Font("Imprint MT Shadow", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.Name = "BinaryConverter";
            this.Text = "Binary Converter";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label Promptlabel;
        private System.Windows.Forms.TextBox binaryBox;
        private System.Windows.Forms.TextBox decimalBox;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button Convert;
    }
}

