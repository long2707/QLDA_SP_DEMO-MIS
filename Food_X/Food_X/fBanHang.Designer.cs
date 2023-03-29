namespace Food_X
{
    partial class fBanHang
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
            this.textNamKH = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.dgBanHang = new System.Windows.Forms.DataGridView();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.textSDT = new System.Windows.Forms.TextBox();
            this.panel3 = new System.Windows.Forms.Panel();
            this.cbxSP = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.panel4 = new System.Windows.Forms.Panel();
            this.txtSolg = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.panel5 = new System.Windows.Forms.Panel();
            this.txtDonGia = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.panel6 = new System.Windows.Forms.Panel();
            this.numGiamGia = new System.Windows.Forms.NumericUpDown();
            this.label6 = new System.Windows.Forms.Label();
            this.btnThem = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.panel7 = new System.Windows.Forms.Panel();
            this.txtThanhTien = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.button5 = new System.Windows.Forms.Button();
            this.label8 = new System.Windows.Forms.Label();
            this.labTongTien = new System.Windows.Forms.Label();
            this.btnTimKH = new System.Windows.Forms.Button();
            this.label9 = new System.Windows.Forms.Label();
            this.lbTongTien = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            this.flowLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgBanHang)).BeginInit();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.panel4.SuspendLayout();
            this.panel5.SuspendLayout();
            this.panel6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numGiamGia)).BeginInit();
            this.panel7.SuspendLayout();
            this.SuspendLayout();
            // 
            // textNamKH
            // 
            this.textNamKH.Location = new System.Drawing.Point(178, 3);
            this.textNamKH.Multiline = true;
            this.textNamKH.Name = "textNamKH";
            this.textNamKH.Size = new System.Drawing.Size(196, 31);
            this.textNamKH.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.textNamKH);
            this.panel1.Location = new System.Drawing.Point(13, 14);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(387, 56);
            this.panel1.TabIndex = 1;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label1.Location = new System.Drawing.Point(3, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(152, 23);
            this.label1.TabIndex = 1;
            this.label1.Text = "Tên Khách hàng:";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Controls.Add(this.dgBanHang);
            this.flowLayoutPanel1.Location = new System.Drawing.Point(11, 76);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(727, 368);
            this.flowLayoutPanel1.TabIndex = 2;
            // 
            // dgBanHang
            // 
            this.dgBanHang.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgBanHang.Location = new System.Drawing.Point(3, 3);
            this.dgBanHang.Name = "dgBanHang";
            this.dgBanHang.RowHeadersWidth = 51;
            this.dgBanHang.RowTemplate.Height = 24;
            this.dgBanHang.Size = new System.Drawing.Size(721, 365);
            this.dgBanHang.TabIndex = 0;
            this.dgBanHang.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgBanHang_CellContentClick);
            this.dgBanHang.Click += new System.EventHandler(this.dgBanHang_Click);
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.textSDT);
            this.panel2.Location = new System.Drawing.Point(422, 14);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(316, 56);
            this.panel2.TabIndex = 3;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label2.Location = new System.Drawing.Point(3, 11);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(54, 23);
            this.label2.TabIndex = 1;
            this.label2.Text = "SĐT:";
            this.label2.Click += new System.EventHandler(this.label2_Click);
            // 
            // textSDT
            // 
            this.textSDT.Location = new System.Drawing.Point(106, 3);
            this.textSDT.MaxLength = 10;
            this.textSDT.Multiline = true;
            this.textSDT.Name = "textSDT";
            this.textSDT.Size = new System.Drawing.Size(207, 31);
            this.textSDT.TabIndex = 0;
//            this.textSDT.TextChanged += new System.EventHandler(this.textSDT_TextChanged);
            // 
            // panel3
            // 
            this.panel3.Controls.Add(this.cbxSP);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Location = new System.Drawing.Point(754, 76);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(474, 60);
            this.panel3.TabIndex = 4;
            // 
            // cbxSP
            // 
            this.cbxSP.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.Suggest;
            this.cbxSP.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbxSP.FormattingEnabled = true;
            this.cbxSP.Location = new System.Drawing.Point(147, 18);
            this.cbxSP.Name = "cbxSP";
            this.cbxSP.Size = new System.Drawing.Size(324, 24);
            this.cbxSP.TabIndex = 2;
            this.cbxSP.SelectedIndexChanged += new System.EventHandler(this.cbxSP_SelectedIndexChanged);
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
            // panel4
            // 
            this.panel4.Controls.Add(this.txtSolg);
            this.panel4.Controls.Add(this.label4);
            this.panel4.Location = new System.Drawing.Point(754, 142);
            this.panel4.Name = "panel4";
            this.panel4.Size = new System.Drawing.Size(474, 60);
            this.panel4.TabIndex = 5;
            // 
            // txtSolg
            // 
            this.txtSolg.Location = new System.Drawing.Point(147, 11);
            this.txtSolg.Multiline = true;
            this.txtSolg.Name = "txtSolg";
            this.txtSolg.Size = new System.Drawing.Size(324, 31);
            this.txtSolg.TabIndex = 3;
            this.txtSolg.TextChanged += new System.EventHandler(this.txtSolg_TextChanged);
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
            // panel5
            // 
            this.panel5.Controls.Add(this.txtDonGia);
            this.panel5.Controls.Add(this.label5);
            this.panel5.Location = new System.Drawing.Point(754, 208);
            this.panel5.Name = "panel5";
            this.panel5.Size = new System.Drawing.Size(474, 60);
            this.panel5.TabIndex = 6;
            // 
            // txtDonGia
            // 
            this.txtDonGia.Location = new System.Drawing.Point(147, 11);
            this.txtDonGia.Multiline = true;
            this.txtDonGia.Name = "txtDonGia";
            this.txtDonGia.Size = new System.Drawing.Size(324, 31);
            this.txtDonGia.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label5.Location = new System.Drawing.Point(3, 19);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(82, 23);
            this.label5.TabIndex = 1;
            this.label5.Text = "Đơn giá:";
            // 
            // panel6
            // 
            this.panel6.Controls.Add(this.numGiamGia);
            this.panel6.Controls.Add(this.label6);
            this.panel6.Location = new System.Drawing.Point(754, 274);
            this.panel6.Name = "panel6";
            this.panel6.Size = new System.Drawing.Size(474, 60);
            this.panel6.TabIndex = 7;
            // 
            // numGiamGia
            // 
            this.numGiamGia.Location = new System.Drawing.Point(157, 22);
            this.numGiamGia.Name = "numGiamGia";
            this.numGiamGia.Size = new System.Drawing.Size(314, 22);
            this.numGiamGia.TabIndex = 19;
            this.numGiamGia.ValueChanged += new System.EventHandler(this.numGiamGia_ValueChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label6.Location = new System.Drawing.Point(3, 19);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(125, 23);
            this.label6.TabIndex = 1;
            this.label6.Text = "Giảm giá(%):";
            // 
            // btnThem
            // 
            this.btnThem.Location = new System.Drawing.Point(754, 406);
            this.btnThem.Name = "btnThem";
            this.btnThem.Size = new System.Drawing.Size(153, 39);
            this.btnThem.TabIndex = 8;
            this.btnThem.Text = "Thêm";
            this.btnThem.UseVisualStyleBackColor = true;
            this.btnThem.Click += new System.EventHandler(this.btnThem_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(928, 406);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(147, 39);
            this.button1.TabIndex = 9;
            this.button1.Text = "Sửa";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(1091, 406);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(134, 39);
            this.button2.TabIndex = 10;
            this.button2.Text = "Xóa";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(1057, 535);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(171, 91);
            this.button4.TabIndex = 12;
            this.button4.Text = "Thanh Toán";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // panel7
            // 
            this.panel7.Controls.Add(this.txtThanhTien);
            this.panel7.Controls.Add(this.label7);
            this.panel7.Location = new System.Drawing.Point(754, 340);
            this.panel7.Name = "panel7";
            this.panel7.Size = new System.Drawing.Size(474, 60);
            this.panel7.TabIndex = 13;
            // 
            // txtThanhTien
            // 
            this.txtThanhTien.Location = new System.Drawing.Point(147, 11);
            this.txtThanhTien.Multiline = true;
            this.txtThanhTien.Name = "txtThanhTien";
            this.txtThanhTien.Size = new System.Drawing.Size(324, 31);
            this.txtThanhTien.TabIndex = 2;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label7.Location = new System.Drawing.Point(3, 19);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(113, 23);
            this.label7.TabIndex = 1;
            this.label7.Text = "Thành Tiền:";
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(854, 535);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(177, 91);
            this.button5.TabIndex = 14;
            this.button5.Text = "Xóa Hóa Đơn";
            this.button5.UseVisualStyleBackColor = true;
            this.button5.Click += new System.EventHandler(this.button5_Click);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label8.Location = new System.Drawing.Point(14, 572);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(178, 32);
            this.label8.TabIndex = 15;
            this.label8.Text = "TỔNG TIỀN:";
            // 
            // labTongTien
            // 
            this.labTongTien.AutoSize = true;
            this.labTongTien.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.labTongTien.Location = new System.Drawing.Point(220, 572);
            this.labTongTien.Name = "labTongTien";
            this.labTongTien.Size = new System.Drawing.Size(0, 32);
            this.labTongTien.TabIndex = 16;
            // 
            // btnTimKH
            // 
            this.btnTimKH.FlatAppearance.BorderSize = 0;
            this.btnTimKH.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnTimKH.Location = new System.Drawing.Point(754, 9);
            this.btnTimKH.Name = "btnTimKH";
            this.btnTimKH.Size = new System.Drawing.Size(297, 34);
            this.btnTimKH.TabIndex = 17;
            this.btnTimKH.Text = "Check Thông Tin Khách Hàng";
            this.btnTimKH.UseVisualStyleBackColor = true;
            this.btnTimKH.Click += new System.EventHandler(this.btnTimKH_Click);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 9F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.label9.ForeColor = System.Drawing.Color.Red;
            this.label9.Location = new System.Drawing.Point(756, 46);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(295, 17);
            this.label9.TabIndex = 18;
            this.label9.Text = "(Tìm kiếm theo số điện thoại của khách hàng)";
            // 
            // lbTongTien
            // 
            this.lbTongTien.AutoSize = true;
            this.lbTongTien.Font = new System.Drawing.Font("Times New Roman", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.lbTongTien.Location = new System.Drawing.Point(198, 572);
            this.lbTongTien.Name = "lbTongTien";
            this.lbTongTien.Size = new System.Drawing.Size(28, 32);
            this.lbTongTien.TabIndex = 19;
            this.lbTongTien.Text = "0";
            // 
            // fBanHang
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.lbTongTien);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.btnTimKH);
            this.Controls.Add(this.labTongTien);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.panel7);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnThem);
            this.Controls.Add(this.panel6);
            this.Controls.Add(this.panel5);
            this.Controls.Add(this.panel4);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.panel1);
            this.Name = "fBanHang";
            this.Size = new System.Drawing.Size(1265, 638);
            this.Load += new System.EventHandler(this.fBanHang_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.flowLayoutPanel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgBanHang)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.panel4.ResumeLayout(false);
            this.panel4.PerformLayout();
            this.panel5.ResumeLayout(false);
            this.panel5.PerformLayout();
            this.panel6.ResumeLayout(false);
            this.panel6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numGiamGia)).EndInit();
            this.panel7.ResumeLayout(false);
            this.panel7.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox textNamKH;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox textSDT;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.ComboBox cbxSP;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel panel4;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel5;
        private System.Windows.Forms.TextBox txtDonGia;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel6;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnThem;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Panel panel7;
        private System.Windows.Forms.TextBox txtThanhTien;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.DataGridView dgBanHang;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label labTongTien;
        private System.Windows.Forms.Button btnTimKH;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.NumericUpDown numGiamGia;
        private System.Windows.Forms.TextBox txtSolg;
        private System.Windows.Forms.Label lbTongTien;
    }
}
