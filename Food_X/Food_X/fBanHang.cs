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
    public partial class fBanHang : UserControl
    {
        public string maHD = "";
        public string MaKH;
       private string Manv { get; set; }
       
        public fBanHang(string manv)
        {
            InitializeComponent();
            this.Manv = manv;
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
        private void resetHang()
        {
            cbxSP.Text = "";
            txtSolg.Text= "0";
            numGiamGia.Value= 0;
            txtThanhTien.Text = "";
           txtDonGia.Text = "0";
            if (dgBanHang.Rows.Count > 0)
            {
                button5.Enabled = true;
                button4.Enabled = true;
            }

            else
            {
                button5.Enabled = false;
                button4.Enabled = false;
            }
            if(dgBanHang.Rows.Count == 0)
            {
                lbTongTien.Text = "0";
            }
            btnThem.Enabled = true;
            button1.Enabled = false;
            button2.Enabled = false;
        }
        DataProvider data = new DataProvider();
        private void fBanHang_Load(object sender, EventArgs e)
        {

            resetHang();
            cbxSP.ValueMember = "MaSP";
            cbxSP.DisplayMember = "TenSP";
            cbxSP.DataSource = data.xuLy("SELECT MaSP,TenSP FROM SANPHAM");
            resetHang();
            txtThanhTien.Enabled= false;
            button1.Enabled= false;
            button2.Enabled= false;
            button5.Enabled= false;
            button4.Enabled= false;

            textNamKH.Enabled= false;
       
           
        }
        
        private void btnTimKH_Click(object sender, EventArgs e)
        {
            string sql = "SELECT MaKH, TenKH FROM KHACHHANG WHERE Sdt = '"+textSDT.Text+"'";
           
            if(! Helper.CheckKey(sql) )
            {
                MessageBox.Show("Khách hàng chưa có trong hệ thống\n Nhập thêm tên khách hàng!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                FormKhachHang formKhachHang = new FormKhachHang(textSDT.Text);
                formKhachHang.ShowDialog();
               
            }
            else
            {
                DataTable dt = data.xuLy("SELECT MaKH, TenKH FROM KHACHHANG WHERE Sdt = '" + textSDT.Text + "'");
                textNamKH.Text = dt.Rows[0]["TenKH"].ToString();
                MaKH = dt.Rows[0]["MaKH"].ToString();
                 
            }
            
        }
        #region loaddataview
        private void LoadDataGridView()
        {
            string sql;
            sql = "SELECT SANPHAM.MaSP, SANPHAM.TenSP, CHITIETHOADON.SoLuong, SANPHAM.GiaBan, CHITIETHOADON.ThanhTien ,HOADON.NgayLapHD FROM CHITIETHOADON INNER JOIN HOADON ON CHITIETHOADON.MaHD= HOADON.MaHD" +
                " INNER JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP WHERE  CONVERT(varchar(100), HOADON.MaHD) = '" + maHD+"' ";
            dgBanHang.DataSource = data.xuLy(sql);

            dgBanHang.Columns[0].Width = 100;
            dgBanHang.Columns[1].Width = 150;
            dgBanHang.Columns[2].Width = 100;
            dgBanHang.Columns[3].Width = 100;
            dgBanHang.Columns[4].Width = 100;
            dgBanHang.Columns[5].Width = 100;
            dgBanHang.AllowUserToAddRows = false;
            string sql2 = "SELECT SUM(CHITIETHOADON.ThanhTien) AS TongTien FROM CHITIETHOADON INNER JOIN HOADON ON CHITIETHOADON.MaHD= HOADON.MaHD" +
                " INNER JOIN SANPHAM ON CHITIETHOADON.MaSP = SANPHAM.MaSP WHERE CONVERT(varchar(100), HOADON.MaHD) = '" + maHD + "' GROUP BY CHITIETHOADON.MaHD ";
            DataTable dt = data.xuLy(sql2);
            if (dt.Rows.Count > 0)
            {
                
                lbTongTien.Text = dt.Rows[0]["TongTien"].ToString() ;
            }
         
        }

        #endregion

        public bool ChecSQL(string sql)
        {
            DataTable dt = data.xuLy(sql);
            if(dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        private void btnThem_Click(object sender, EventArgs e)
        {
            string sql = "SELECT MaHD FROM HOADON WHERE CONVERT(varchar(100), MaHD) = '" + maHD + "'";
            //try
            {
                if (Convert.ToInt32(txtSolg.Text) <= 0)
                {
                    MessageBox.Show("Nhập số lượng sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (textSDT.Text.Length == 0)
                {
                    MessageBox.Show("Nhập số điện thoại khách hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (cbxSP.Text.Length == 0)
                {
                    MessageBox.Show("Chọn sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                DataTable table = data.xuLy("SELECT SoLuong FROM SANPHAM WHERE MaSP = '" + cbxSP.SelectedValue + "'");
                int slg = Convert.ToInt32(table.Rows[0]["SoLuong"].ToString());
                if (slg == 0)
                {
                    MessageBox.Show("Sản phẩm  đang tạm hết", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }
                if (slg < Convert.ToInt32(txtSolg.Text) )
                {
                    MessageBox.Show("Sản phẩm hiện tại chỉ còn "+slg+"", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return;
                }

                if (!Helper.CheckKey(sql))
                {
                    data.xuLy("INSERT INTO HOADON(MaKH, MaNV, NgayLapHD) VALUES('" + MaKH + "' , '" + Manv + "', GETDATE())");


                }
                DataTable dt = data.xuLy("SELECT MaHD FROM HOADON WHERE CONVERT(varchar(100), MaKH)= '" + MaKH + "' AND CONVERT(varchar(100), MaNV)= '" + Manv + "' ORDER BY NgayLapHD DESC");
                maHD = dt.Rows[0]["MaHD"].ToString();
                data.xuLy("EXEC TAOHOADON '" + maHD + "', '" + cbxSP.SelectedValue + "', " + Convert.ToInt32(txtSolg.Text) + ",  " + Convert.ToDouble(txtDonGia.Text) + ", " + Convert.ToDouble(txtThanhTien.Text) + "");
                //  data.xuLy("INSERT INTO CHITIETHOADON(MaHD, MaSP, SoLuong, DonGia, ThanhTien) VALUES('"+maHD+"', '"+cbxSP.SelectedValue+"', "+numSolg.Value+", "+Convert.ToDouble(txtDonGia.Text)+", "+Convert.ToDouble(txtThanhTien.Text)+")");
                LoadDataGridView();
                resetHang();
            }
            //catch
            //{
            //    MessageBox.Show("Hệ thống đang lỗi\nVui lòng thử lại sau", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //}


        }

        private void cbxSP_SelectedIndexChanged(object sender, EventArgs e)
        {
            // txtThanhTien.Text = cbxSP.GetItemText(cbxSP.SelectedValue).ToString();
            DataTable dt = data.xuLy("SELECT GiaBan FROM SANPHAM WHERE MaSP = '"+ cbxSP.SelectedValue + "';");
            if (dt.Rows.Count > 0)
            {
                //numSolg.Value = 1;
                txtDonGia.Text = dt.Rows[0]["GiaBan"].ToString();
                txtThanhTien.Text= (Convert.ToInt32(txtSolg.Text) * Convert.ToDecimal(txtDonGia.Text)).ToString();
            }
        }



        private void numGiamGia_ValueChanged(object sender, EventArgs e)
        {
            if(numGiamGia.Value > 0)
            {
                txtThanhTien.Text = (Convert.ToInt32(txtSolg.Text) * Convert.ToDecimal(txtDonGia.Text)*(1 - numGiamGia.Value/100)).ToString();
            }
        }

        private void dgBanHang_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(txtSolg.Text) <= 0)
            {
                MessageBox.Show("Nhập số lượng sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (textSDT.Text.Length == 0)
            {
                MessageBox.Show("Nhập số điện thoại khách hàng", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (cbxSP.Text.Length == 0)
            {
                MessageBox.Show("Chọn sản phẩm", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            
            //  data.xuLy("UPDATE CHITIETHOADON SET SoLuong=2 , ThanhTien=13333 WHERE MaHD='6EC89289-8296-4EDE-8B23-BDAB4E9F2000' AND MaSP= '366F7708-29D9-4947-B7A4-50C5EFD8E059'");
            data.xuLy("EXEC UPDATEHOADON @maHD='"+maHD+"', @maSP= '"+cbxSP.SelectedValue+"', @soluong="+Convert.ToInt32(txtSolg.Text)+", @ThanhTien="+Convert.ToDecimal(txtThanhTien.Text)+"");
            LoadDataGridView();
            resetHang();
            cbxSP.Enabled = true;

        }

        private void dgBanHang_Click(object sender, EventArgs e)
        {
            int i = dgBanHang.CurrentRow.Index;
            // cbxSP.SelectedValue= dgBanHang.Rows[i].Cells[0].Value.ToString();
            cbxSP.Text = dgBanHang.Rows[i].Cells[1].Value.ToString();
            txtSolg.Text= Convert.ToString(dgBanHang.Rows[i].Cells[2].Value);
            txtDonGia.Text = Convert.ToString(dgBanHang.Rows[i].Cells[3].Value);
            txtThanhTien.Text = Convert.ToString(dgBanHang.Rows[i].Cells[4].Value);
            cbxSP.Enabled = false;
            txtDonGia.Enabled = false;
            txtThanhTien.Enabled = false;
            button1.Enabled = true;
            button2.Enabled = true;
            button4.Enabled = true;
            button5.Enabled = true;
            btnThem.Enabled = false;
        }

        private void txtSolg_TextChanged(object sender, EventArgs e)
        {
            if(txtSolg.Text.Length > 0 && txtDonGia.Text.Length >0)
            {
                if (numGiamGia.Value > 0)
                {
                    txtThanhTien.Text = (Convert.ToInt32(txtSolg.Text) * Convert.ToDecimal(txtDonGia.Text) * (1 - numGiamGia.Value / 100)).ToString();
                }
                else
                {
                    txtThanhTien.Text = (Convert.ToInt32(txtSolg.Text) * Convert.ToDecimal(txtDonGia.Text) ).ToString();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if(MessageBox.Show("Bạn có muốn xóa không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {

                data.xuLy("EXEC DELETEHOADON @maHD='" + maHD + "', @maSP= '" + cbxSP.SelectedValue + "', @soluong=" + Convert.ToInt32(txtSolg.Text) + "");
                LoadDataGridView();
                resetHang();
                cbxSP.Enabled = true;
                txtDonGia.Enabled = true;
                MessageBox.Show("Xóa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn hủy bỏ hóa đơn này không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                data.xuLy("DELETE CHITIETHOADON WHERE MaHD ='" + maHD + "'");
                MessageBox.Show("Xóa thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
                LoadDataGridView();
                resetHang();
                button1.Enabled = false;
                button2.Enabled = false;
                button5.Enabled = false;
                button4.Enabled = false;
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textNamKH.Text = "";
            textSDT.Text = "";
            resetHang();
            dgBanHang.DataSource = null;
            lbTongTien.Text = "0";
            MessageBox.Show("Xuất hóa đơn thành công", "Thông báp", MessageBoxButtons.OK, MessageBoxIcon.Information );
            cbxSP.Enabled = true;
            txtDonGia.Enabled = true;
            txtSolg.Enabled = true;
            txtThanhTien.Enabled = false;
            button1.Enabled = true;
            button1.Enabled = false;
            button2.Enabled = false;
            button5.Enabled = false;
            button4.Enabled = false;
        }

        //private void textSDT_TextChanged(object sender, EventArgs e)
        //{
        //    string sql = "SELECT MaKH, TenKH FROM KHACHHANG WHERE Sdt LIKE '%" + textSDT.Text + "%'";

        //    if (!Helper.CheckKey(sql))
        //    {
        //        MessageBox.Show("Khách hàng chưa có trong hệ thống\n Nhập thêm tên khách hàng!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        //        FormKhachHang formKhachHang = new FormKhachHang(textSDT.Text);
        //        formKhachHang.ShowDialog();

        //    }
        //    else
        //    {
        //        DataTable dt = data.xuLy("SELECT MaKH, TenKH FROM KHACHHANG WHERE Sdt = '" + textSDT.Text + "'");
        //        textNamKH.Text = dt.Rows[0]["TenKH"].ToString();
        //        MaKH = dt.Rows[0]["MaKH"].ToString();

        //    }
        //}
    }
}
