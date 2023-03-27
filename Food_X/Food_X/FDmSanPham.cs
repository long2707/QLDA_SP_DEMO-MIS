﻿using Food_X.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Food_X
{
    public partial class FDmSanPham : UserControl
    {
        private string maDM;
        public FDmSanPham()
        {
            InitializeComponent();
        }
        DataProvider kn = new DataProvider();

        private void button1_Click(object sender, EventArgs e)
        {
            kn.xuLy("INSERT INTO DANHMUC(TenDM) SELECT N'"+textBox1.Text+"'");
            MessageBox.Show("Thêm danh mục thành công", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            LoadDataView();
            textBox1.Text = "";
        }

        private void FDmSanPham_Load(object sender, EventArgs e)
        {
            LoadDataView();
        }
       
        private void LoadDataView()
        {
            dgDmSP.DataSource = kn.xuLy("SELECT*FROM DANHMUC");
            dgDmSP.AllowUserToAddRows = false;
        }

        private void dgDmSP_Click(object sender, EventArgs e)
        {
            int i = dgDmSP.CurrentRow.Index;
            // cbxSP.SelectedValue= dgBanHang.Rows[i].Cells[0].Value.ToString();
              maDM = dgDmSP.Rows[i].Cells[0].Value.ToString();
            textBox1.Text = dgDmSP.Rows[i].Cells[1].Value.ToString();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(maDM) == 1)
            {
                MessageBox.Show("Danh mục này không được phép xóa", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {

                kn.xuLy("EXEC XOADANHMUC " + maDM + "");
                LoadDataView();
                textBox1.Text = "";
                MessageBox.Show("Xóa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            kn.xuLy("UPDATE DANHMUC SET TenDM  = '" + textBox1.Text + "' WHERE MaDM =" + Convert.ToInt32(maDM) + "");
            MessageBox.Show("Cập nhật danh mục thành công", "thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            textBox1.Text = "";
        }
    }
}