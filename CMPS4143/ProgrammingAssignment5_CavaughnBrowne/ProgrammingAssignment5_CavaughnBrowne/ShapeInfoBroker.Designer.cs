namespace ProgrammingAssignment5_CavaughnBrowne
{
    partial class ShapeInfoBroker
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
            this.goButton = new System.Windows.Forms.Button();
            this.shapeInputBox = new System.Windows.Forms.TextBox();
            this.shapeImageBox = new System.Windows.Forms.PictureBox();
            this.point1Box = new System.Windows.Forms.TextBox();
            this.point2Box = new System.Windows.Forms.TextBox();
            this.lengthRBox = new System.Windows.Forms.TextBox();
            this.widthBox = new System.Windows.Forms.TextBox();
            this.point1Label = new System.Windows.Forms.Label();
            this.point2Label = new System.Windows.Forms.Label();
            this.lengthRadiusL = new System.Windows.Forms.Label();
            this.widthL = new System.Windows.Forms.Label();
            this.shapeInfo = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.shapeImageBox)).BeginInit();
            this.SuspendLayout();
            // 
            // goButton
            // 
            this.goButton.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.goButton.Location = new System.Drawing.Point(13, 351);
            this.goButton.Name = "goButton";
            this.goButton.Size = new System.Drawing.Size(75, 23);
            this.goButton.TabIndex = 1;
            this.goButton.Text = "Go";
            this.goButton.UseVisualStyleBackColor = true;
            this.goButton.Click += new System.EventHandler(this.goButton_Click);
            // 
            // shapeInputBox
            // 
            this.shapeInputBox.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.shapeInputBox.Location = new System.Drawing.Point(94, 351);
            this.shapeInputBox.Name = "shapeInputBox";
            this.shapeInputBox.Size = new System.Drawing.Size(100, 20);
            this.shapeInputBox.TabIndex = 2;
            this.shapeInputBox.Text = "Shape Name";
            this.shapeInputBox.TextChanged += new System.EventHandler(this.shapeInputBox_TextChanged);
            // 
            // shapeImageBox
            // 
            this.shapeImageBox.BackColor = System.Drawing.Color.White;
            this.shapeImageBox.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.shapeImageBox.Location = new System.Drawing.Point(12, 12);
            this.shapeImageBox.Name = "shapeImageBox";
            this.shapeImageBox.Size = new System.Drawing.Size(292, 292);
            this.shapeImageBox.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.shapeImageBox.TabIndex = 3;
            this.shapeImageBox.TabStop = false;
            // 
            // point1Box
            // 
            this.point1Box.Location = new System.Drawing.Point(12, 325);
            this.point1Box.Name = "point1Box";
            this.point1Box.Size = new System.Drawing.Size(100, 20);
            this.point1Box.TabIndex = 4;
            // 
            // point2Box
            // 
            this.point2Box.Location = new System.Drawing.Point(137, 325);
            this.point2Box.Name = "point2Box";
            this.point2Box.Size = new System.Drawing.Size(100, 20);
            this.point2Box.TabIndex = 5;
            // 
            // lengthRBox
            // 
            this.lengthRBox.Location = new System.Drawing.Point(250, 325);
            this.lengthRBox.Name = "lengthRBox";
            this.lengthRBox.Size = new System.Drawing.Size(100, 20);
            this.lengthRBox.TabIndex = 6;
            // 
            // widthBox
            // 
            this.widthBox.Location = new System.Drawing.Point(370, 325);
            this.widthBox.Name = "widthBox";
            this.widthBox.Size = new System.Drawing.Size(100, 20);
            this.widthBox.TabIndex = 7;
            // 
            // point1Label
            // 
            this.point1Label.AutoSize = true;
            this.point1Label.Location = new System.Drawing.Point(12, 307);
            this.point1Label.Name = "point1Label";
            this.point1Label.Size = new System.Drawing.Size(37, 13);
            this.point1Label.TabIndex = 8;
            this.point1Label.Text = "Point1";
            // 
            // point2Label
            // 
            this.point2Label.AutoSize = true;
            this.point2Label.Location = new System.Drawing.Point(134, 307);
            this.point2Label.Name = "point2Label";
            this.point2Label.Size = new System.Drawing.Size(37, 13);
            this.point2Label.TabIndex = 10;
            this.point2Label.Text = "Point2";
            // 
            // lengthRadiusL
            // 
            this.lengthRadiusL.AutoSize = true;
            this.lengthRadiusL.Location = new System.Drawing.Point(247, 307);
            this.lengthRadiusL.Name = "lengthRadiusL";
            this.lengthRadiusL.Size = new System.Drawing.Size(78, 13);
            this.lengthRadiusL.TabIndex = 11;
            this.lengthRadiusL.Text = "Length/Radius";
            // 
            // widthL
            // 
            this.widthL.AutoSize = true;
            this.widthL.Location = new System.Drawing.Point(367, 307);
            this.widthL.Name = "widthL";
            this.widthL.Size = new System.Drawing.Size(35, 13);
            this.widthL.TabIndex = 12;
            this.widthL.Text = "Width";
            // 
            // shapeInfo
            // 
            this.shapeInfo.AutoSize = true;
            this.shapeInfo.Font = new System.Drawing.Font("Impact", 14F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.shapeInfo.Location = new System.Drawing.Point(325, 34);
            this.shapeInfo.Name = "shapeInfo";
            this.shapeInfo.Size = new System.Drawing.Size(0, 23);
            this.shapeInfo.TabIndex = 13;
            // 
            // ShapeInfoBroker
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Silver;
            this.ClientSize = new System.Drawing.Size(578, 381);
            this.Controls.Add(this.shapeInfo);
            this.Controls.Add(this.widthL);
            this.Controls.Add(this.lengthRadiusL);
            this.Controls.Add(this.point2Label);
            this.Controls.Add(this.point1Label);
            this.Controls.Add(this.widthBox);
            this.Controls.Add(this.lengthRBox);
            this.Controls.Add(this.point2Box);
            this.Controls.Add(this.point1Box);
            this.Controls.Add(this.shapeImageBox);
            this.Controls.Add(this.shapeInputBox);
            this.Controls.Add(this.goButton);
            this.Name = "ShapeInfoBroker";
            this.Text = "Shape Info Broker";
            ((System.ComponentModel.ISupportInitialize)(this.shapeImageBox)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button goButton;
        private System.Windows.Forms.TextBox shapeInputBox;
        private System.Windows.Forms.PictureBox shapeImageBox;
        private System.Windows.Forms.TextBox point1Box;
        private System.Windows.Forms.TextBox point2Box;
        private System.Windows.Forms.TextBox lengthRBox;
        private System.Windows.Forms.TextBox widthBox;
        private System.Windows.Forms.Label point1Label;
        private System.Windows.Forms.Label point2Label;
        private System.Windows.Forms.Label lengthRadiusL;
        private System.Windows.Forms.Label widthL;
        private System.Windows.Forms.Label shapeInfo;
    }
}

