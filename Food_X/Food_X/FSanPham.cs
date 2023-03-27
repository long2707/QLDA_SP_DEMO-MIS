using Food_X.DTO;
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
    public partial class FSanPham : UserControl
    {
        private string MaSanPham ="";
        DataProvider kn = new DataProvider();
        public FSanPham()
        {
            InitializeComponent();
        }

        private void LoaddataView()
        {
            dataNhapKho.DataSource = kn.xuLy("EXEC GETSANPHAM N'"+txtTImKiem.Text+"'");
            dataNhapKho.AllowUserToAddRows = false;
        }
        private void btnSua_Click(object sender, EventArgs e)
        {
            kn.xuLy("UPDATE SANPHAM SET SoLuong= " + Convert.ToInt32(txtSoLuongNhap.Text) + ", GiaBan=" + Convert.ToDecimal(txtGiaBan.Text) + ", GiaNhap=" + Convert.ToDecimal(txtGiaNhap.Text) + " WHERE  MaSP= '"+MaSanPham+"'");
             MessageBox.Show("Sửa sản phẩm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LoaddataView();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            kn.xuLy("EXEC XOASANPHAM '"+MaSanPham+"'");
            MessageBox.Show("Xóa sản phẩm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            cbxSP.Text = "";
            cbxDanhMuc.Text = "";
            txtGiaBan.Text = "";
            txtGiaNhap.Text = "";
            txtSoLuongNhap.Text = "";
            LoaddataView();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void FSanPham_Load(object sender, EventArgs e)
        {
            LoaddataView();
        }

        private void dataNhapKho_Click(object sender, EventArgs e)
        {
            int i = dataNhapKho.CurrentRow.Index;
            MaSanPham = dataNhapKho.Rows[i].Cells[0].Value.ToString();
            cbxSP.Text = dataNhapKho.Rows[i].Cells[1].Value.ToString();
            cbxDanhMuc.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[2].Value);
            txtSoLuongNhap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[5].Value);
            txtGiaNhap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[4].Value);
            txtGiaBan.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[3].Value);
            cbxSP.Enabled = false;
             cbxDanhMuc.Enabled = false;
            
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            LoaddataView();
        }

       
    }
}
