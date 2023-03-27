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
    public partial class FTrangChu : Form
    {
        private string quyen { get; set; }
        private string tenNv { get; set; }
        private string MaNv { get; set; }
        public FTrangChu(string quyen, string tenNv, string maNv)
        {
            InitializeComponent();
            this.quyen = quyen;
            this.tenNv = tenNv;
            MaNv = maNv;
        }

        private void btnBanHang_Click(object sender, EventArgs e)
        {
            lbViewbtn.Text= btnBanHang.Text;
            fBanHang banHang = new fBanHang(MaNv);
            panelShow.Controls.Clear();
            panelShow.Controls.Add(banHang);

        }

        private void btnHoaDon_Click(object sender, EventArgs e)
        {
            lbViewbtn.Text = btnHoaDon.Text;
            FHoaDon fHoaDon = new FHoaDon();
            panelShow.Controls.Clear();
            panelShow.Controls.Add(fHoaDon);
        }
        void LocationAdmin()
        {

            if(quyen == "nvbh")
            {
                lbViewbtn.Text = "Bán Hàng";
                btnThongKe.Enabled = false;
                btnĐanhMucSP.Enabled = false;
                btnNhapHang.Enabled = false;
                btnThongKe.Visible = false;
                btnĐanhMucSP.Visible = false;
                btnNhapHang.Visible = false;
               fBanHang fBanHang = new fBanHang(MaNv);
                panelShow.Controls.Clear();
                panelShow.Controls.Add(fBanHang);
            }
            if(quyen =="nvkho")
            {
                lbViewbtn.Text = "Nhập Hàng";
                btnBanHang.Visible= false;
                btnThongKe.Visible= false;
                btnHoaDon.Visible= false;
                btnNhapHang.Location = new Point(btnBanHang.Location.X, btnBanHang.Location.Y);
                btnkhoHang.Location = new Point(btnHoaDon.Location.X, btnHoaDon.Location.Y);
                btnĐanhMucSP.Location = new Point(4, 160);
                FNhapHang nhapHang= new FNhapHang(MaNv);
                panelShow.Controls.Clear();
                panelShow.Controls.Add(nhapHang);
            }
            else
            {
                lbViewbtn.Text = "Bán Hàng";
                fBanHang fBanHang = new fBanHang(MaNv);
                panelShow.Controls.Clear();
                panelShow.Controls.Add(fBanHang);
            }
        }
        private void FTrangChu_Load(object sender, EventArgs e)
        {
            labelDate.Text = DateTime.Now.ToString("dd/MM/yyyy");
            lbTen.Text = tenNv;
            LocationAdmin();
           
        }

        private void btnNhapHang_Click(object sender, EventArgs e)
        {
            lbViewbtn.Text = btnBanHang.Text;
            FNhapHang nhapHang = new FNhapHang(MaNv);
            panelShow.Controls.Clear();
            panelShow.Controls.Add(nhapHang);
        }

        private void btnkhoHang_Click(object sender, EventArgs e)
        {
            lbViewbtn.Text = btnkhoHang.Text;
            FSanPham sanPham = new FSanPham();
            panelShow.Controls.Clear();
            panelShow.Controls.Add(sanPham);
        }

        private void btnĐanhMucSP_Click(object sender, EventArgs e)
        {
            lbViewbtn.Text = btnĐanhMucSP.Text;
            FDmSanPham dm = new FDmSanPham();
            panelShow.Controls.Clear();
            panelShow.Controls.Add(dm);
        }

        private void btnThongKe_Click(object sender, EventArgs e)
        {
            lbViewbtn.Text = btnThongKe.Text;
            FThongKe tk = new FThongKe();
            panelShow.Controls.Clear();
            panelShow.Controls.Add(tk);
        }

        private void btnDangXuat_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
