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
        public int maNCC = 0;
        int s;
        private string maNV { get; set; }
        public FNhapHang(string maNV)
        {
            InitializeComponent();
            this.maNV = maNV;
        }
        DataProvider kn = new DataProvider();
        private void FNhapHang_Load(object sender, EventArgs e)
        {
            resetHang();
           // load data san pham
            cbxSP.DataSource = kn.xuLy("SELECT MaSP,TenSP FROM SANPHAM");
            cbxSP.ValueMember = "MaSP";
            cbxSP.DisplayMember = "TenSP";

            // load data nha cung cap
            cbxNhaCungCap.DataSource = kn.xuLy("SELECT MaNCC,TenNCC FROM NHACUNGCAP");
            cbxNhaCungCap.ValueMember = "MaNCC";
            cbxNhaCungCap.DisplayMember = "TenNCC";

            cbxDanhMuc.DataSource = kn.xuLy("SELECT MaDM, TenDM FROM DANHMUC");
            cbxDanhMuc.ValueMember = "MaDM";
            cbxDanhMuc.DisplayMember = "TenDM";
            resetHang();
        }
        private void resetHang()
        {
            cbxSP.Text = "";
            cbxNhaCungCap.Text = "";
            cbxDanhMuc.Text = "";
            txtSoLuongNhap.Text = "";
            txtGiaNhap.Text = "";
            txtGiaBan.Text = "";
            maNCC = 0;
            maphieunhap = "";
            btnSua.Enabled = false;
            btnXoa.Enabled = false;
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
            try
            {
                string sql = "SELECT MaPhieuNhap FROM PHIEUNHAPKHO WHERE CONVERT(varchar(100), MaPhieuNhap) = '" + maphieunhap + "'";
                if (cbxSP.Text.Length == 0)
                {
                    MessageBox.Show("Nhập tên sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (cbxDanhMuc.Text.Length == 0)
                {
                    MessageBox.Show("Chọn danh mục cho sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (cbxNhaCungCap.Text.Length == 0)
                {
                    MessageBox.Show("Chọn nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (Convert.ToInt32(txtSoLuongNhap.Text) <= 0)
                {
                    MessageBox.Show("Nhập số lượng sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (txtGiaNhap.Text.Length == 0)
                {
                    MessageBox.Show("Nhập giá nhập sản phảm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (cbxNhaCungCap.Text.Length == 0)
                {
                    MessageBox.Show("Chọn nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;

                }
                if (txtGiaBan.Text.Length == 0)
                {
                    MessageBox.Show("Nhập giá bán sản phảm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (!Helper.CheckKey(sql))
                {
                    kn.xuLy("INSERT INTO PHIEUNHAPKHO(MaNV, MaNCC, NgayLapHD) VALUES('" + maNV + "' , " + cbxNhaCungCap.SelectedValue + ", GETDATE())");


                    DataTable dt = kn.xuLy("SELECT MaPhieuNhap FROM PHIEUNHAPKHO WHERE CONVERT(varchar(100), MaNV)= '" + maNV + "' AND  MaNCC= " + cbxNhaCungCap.SelectedValue + "  ORDER BY NgayLapHD DESC");
                    maphieunhap = dt.Rows[0]["MaPhieuNhap"].ToString();
                    s = (int)cbxNhaCungCap.SelectedValue;
                }
                if (s != (int)cbxNhaCungCap.SelectedValue)
                {
                    MessageBox.Show("Nhà cung cấp khác với nhà cung cấp bạn vừa chọn\n Vui lòng tạo phiếu nhập khác", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    resetHang();
                    return;
                }

                // kn.xuLy("EXEC NHAPKHOSANPHAM '" + maphieunhap + "', '" + cbxSP.SelectedValue + "', '"+cbxDanhMuc.SelectedValue+"', '"+cbxSP.SelectedText+"' ," + Convert.ToInt32(txtSoLuongNhap.Text) + ", " + Convert.ToDouble(txtGiaNhap.Text) + ", " + Convert.ToDouble(txtGiaBan.Text) + "");
                kn.xuLy("  EXEC NHAPKHOSANPHAM @maphieu = '" + maphieunhap + "', @masp = '" + cbxSP.SelectedValue + "', @madm = " + cbxDanhMuc.SelectedValue + ", @tensp = N'" + cbxSP.Text + "', @soluong = '" + Convert.ToInt32(txtSoLuongNhap.Text) + "', @gianhap = '" + Convert.ToDouble(txtGiaNhap.Text) + "', @giaban ='" + Convert.ToDouble(txtGiaBan.Text) + "'");
                //  data.xuLy("INSERT INTO CHITIETHOADON(MaHD, MaSP, SoLuong, DonGia, ThanhTien) VALUES('"+maHD+"', '"+cbxSP.SelectedValue+"', "+numSolg.Value+", "+Convert.ToDouble(txtDonGia.Text)+", "+Convert.ToDouble(txtThanhTien.Text)+")");
                LoadDataGridView();
                cbxSP.Text = "";
                cbxNhaCungCap.Text = "";
                cbxDanhMuc.Text = "";
                txtSoLuongNhap.Text = "";
                txtGiaNhap.Text = "";
                txtGiaBan.Text = "";
                maNCC = 0;
               
                btnSua.Enabled = false;
                btnXoa.Enabled = false;
                MessageBox.Show("Thêm sản phẩm thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch
            {
                MessageBox.Show("Hệ thống đang bảo trì", "Thống báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            if (s != (int)cbxNhaCungCap.SelectedValue)
            {
                MessageBox.Show("Nhà cung cấp khác với nhà cung cấp bạn vừa chọn\nVui lòng xóa phiếu nhập kho này", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                resetHang();
                return;
            }
            kn.xuLy("EXEC UPDATENHAPKHO '" + maphieunhap + "', '" + cbxSP.SelectedValue + "', '" + cbxDanhMuc.SelectedValue + "' ,'" + cbxSP.Text + "', " + Convert.ToInt32(txtSoLuongNhap.Text) + ", " + Convert.ToDecimal(txtGiaNhap.Text) + ", " + Convert.ToDecimal(txtGiaBan.Text) + "");
            cbxSP.Text = "";
            cbxNhaCungCap.Text = "";
            cbxDanhMuc.Text = "";
            txtSoLuongNhap.Text = "";
            txtGiaNhap.Text = "";
            txtGiaBan.Text = "";
            maNCC = 0;

            btnSua.Enabled = false;
            btnXoa.Enabled = false;
            MessageBox.Show("Sửa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            LoadDataGridView();
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {

                kn.xuLy("EXEC DELETEPHIEUNHAPKHO @maphieu='" + maphieunhap + "', @maSP= '" + cbxSP.SelectedValue + "', @soluong=" + Convert.ToInt32(txtSoLuongNhap.Text) + "");
                s = 0;
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

            cbxDanhMuc.Text = dataNhapKho.Rows[i].Cells[3].Value.ToString();
            cbxNhaCungCap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[2].Value);
            txtSoLuongNhap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[4].Value);
            txtGiaNhap.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[5].Value);
            txtGiaBan.Text = Convert.ToString(dataNhapKho.Rows[i].Cells[6].Value);
            btnSua.Enabled = true;
            btnXoa.Enabled = true;
            btnThem.Enabled = false;
            
        }
    }
}
