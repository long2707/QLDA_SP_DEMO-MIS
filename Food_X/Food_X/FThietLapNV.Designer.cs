namespace Food_X
{
    partial class FThietLapNV
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

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.panel9 = new System.Windows.Forms.Panel();
            this.txtConfirmPass = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.panel10 = new System.Windows.Forms.Panel();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.panel9.SuspendLayout();
            this.panel10.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel9
            // 
            this.panel9.Controls.Add(this.txtConfirmPass);
            this.panel9.Controls.Add(this.label8);
            this.panel9.Location = new System.Drawing.Point(18, 136);
            this.panel9.Name = "panel9";
            this.panel9.Size = new System.Drawing.Size(620, 54);
            this.panel9.TabIndex = 16;
            // 
            // txtConfirmPass
            // 
            this.txtConfirmPass.Location = new System.Drawing.Point(197, 13);
            this.txtConfirmPass.Name = "txtConfirmPass";
            this.txtConfirmPass.Size = new System.Drawing.Size(407, 22);
            this.txtConfirmPass.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label8.Location = new System.Drawing.Point(3, 15);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(153, 17);
            this.label8.TabIndex = 0;
            this.label8.Text = "Nhập lại mật khẩu mới";
            // 
            // panel10
            // 
            this.panel10.Controls.Add(this.txtPass);
            this.panel10.Controls.Add(this.label9);
            this.panel10.Location = new System.Drawing.Point(18, 57);
            this.panel10.Name = "panel10";
            this.panel10.Size = new System.Drawing.Size(620, 52);
            this.panel10.TabIndex = 15;
            // 
            // txtPass
            // 
            this.txtPass.Location = new System.Drawing.Point(197, 16);
            this.txtPass.Name = "txtPass";
            this.txtPass.Size = new System.Drawing.Size(398, 22);
            this.txtPass.TabIndex = 1;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label9.Location = new System.Drawing.Point(3, 16);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(134, 17);
            this.label9.TabIndex = 0;
            this.label9.Text = "Nhập mật khẩu mới";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(18, 212);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(620, 37);
            this.button1.TabIndex = 17;
            this.button1.Text = "THAY ĐỔI MẬT KHẨU";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FThietLapNV
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.button1);
            this.Controls.Add(this.panel9);
            this.Controls.Add(this.panel10);
            this.Name = "FThietLapNV";
            this.Size = new System.Drawing.Size(674, 299);
            this.panel9.ResumeLayout(false);
            this.panel9.PerformLayout();
            this.panel10.ResumeLayout(false);
            this.panel10.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel9;
        private System.Windows.Forms.TextBox txtConfirmPass;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Panel panel10;
        private System.Windows.Forms.TextBox txtPass;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Button button1;
    }
}
