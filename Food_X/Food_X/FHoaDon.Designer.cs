namespace Food_X
{
    partial class FHoaDon
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
            this.btnTimKiem = new System.Windows.Forms.Button();
            this.dgHoadon = new System.Windows.Forms.DataGridView();
            this.timePick = new System.Windows.Forms.DateTimePicker();
            ((System.ComponentModel.ISupportInitialize)(this.dgHoadon)).BeginInit();
            this.SuspendLayout();
            // 
            // btnTimKiem
            // 
            this.btnTimKiem.Location = new System.Drawing.Point(459, 9);
            this.btnTimKiem.Name = "btnTimKiem";
            this.btnTimKiem.Size = new System.Drawing.Size(115, 46);
            this.btnTimKiem.TabIndex = 1;
            this.btnTimKiem.Text = "Tìm Kiếm";
            this.btnTimKiem.UseVisualStyleBackColor = true;
            this.btnTimKiem.Click += new System.EventHandler(this.btnTimKiem_Click);
            // 
            // dgHoadon
            // 
            this.dgHoadon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgHoadon.Location = new System.Drawing.Point(16, 84);
            this.dgHoadon.Name = "dgHoadon";
            this.dgHoadon.RowHeadersWidth = 51;
            this.dgHoadon.RowTemplate.Height = 24;
            this.dgHoadon.Size = new System.Drawing.Size(1188, 521);
            this.dgHoadon.TabIndex = 2;
            this.dgHoadon.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // timePick
            // 
            this.timePick.Location = new System.Drawing.Point(16, 19);
            this.timePick.Name = "timePick";
            this.timePick.Size = new System.Drawing.Size(423, 22);
            this.timePick.TabIndex = 3;
            // 
            // FHoaDon
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.timePick);
            this.Controls.Add(this.dgHoadon);
            this.Controls.Add(this.btnTimKiem);
            this.Name = "FHoaDon";
            this.Size = new System.Drawing.Size(1225, 621);
            this.Load += new System.EventHandler(this.FHoaDon_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgHoadon)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnTimKiem;
        private System.Windows.Forms.DataGridView dgHoadon;
        private System.Windows.Forms.DateTimePicker timePick;
    }
}
