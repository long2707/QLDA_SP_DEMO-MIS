namespace Food_X
{
    partial class FNhapHang
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel8 = new System.Windows.Forms.Panel();
            this.cbxNhaCungCap = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.btnXoa = new System.Windows.Forms.Button();
            this.btnSua = new System.Windows.Forms.Button();
            this.btnThem = new System.Windows.Forms.Button();
            this.panel7 = new System.Windows.Forms.Panel();
            this.cbxDanhMuc = new System.Windows.Forms.ComboBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel6 = new System.Windows.Forms.Panel();
            this.txtGiaBan = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txtGiaNhap = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.txtSoLuongNhap = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel3 = new System.Windows.Forms.Panel();
            this.cbxSP = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.dataNhapKho = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.btnXuatPhieu = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            this.panel8.SuspendLayout();
            this.panel7.SuspendLayout();
            this.panel6.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataNhapKho)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnXuatPhieu);
            this.panel1.Controls.Add(this.panel8);
            this.panel1.Controls.Add(this.btnXoa);
            this.panel1.Controls.Add(this.btnSua);
            this.panel1.Controls.Add(this.btnThem);
            this.panel1.Controls.Add(this.panel7);
            this.panel1.Controls.Add(this.panel6);
            this.panel1.Controls.Add(this.panel5);
            this.panel1.Controls.Add(this.panel4);
            this.panel1.Controls.Add(this.panel3);
            this.panel1.Location = new System.Drawing.Point(4, 4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(535, 602);
            this.panel1.TabIndex = 0;
            // 
            // panel8
            // 
            this.panel8.Controls.Add(this.cbxNhaCungCap);
            this.panel8.Controls.Add(this.label6);
            this.panel8.Location = new System.Drawing.Point(6, 155);
            this.panel8.Name = "panel8";
            this.panel8.Size = new System.Drawing.Size(526, 60);
            this.panel8.TabIndex = 13;
            // 
            // cbxNhaCungCap
            // 
            this.cbxNhaCungCap.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbxNhaCungCap.FormattingEnabled = true;
            this.cbxNhaCungCap.Location = new System.Drawing.Point(196, 18);
            this.cbxNhaCungCap.Name = "cbxNhaCungCap";
            this.cbxNhaCungCap.Size = new System.Drawing.Size(327, 24);
            this.cbxNhaCungCap.TabIndex = 2;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.Location = new System.Drawing.Point(3, 19);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(122, 23);
            this.label6.TabIndex = 1;
            this.label6.Text = "Nhà cung cấp";
            // 
            // btnXoa
            // 
            this.btnXoa.Location = new System.Drawing.Point(384, 457);
            this.btnXoa.Name = "btnXoa";
            this.btnXoa.Size = new System.Drawing.Size(142, 47);
            this.btnXoa.TabIndex = 12;
            this.btnXoa.Text = "Xóa";
            this.btnXoa.UseVisualStyleBackColor = true;
            this.btnXoa.Click += new System.EventHandler(this.btnXoa_Click);
            // 
            // btnSua
            // 
            this.btnSua.Location = new System.Drawing.Point(198, 457);
            this.btnSua.Name = "btnSua";
            this.btnSua.Size = new System.Drawing.Size(144, 47);
            this.btnSua.TabIndex = 11;
            this.btnSua.Text = "Sửa";
            this.btnSua.UseVisualStyleBackColor = true;
            this.btnSua.Click += new System.EventHandler(this.btnSua_Click);
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(6, 457);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(150, 47);
            this.btnThem.TabIndex = 10;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.cbxDanhMuc);
            this.panel7.Controls.Add(this.label5);
            this.panel7.Location = new System.Drawing.Point(6, 80);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(526, 60);
            this.panel7.TabIndex = 9;
            // 
            // cbxDanhMuc
            // 
            this.cbxDanhMuc.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbxDanhMuc.FormattingEnabled = true;
            this.cbxDanhMuc.Location = new System.Drawing.Point(196, 18);
            this.cbxDanhMuc.Name = "cbxDanhMuc";
            this.cbxDanhMuc.Size = new System.Drawing.Size(327, 24);
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
            // panel6
            // 
            this.panel6.Controls.Add(this.txtGiaBan);
            this.panel6.Controls.Add(this.label2);
            this.panel6.Location = new System.Drawing.Point(6, 374);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(526, 60);
            this.panel6.TabIndex = 8;
            // 
            // txtGiaBan
            // 
            this.txtGiaBan.Location = new System.Drawing.Point(196, 11);
            this.txtGiaBan.Multiline = true;
            this.txtGiaBan.Name = "txtGiaBan";
            this.txtGiaBan.Size = new System.Drawing.Size(324, 31);
            this.txtGiaBan.TabIndex = 2;
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
            // panel5
            // 
            this.panel5.Controls.Add(this.txtGiaNhap);
            this.panel5.Controls.Add(this.label1);
            this.panel5.Location = new System.Drawing.Point(6, 296);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(523, 60);
            this.panel5.TabIndex = 7;
            // 
            // txtGiaNhap
            // 
            this.txtGiaNhap.Location = new System.Drawing.Point(196, 11);
            this.txtGiaNhap.Multiline = true;
            this.txtGiaNhap.Name = "txtGiaNhap";
            this.txtGiaNhap.Size = new System.Drawing.Size(324, 31);
            this.txtGiaNhap.TabIndex = 2;
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
            // panel4
            // 
            this.panel4.Controls.Add(this.txtSoLuongNhap);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Location = new System.Drawing.Point(6, 221);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(526, 60);
            this.panel4.TabIndex = 6;
            // 
            // txtSoLuongNhap
            // 
            this.txtSoLuongNhap.Location = new System.Drawing.Point(196, 11);
            this.txtSoLuongNhap.Multiline = true;
            this.txtSoLuongNhap.Name = "txtSoLuongNhap";
            this.txtSoLuongNhap.Size = new System.Drawing.Size(327, 31);
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
            // panel3
            // 
            this.panel3.Controls.Add(this.cbxSP);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Location = new System.Drawing.Point(6, 3);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(529, 60);
            this.panel3.TabIndex = 5;
            // 
            // cbxSP
            // 
            this.cbxSP.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cbxSP.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbxSP.FormattingEnabled = true;
            this.cbxSP.Location = new System.Drawing.Point(196, 21);
            this.cbxSP.Name = "cbxSP";
            this.cbxSP.Size = new System.Drawing.Size(330, 24);
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
            // dataNhapKho
            // 
            this.dataNhapKho.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataNhapKho.Location = new System.Drawing.Point(0, 22);
            this.dataNhapKho.Name = "dataNhapKho";
            this.dataNhapKho.RowHeadersWidth = 51;
            this.dataNhapKho.RowTemplate.Height = 24;
            this.dataNhapKho.Size = new System.Drawing.Size(706, 530);
            this.dataNhapKho.TabIndex = 0;
            this.dataNhapKho.Click += new System.EventHandler(this.dataNhapKho_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.dataNhapKho);
            this.panel2.Location = new System.Drawing.Point(545, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(712, 602);
            this.panel2.TabIndex = 1;
            // 
            // btnXuatPhieu
            // 
            this.btnXuatPhieu.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(192)))), ((int)(((byte)(255)))), ((int)(((byte)(192)))));
            this.btnXuatPhieu.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnXuatPhieu.ForeColor = System.Drawing.Color.Black;
            this.btnXuatPhieu.Location = new System.Drawing.Point(6, 538);
            this.btnXuatPhieu.Name = "btnXuatPhieu";
            this.btnXuatPhieu.Size = new System.Drawing.Size(526, 61);
            this.btnXuatPhieu.TabIndex = 11;
            this.btnXuatPhieu.Text = "Xuất phiếu nhập kho";
            this.btnXuatPhieu.UseVisualStyleBackColor = false;
            this.btnXuatPhieu.Click += new System.EventHandler(this.btnXuatPhieu_Click);
            // 
            // FNhapHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "FNhapHang";
            this.Size = new System.Drawing.Size(1260, 609);
            this.Load += new System.EventHandler(this.FNhapHang_Load);
            this.panel1.ResumeLayout(false);
            this.panel8.ResumeLayout(false);
            this.panel8.PerformLayout();
            this.panel7.ResumeLayout(false);
            this.panel7.PerformLayout();
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataNhapKho)).EndInit();
            this.panel2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnXoa;
        private System.Windows.Forms.Button btnSua;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.ComboBox cbxDanhMuc;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.TextBox txtGiaBan;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txtGiaNhap;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.TextBox txtSoLuongNhap;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.ComboBox cbxSP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dataNhapKho;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel8;
        private System.Windows.Forms.ComboBox cbxNhaCungCap;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnXuatPhieu;
    }
}
