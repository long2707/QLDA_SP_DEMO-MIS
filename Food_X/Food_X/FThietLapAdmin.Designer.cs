namespace Food_X
{
    partial class FThietLapAdmin
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
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtTenDn = new System.Windows.Forms.TextBox();
            this.tenDangNhap = new System.Windows.Forms.Label();
            this.dgNhanVien = new System.Windows.Forms.DataGridView();
            this.panel4 = new System.Windows.Forms.Panel();
            this.txtDiachi = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txtSdt = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel6 = new System.Windows.Forms.Panel();
            this.txtTenNv = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dgKhachHang = new System.Windows.Forms.DataGridView();
            this.btnXoaNCC = new System.Windows.Forms.Button();
            this.btnThemNCC = new System.Windows.Forms.Button();
            this.panel8 = new System.Windows.Forms.Panel();
            this.txtDiaChiNCC = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.panel9 = new System.Windows.Forms.Panel();
            this.txtSDTNCC = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.panel10 = new System.Windows.Forms.Panel();
            this.txtTenNCC = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgNhanVien)).BeginInit();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel6.SuspendLayout();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgKhachHang)).BeginInit();
            this.panel8.SuspendLayout();
            this.panel9.SuspendLayout();
            this.panel10.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(3, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1328, 636);
            this.tabControl1.TabIndex = 0;
            this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            this.tabControl1.Click += new System.EventHandler(this.tabControl1_Click);
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.button3);
            this.tabPage1.Controls.Add(this.button2);
            this.tabPage1.Controls.Add(this.button1);
            this.tabPage1.Controls.Add(this.panel2);
            this.tabPage1.Controls.Add(this.panel1);
            this.tabPage1.Controls.Add(this.dgNhanVien);
            this.tabPage1.Controls.Add(this.panel4);
            this.tabPage1.Controls.Add(this.panel5);
            this.tabPage1.Controls.Add(this.panel6);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1320, 607);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Quản lý nhân viên";
            this.tabPage1.UseVisualStyleBackColor = true;
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(1023, 279);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(219, 38);
            this.button3.TabIndex = 12;
            this.button3.Text = "SỬA THÔNG TIIN NHÂN VIÊN";
            this.button3.UseVisualStyleBackColor = true;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(860, 279);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(157, 38);
            this.button2.TabIndex = 11;
            this.button2.Text = "XÓA NHÂN VIÊN";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(659, 279);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(195, 38);
            this.button1.TabIndex = 10;
            this.button1.Text = "THÊM NHÂN VIÊN";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.comboBox1);
            this.panel2.Controls.Add(this.label1);
            this.panel2.Location = new System.Drawing.Point(660, 156);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(586, 44);
            this.panel2.TabIndex = 9;
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Location = new System.Drawing.Point(135, 10);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(447, 24);
            this.comboBox1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(12, 10);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(63, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Chức vụ";
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.txtTenDn);
            this.panel1.Controls.Add(this.tenDangNhap);
            this.panel1.Location = new System.Drawing.Point(659, 208);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(586, 44);
            this.panel1.TabIndex = 8;
            // 
            // txtTenDn
            // 
            this.txtTenDn.Location = new System.Drawing.Point(135, 8);
            this.txtTenDn.Name = "txtTenDn";
            this.txtTenDn.Size = new System.Drawing.Size(448, 22);
            this.txtTenDn.TabIndex = 2;
            // 
            // tenDangNhap
            // 
            this.tenDangNhap.AutoSize = true;
            this.tenDangNhap.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.tenDangNhap.Location = new System.Drawing.Point(12, 10);
            this.tenDangNhap.Name = "tenDangNhap";
            this.tenDangNhap.Size = new System.Drawing.Size(104, 17);
            this.tenDangNhap.TabIndex = 0;
            this.tenDangNhap.Text = "Tên đăng nhập";
            // 
            // dgNhanVien
            // 
            this.dgNhanVien.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgNhanVien.Location = new System.Drawing.Point(6, 3);
            this.dgNhanVien.Name = "dgNhanVien";
            this.dgNhanVien.RowHeadersWidth = 51;
            this.dgNhanVien.RowTemplate.Height = 24;
            this.dgNhanVien.Size = new System.Drawing.Size(639, 570);
            this.dgNhanVien.TabIndex = 7;
            this.dgNhanVien.Click += new System.EventHandler(this.dgNhanVien_Click);
            // 
            // panel4
            // 
            this.panel4.Controls.Add(this.txtDiachi);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Location = new System.Drawing.Point(659, 106);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(586, 44);
            this.panel4.TabIndex = 6;
            // 
            // txtDiachi
            // 
            this.txtDiachi.Location = new System.Drawing.Point(135, 8);
            this.txtDiachi.Name = "txtDiachi";
            this.txtDiachi.Size = new System.Drawing.Size(448, 22);
            this.txtDiachi.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label4.Location = new System.Drawing.Point(12, 10);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 17);
            this.label4.TabIndex = 0;
            this.label4.Text = "Địa chỉ";
            // 
            // panel5
            // 
            this.panel5.Controls.Add(this.txtSdt);
            this.panel5.Controls.Add(this.label5);
            this.panel5.Location = new System.Drawing.Point(660, 56);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(586, 44);
            this.panel5.TabIndex = 5;
            // 
            // txtSdt
            // 
            this.txtSdt.Location = new System.Drawing.Point(135, 8);
            this.txtSdt.Name = "txtSdt";
            this.txtSdt.Size = new System.Drawing.Size(448, 22);
            this.txtSdt.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.Location = new System.Drawing.Point(12, 10);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(92, 17);
            this.label5.TabIndex = 0;
            this.label5.Text = "Số điện thoại";
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.txtTenNv);
            this.panel6.Controls.Add(this.label6);
            this.panel6.Location = new System.Drawing.Point(660, 6);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(586, 44);
            this.panel6.TabIndex = 4;
            // 
            // txtTenNv
            // 
            this.txtTenNv.Location = new System.Drawing.Point(135, 10);
            this.txtTenNv.Name = "txtTenNv";
            this.txtTenNv.Size = new System.Drawing.Size(448, 22);
            this.txtTenNv.TabIndex = 1;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.Location = new System.Drawing.Point(12, 10);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(101, 17);
            this.label6.TabIndex = 0;
            this.label6.Text = "Tên nhân viên";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.btnXoaNCC);
            this.tabPage2.Controls.Add(this.btnThemNCC);
            this.tabPage2.Controls.Add(this.panel8);
            this.tabPage2.Controls.Add(this.panel9);
            this.tabPage2.Controls.Add(this.panel10);
            this.tabPage2.Controls.Add(this.dgKhachHang);
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1320, 607);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Quản lý nhà cung cấp";
            this.tabPage2.UseVisualStyleBackColor = true;
            this.tabPage2.Click += new System.EventHandler(this.tabPage2_Click);
            // 
            // dgKhachHang
            // 
            this.dgKhachHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgKhachHang.Location = new System.Drawing.Point(7, 6);
            this.dgKhachHang.Name = "dgKhachHang";
            this.dgKhachHang.RowHeadersWidth = 51;
            this.dgKhachHang.RowTemplate.Height = 24;
            this.dgKhachHang.Size = new System.Drawing.Size(662, 596);
            this.dgKhachHang.TabIndex = 0;
            this.dgKhachHang.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgKhachHang_CellContentClick);
            this.dgKhachHang.Click += new System.EventHandler(this.dgKhachHang_Click);
            // 
            // btnXoaNCC
            // 
            this.btnXoaNCC.Location = new System.Drawing.Point(990, 279);
            this.btnXoaNCC.Name = "btnXoaNCC";
            this.btnXoaNCC.Size = new System.Drawing.Size(268, 38);
            this.btnXoaNCC.TabIndex = 20;
            this.btnXoaNCC.Text = "CẬP NHẬT NHÀ CUNG CẤP";
            this.btnXoaNCC.UseVisualStyleBackColor = true;
            this.btnXoaNCC.Click += new System.EventHandler(this.btnXoaNCC_Click);
            // 
            // btnThemNCC
            // 
            this.btnThemNCC.Location = new System.Drawing.Point(674, 279);
            this.btnThemNCC.Name = "btnThemNCC";
            this.btnThemNCC.Size = new System.Drawing.Size(310, 38);
            this.btnThemNCC.TabIndex = 18;
            this.btnThemNCC.Text = "THÊM NHÀ CUNG CẤP";
            this.btnThemNCC.UseVisualStyleBackColor = true;
            this.btnThemNCC.Click += new System.EventHandler(this.btnThemNCC_Click);
            // 
            // panel8
            // 
            this.panel8.Controls.Add(this.txtDiaChiNCC);
            this.panel8.Controls.Add(this.label7);
            this.panel8.Location = new System.Drawing.Point(675, 160);
            this.panel8.Name = "panel8";
            this.panel8.Size = new System.Drawing.Size(586, 44);
            this.panel8.TabIndex = 15;
            // 
            // txtDiaChiNCC
            // 
            this.txtDiaChiNCC.Location = new System.Drawing.Point(151, 8);
            this.txtDiaChiNCC.Name = "txtDiaChiNCC";
            this.txtDiaChiNCC.Size = new System.Drawing.Size(432, 22);
            this.txtDiaChiNCC.TabIndex = 2;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label7.Location = new System.Drawing.Point(12, 10);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 17);
            this.label7.TabIndex = 0;
            this.label7.Text = "Địa chỉ";
            // 
            // panel9
            // 
            this.panel9.Controls.Add(this.txtSDTNCC);
            this.panel9.Controls.Add(this.label8);
            this.panel9.Location = new System.Drawing.Point(675, 85);
            this.panel9.Name = "panel9";
            this.panel9.Size = new System.Drawing.Size(586, 44);
            this.panel9.TabIndex = 14;
            // 
            // txtSDTNCC
            // 
            this.txtSDTNCC.Location = new System.Drawing.Point(150, 8);
            this.txtSDTNCC.Name = "txtSDTNCC";
            this.txtSDTNCC.Size = new System.Drawing.Size(433, 22);
            this.txtSDTNCC.TabIndex = 2;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label8.Location = new System.Drawing.Point(12, 10);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(92, 17);
            this.label8.TabIndex = 0;
            this.label8.Text = "Số điện thoại";
            // 
            // panel10
            // 
            this.panel10.Controls.Add(this.txtTenNCC);
            this.panel10.Controls.Add(this.label9);
            this.panel10.Location = new System.Drawing.Point(675, 6);
            this.panel10.Name = "panel10";
            this.panel10.Size = new System.Drawing.Size(586, 44);
            this.panel10.TabIndex = 13;
            // 
            // txtTenNCC
            // 
            this.txtTenNCC.Location = new System.Drawing.Point(150, 10);
            this.txtTenNCC.Name = "txtTenNCC";
            this.txtTenNCC.Size = new System.Drawing.Size(433, 22);
            this.txtTenNCC.TabIndex = 1;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label9.Location = new System.Drawing.Point(12, 10);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(122, 17);
            this.label9.TabIndex = 0;
            this.label9.Text = "Tên nhà cung cấp";
            // 
            // FThietLapAdmin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tabControl1);
            this.Name = "FThietLapAdmin";
            this.Size = new System.Drawing.Size(1334, 640);
            this.Load += new System.EventHandler(this.FThietLapAdmin_Load);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgNhanVien)).EndInit();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgKhachHang)).EndInit();
            this.panel8.ResumeLayout(false);
            this.panel8.PerformLayout();
            this.panel9.ResumeLayout(false);
            this.panel9.PerformLayout();
            this.panel10.ResumeLayout(false);
            this.panel10.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.TextBox txtDiachi;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txtSdt;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.TextBox txtTenNv;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView dgNhanVien;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.ComboBox comboBox1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtTenDn;
        private System.Windows.Forms.Label tenDangNhap;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridView dgKhachHang;
        private System.Windows.Forms.Button btnXoaNCC;
        private System.Windows.Forms.Button btnThemNCC;
        private System.Windows.Forms.Panel panel8;
        private System.Windows.Forms.TextBox txtDiaChiNCC;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Panel panel9;
        private System.Windows.Forms.TextBox txtSDTNCC;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Panel panel10;
        private System.Windows.Forms.TextBox txtTenNCC;
        private System.Windows.Forms.Label label9;
    }
}
