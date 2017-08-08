namespace MedicalSupplies_CavaughnBrowne
{
    partial class ChildForm
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
            this.supplyList = new System.Windows.Forms.ListBox();
            this.label1 = new System.Windows.Forms.Label();
            this.practiceLabel2 = new System.Windows.Forms.Label();
            this.numItemsL = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // supplyList
            // 
            this.supplyList.Font = new System.Drawing.Font("Lucida Console", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.supplyList.FormattingEnabled = true;
            this.supplyList.Items.AddRange(new object[] {
            "ID\tName\t\t       Qty Required      Qty Held"});
            this.supplyList.Location = new System.Drawing.Point(12, 105);
            this.supplyList.Name = "supplyList";
            this.supplyList.Size = new System.Drawing.Size(568, 199);
            this.supplyList.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(132, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(331, 26);
            this.label1.TabIndex = 1;
            this.label1.Text = "Below are supply item details.";
            // 
            // practiceLabel2
            // 
            this.practiceLabel2.AutoSize = true;
            this.practiceLabel2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.practiceLabel2.Location = new System.Drawing.Point(159, 47);
            this.practiceLabel2.Name = "practiceLabel2";
            this.practiceLabel2.Size = new System.Drawing.Size(103, 26);
            this.practiceLabel2.TabIndex = 2;
            this.practiceLabel2.Text = "Practice: ";
            // 
            // numItemsL
            // 
            this.numItemsL.AutoSize = true;
            this.numItemsL.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numItemsL.Location = new System.Drawing.Point(133, 82);
            this.numItemsL.Name = "numItemsL";
            this.numItemsL.Size = new System.Drawing.Size(0, 20);
            this.numItemsL.TabIndex = 3;
            // 
            // ChildForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(592, 312);
            this.Controls.Add(this.numItemsL);
            this.Controls.Add(this.practiceLabel2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.supplyList);
            this.Name = "ChildForm";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox supplyList;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label practiceLabel2;
        private System.Windows.Forms.Label numItemsL;
    }
}