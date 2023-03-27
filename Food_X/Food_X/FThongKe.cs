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
    public partial class FThongKe : UserControl
    {
        public FThongKe()
        {
            InitializeComponent();
        }
        DataProvider kn = new DataProvider();
        private void FThongKe_Load(object sender, EventArgs e)
        {
            DataTable dt = kn.xuLy("SELECT COUNT (*) AS 'HoaDon'  FROM HOADON WHERE MONTH(NgayLapHD) = MONTH(GETDATE()) AND YEAR(NgayLapHD) = YEAR(GETDATE())");
            labThang.Text= dt.Rows[0]["HoaDon"].ToString();
            DataTable dt1 = kn.xuLy("SELECT COUNT (*) AS 'HoaDon'  FROM HOADON WHERE FORMAT(NgayLapHD, 'dd/MM/yyyy')= FORMAT(GETDATE(), 'dd/MM/yyyy')");
            labNow.Text = dt1.Rows[0]["HoaDon"].ToString();

            DataTable dt2 = kn.xuLy("SELECT COUNT (CHITIETHOADON.MaSP) AS 'SoLuong'  FROM HOADON INNER JOIN CHITIETHOADON ON HOADON.MaHD = CHITIETHOADON.MaHD WHERE MONTH(HOADON.NgayLapHD) = MONTH(GETDATE()) AND YEAR(HOADON.NgayLapHD) = YEAR(GETDATE())");
            labSanPham.Text = dt2.Rows[0]["SoLuong"].ToString();

            DataTable dt3 = kn.xuLy("SELECT COUNT (CHITIETHOADON.MaSP) AS 'SoLuong'  FROM HOADON INNER JOIN CHITIETHOADON ON HOADON.MaHD = CHITIETHOADON.MaHD WHERE FORMAT(HOADON.NgayLapHD, 'dd/MM/yyyy')= FORMAT(GETDATE(), 'dd/MM/yyyy') ");
            labSpNow.Text= dt2.Rows[0]["SoLuong"].ToString();

            DataTable dt4 = kn.xuLy("SELECT SUM (CHITIETHOADON.ThanhTien) AS 'SoLuong'  FROM HOADON INNER JOIN CHITIETHOADON ON HOADON.MaHD = CHITIETHOADON.MaHD WHERE MONTH(HOADON.NgayLapHD) = MONTH(GETDATE()) AND YEAR(HOADON.NgayLapHD) = YEAR(GETDATE())");
            labelDT.Text = dt4.Rows[0]["SoLuong"].ToString();

            DataTable dt5 = kn.xuLy("SELECT SUM (CHITIETHOADON.ThanhTien) AS 'SoLuong'  FROM HOADON INNER JOIN CHITIETHOADON ON HOADON.MaHD = CHITIETHOADON.MaHD WHERE FORMAT(HOADON.NgayLapHD, 'dd/MM/yyyy')= FORMAT(GETDATE(), 'dd/MM/yyyy')  ");
            labDoanhThuNow.Text = dt4.Rows[0]["SoLuong"].ToString();
            LoadBieuDoDoanhThu();
            LoadBieuDoSanPham();
        }
        private void LoadBieuDoDoanhThu()
        {
            
          chartDT.DataSource= kn.xuLy("SELECT MAX(FORMAT(HOADON.NgayLapHD, 'MM/yyyy')) AS NgayLap ,  SUM (CHITIETHOADON.ThanhTien) AS 'DoanhTHu'  FROM HOADON INNER JOIN CHITIETHOADON ON HOADON.MaHD = CHITIETHOADON.MaHD WHERE  YEAR(HOADON.NgayLapHD) = YEAR(GETDATE()) GROUP BY MONTH(HOADON.NgayLapHD)");
            chartDT.Series["DoanhThu"].XValueMember = "NgayLap";
            chartDT.Series["DoanhThu"].YValueMembers = "DoanhTHu";
        }
        private void LoadBieuDoSanPham()
        {
            chartSP.DataSource = kn.xuLy("SELECT MAX(SANPHAM.TenSP) AS TenSP, COUNT (CHITIETHOADON.MaSP) AS 'SoLuong'  FROM CHITIETHOADON INNER JOIN HOADON ON HOADON.MaHD = CHITIETHOADON.MaHD INNER JOIN SANPHAM ON SANPHAM.MaSP = CHITIETHOADON.MaSP WHERE YEAR(HOADON.NgayLapHD) = YEAR(GETDATE()) GROUP BY MONTH(HOADON.NgayLapHD) , CHITIETHOADON.MaSP");

            chartSP.Series["SanPham"].XValueMember = "TenSP";
            chartSP.Series["SanPham"].YValueMembers = "SoLuong";
        }
    }
}
