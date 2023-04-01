namespace Food_X
{
    partial class FSanPham
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
            this.btnSua = new System.Windows.Forms.Button();
            this.dataNhapKho = new System.Windows.Forms.DataGridView();
            this.cbxDanhMuc = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel7 = new System.Windows.Forms.Panel();
            this.txtGiaBan = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtGiaNhap = new System.Windows.Forms.TextBox();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txtSoLuongNhap = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.cbxSP = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.txtTImKiem = new System.Windows.Forms.TextBox();
            this.panel6 = new System.Windows.Forms.Panel();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dataNhapKho)).BeginInit();
            this.panel7.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel6.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnSua
            // 
            this.btnSua.BackColor = System.Drawing.Color.BlanchedAlmond;
            this.btnSua.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnSua.Location = new System.Drawing.Point(13, 377);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(513, 47);
            this.btnSua.TabIndex = 11;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = false;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // dataNhapKho
            // 
            this.dataNhapKho.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataNhapKho.Location = new System.Drawing.Point(0, 96);
            this.dataNhapKho.Name = "dataNhapKho";
            this.dataNhapKho.RowHeadersWidth = 51;
            this.dataNhapKho.RowTemplate.Height = 24;
            this.dataNhapKho.Size = new System.Drawing.Size(706, 530);
            this.dataNhapKho.TabIndex = 0;
            this.dataNhapKho.Click += new System.EventHandler(this.dataNhapKho_Click);
            // 
            // cbxDanhMuc
            // 
            this.cbxDanhMuc.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbxDanhMuc.FormattingEnabled = true;
            this.cbxDanhMuc.Location = new System.Drawing.Point(202, 18);
            this.cbxDanhMuc.Name = "cbxDanhMuc";
            this.cbxDanhMuc.Size = new System.Drawing.Size(321, 24);
            this.cbxDanhMuc.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.Location = new System.Drawing.Point(3, 19);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(176, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Danh mục sản phẩm";
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.cbxDanhMuc);
            this.panel7.Controls.Add(this.label5);
            this.panel7.Location = new System.Drawing.Point(6, 69);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(526, 60);
            this.panel7.TabIndex = 9;
            // 
            // txtGiaBan
            // 
            this.txtGiaBan.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.txtGiaBan.Location = new System.Drawing.Point(196, 11);
            this.txtGiaBan.Multiline = true;
            this.txtGiaBan.Name = "txtGiaBan";
            this.txtGiaBan.Size = new System.Drawing.Size(324, 31);
            this.txtGiaBan.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(3, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(93, 23);
            this.label1.TabIndex = 1;
            this.label1.Text = "Giá nhập:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(3, 19);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "Giá Bán:";
            // 
            // txtGiaNhap
            // 
            this.txtGiaNhap.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.txtGiaNhap.Location = new System.Drawing.Point(196, 11);
            this.txtGiaNhap.Multiline = true;
            this.txtGiaNhap.Name = "txtGiaNhap";
            this.txtGiaNhap.Size = new System.Drawing.Size(324, 31);
            this.txtGiaNhap.TabIndex = 2;
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.txtGiaNhap);
            this.panel5.Controls.Add(this.label1);
            this.panel5.Location = new System.Drawing.Point(6, 219);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(523, 60);
            this.panel5.TabIndex = 7;
            // 
            // txtSoLuongNhap
            // 
            this.txtSoLuongNhap.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.txtSoLuongNhap.Location = new System.Drawing.Point(199, 11);
            this.txtSoLuongNhap.Multiline = true;
            this.txtSoLuongNhap.Name = "txtSoLuongNhap";
            this.txtSoLuongNhap.Size = new System.Drawing.Size(324, 31);
            this.txtSoLuongNhap.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label4.Location = new System.Drawing.Point(3, 19);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(91, 23);
            this.label4.TabIndex = 1;
            this.label4.Text = "Số lượng:";
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.txtSoLuongNhap);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Location = new System.Drawing.Point(6, 153);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(526, 60);
            this.panel4.TabIndex = 6;
            // 
            // cbxSP
            // 
            this.cbxSP.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbxSP.FormattingEnabled = true;
            this.cbxSP.Location = new System.Drawing.Point(202, 21);
            this.cbxSP.Name = "cbxSP";
            this.cbxSP.Size = new System.Drawing.Size(324, 24);
            this.cbxSP.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label3.Location = new System.Drawing.Point(3, 19);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(125, 23);
            this.label3.TabIndex = 1;
            this.label3.Text = "Tên sản phẩm";
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.cbxSP);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Location = new System.Drawing.Point(6, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(529, 60);
            this.panel3.TabIndex = 5;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txtTImKiem);
            this.panel2.Controls.Add(this.dataNhapKho);
            this.panel2.Location = new System.Drawing.Point(556, 3);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(712, 629);
            this.panel2.TabIndex = 3;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.ForeColor = System.Drawing.Color.Red;
            this.label6.Location = new System.Drawing.Point(3, 56);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(215, 19);
            this.label6.TabIndex = 13;
            this.label6.Text = "(Tìm kiếm theo tên sản phẩm)";
            // 
            // txtTImKiem
            // 
            this.txtTImKiem.Location = new System.Drawing.Point(3, 22);
            this.txtTImKiem.Multiline = true;
            this.txtTImKiem.Name = "txtTImKiem";
            this.txtTImKiem.Size = new System.Drawing.Size(582, 31);
            this.txtTImKiem.TabIndex = 12;
            this.txtTImKiem.TextChanged += new System.EventHandler(this.txtTImKiem_TextChanged);
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.txtGiaBan);
            this.panel6.Controls.Add(this.label2);
            this.panel6.Location = new System.Drawing.Point(6, 285);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(526, 60);
            this.panel6.TabIndex = 8;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Controls.Add(this.btnSua);
            this.panel1.Controls.Add(this.panel7);
            this.panel1.Controls.Add(this.panel6);
            this.panel1.Controls.Add(this.panel5);
            this.panel1.Controls.Add(this.panel4);
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Location = new System.Drawing.Point(15, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(535, 629);
            this.panel1.TabIndex = 2;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // FSanPham
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "FSanPham";
            this.Size = new System.Drawing.Size(1287, 653);
            this.Load += new System.EventHandler(this.FSanPham_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataNhapKho)).EndInit();
            this.panel7.ResumeLayout(false);
            this.panel7.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.DataGridView dataNhapKho;
        private System.Windows.Forms.ComboBox cbxDanhMuc;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.TextBox txtGiaBan;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtGiaNhap;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txtSoLuongNhap;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.ComboBox cbxSP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtTImKiem;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label6;
    }
}
