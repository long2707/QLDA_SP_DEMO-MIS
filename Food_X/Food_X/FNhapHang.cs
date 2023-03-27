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
    public partial class FNhapHang : UserControl
    {
        public string maphieunhap = "";
         private string maNV { get; set; }
        public FNhapHang(string maNV)
        {
            InitializeComponent();
            this.maNV = maNV;
        }
        DataProvider kn = new DataProvider();
        private void FNhapHang_Load(object sender, EventArgs e)
        {
            cbxSP.DataSource = kn.xuLy("SELECT MaSP,TenSP FROM SANPHAM");
            cbxSP.ValueMember = "MaSP";
            cbxSP.DisplayMember = "TenSP";

          
            cbxDanhMuc.DataSource = kn.xuLy("SELECT MaDM, TenDM FROM DANHMUC");
            cbxDanhMuc.ValueMember = "MaDM";
            cbxDanhMuc.DisplayMember = "TenDM";
        }
        private void resetHang()
        {
            cbxSP.Text = "";
            cbxDanhMuc.Text = "";
            txtSoLuongNhap.Text = "";
            txtGiaNhap.Text = "";
            txtGiaBan.Text = "";
        }
        private void LoadDataGridView()
        {
            string sql;
            sql = "EXEC XUATTHONGTINPHIEUNHAP '"+maphieunhap+"'";
            dataNhapKho.DataSource = kn.xuLy(sql);
            dataNhapKho.AllowUserToAddRows = false;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            string sql = "SELECT MaPhieuNhap FROM PHIEUNHAPKHO WHERE CONVERT(varchar(100), MaPhieuNhap) = '" + maphieunhap + "'";
            if (Convert.ToInt32(txtSoLuongNhap.Text) <= 0)
            {
                MessageBox.Show("Nhập số lượng sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }



            if (!Helper.CheckKey(sql))
            {
                kn.xuLy("INSERT INTO PHIEUNHAPKHO(MaNV, MaNCC, NgayLapHD) VALUES('" + maNV + "' , 1, GETDATE())");


            }
            DataTable dt = kn.xuLy("SELECT MaPhieuNhap FROM PHIEUNHAPKHO WHERE CONVERT(varchar(100), MaNV)= '" + maNV + "' AND  MaNCC= 1  ORDER BY NgayLapHD DESC");
            maphieunhap = dt.Rows[0]["MaPhieuNhap"].ToString();

            // EXEC NHAPKHOSANPHAM @maphieu = '"++"', @masp = '235DDCD0-67EF-4504-B051-0F10285CF208', @madm = 1, @tensp = '', @soluong = 10, @gianhap = 12233233, @giaban = 123443
            string s = Convert.ToString(cbxSP.SelectedValue);
           // kn.xuLy("EXEC NHAPKHOSANPHAM '" + maphieunhap + "', '" + cbxSP.SelectedValue + "', '"+cbxDanhMuc.SelectedValue+"', '"+cbxSP.SelectedText+"' ," + Convert.ToInt32(txtSoLuongNhap.Text) + ", " + Convert.ToDouble(txtGiaNhap.Text) + ", " + Convert.ToDouble(txtGiaBan.Text) + "");
            kn.xuLy("  EXEC NHAPKHOSANPHAM @maphieu = '" + maphieunhap + "', @masp = '" + cbxSP.SelectedValue + "', @madm = " + cbxDanhMuc.SelectedValue + ", @tensp = '" + cbxSP.Text + "', @soluong = '" + Convert.ToInt32(txtSoLuongNhap.Text) + "', @gianhap = '" + Convert.ToDouble(txtGiaNhap.Text) + "', @giaban ='" + Convert.ToDouble(txtGiaBan.Text) + "'");
            //  data.xuLy("INSERT INTO CHITIETHOADON(MaHD, MaSP, SoLuong, DonGia, ThanhTien) VALUES('"+maHD+"', '"+cbxSP.SelectedValue+"', "+numSolg.Value+", "+Convert.ToDouble(txtDonGia.Text)+", "+Convert.ToDouble(txtThanhTien.Text)+")");
           LoadDataGridView();
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            kn.xuLy("EXEC UPDATENHAPKHO '" + maphieunhap + "', '" + cbxSP.SelectedValue + "', '" + cbxDanhMuc.SelectedValue + "' ,'" + cbxSP.Text + "', " + Convert.ToInt32(txtSoLuongNhap.Text) + ", " + Convert.ToDecimal(txtGiaNhap.Text) + ", " + Convert.ToDecimal(txtGiaBan.Text) + "");
            MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            LoadDataGridView();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {

                kn.xuLy("EXEC DELETEPHIEUNHAPKHO @maphieu='" + maphieunhap + "', @maSP= '" + cbxSP.SelectedValue + "', @soluong=" + Convert.ToInt32(txtSoLuongNhap.Text) + "");
                LoadDataGridView();
                resetHang();
                MessageBox.Show("Xóa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void dataNhapKho_Click(object sender, EventArgs e)
        {
            int i = dataNhapKho.CurrentRow.Index;
            // cbxSP.SelectedValue= dgBanHang.Rows[i].Cells[0].Value.ToString();
            maphieunhap= dataNhapKho.Rows[i].Cells[0].Value.ToString();

            cbxSP.Text = dataNhapKho.Rows[i].Cells[1].Value.ToString();

            cbxDanhMuc.Text = dataNhapKho.Rows[i].Cells[2].Value.ToString();

            txtSoLuongNhap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[3].Value);
            txtGiaNhap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[4].Value);
            txtGiaBan.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[5].Value);
            
        }
    }
}
