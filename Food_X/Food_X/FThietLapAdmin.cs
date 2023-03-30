using Food_X.DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Food_X
{
    public partial class FThietLapAdmin : UserControl
    {
        private string maNV;
        private int MaNCC;
        public FThietLapAdmin()
        {
            InitializeComponent();
        }

        DataProvider  kn = new DataProvider();
        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void tabPage2_Click(object sender, EventArgs e)
        {
            LoadNCC();
        }
        private void LoadNhanVien()
        {
            dgNhanVien.DataSource = kn.xuLy("SELECT NHANVIEN.MaNV, NHANVIEN.TenNV, CHUCVU.TenCV, NHANVIEN.Sdt, NHANVIEN.DiaChi, USERNV.usename FROM NHANVIEN LEFT JOIN USERNV ON NHANVIEN.MaNV = USERNV.MaNV\r\n\t\t\t\t\t\tLEFT JOIN CHUCVU ON NHANVIEN.MaCV = CHUCVU.MaCV");
            dgNhanVien.AllowUserToAddRows = false;
                }

        private void tabPage1_Click(object sender, EventArgs e)
        {
           
        }
        

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void txtTennv_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void txtSdt_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void txtDiaChi_TextChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void dgNhanVien_Click(object sender, EventArgs e)
        {
            int i = dgNhanVien.CurrentRow.Index;
            // cbxSP.SelectedValue= dgBanHang.Rows[i].Cells[0].Value.ToString();
            maNV = dgNhanVien.Rows[i].Cells[0].Value.ToString();
            txtTenNv.Text = dgNhanVien.Rows[i].Cells[1].Value.ToString();
            txtSdt.Text = Convert.ToString(dgNhanVien.Rows[i].Cells[3].Value).Trim();
            comboBox1.Text = Convert.ToString(dgNhanVien.Rows[i].Cells[2].Value).Trim();
            txtDiachi.Text = Convert.ToString(dgNhanVien.Rows[i].Cells[4].Value).Trim();
            txtTenDn.Text = Convert.ToString(dgNhanVien.Rows[i].Cells[5].Value).Trim();
            button2.Enabled = true;
            button3.Enabled = true;
            button1.Enabled = false;
            txtTenDn.Enabled = false;
        }

        private void tabControl1_Click(object sender, EventArgs e)
        {
            LoadNhanVien();
            
        }
        private void restTextNhanVien()
        {
            txtTenNv.Text = "";
            txtSdt.Text = "";
            txtDiachi.Text = "";
            comboBox1.Text = "";
            txtTenDn.Text = "";
            button2.Enabled = false;
            button3.Enabled = false;
        }
        private void FThietLapAdmin_Load(object sender, EventArgs e)
        {

            restTextNhanVien();
            comboBox1.DataSource = kn.xuLy("SELECT MaCV, TenCV FROM CHUCVU");
            comboBox1.ValueMember = "MaCV";
            comboBox1.DisplayMember = "TenCV";
            LoadNhanVien();
            LoadNCC();
            restTextNhanVien();
           
        }
        private static bool IsNumber(string val)
        {
            if (val != "")
                return Regex.IsMatch(val, @"^[0-9]\d*\.?[0]*$");
            else return true;
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if(txtTenNv.Text.Length == 0)
            {
                MessageBox.Show("Nhập tên nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSdt.Text.Length == 0)
            {
                MessageBox.Show("Nhập số điện thoại nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtDiachi.Text.Length == 0)
            {
                MessageBox.Show("Nhập địa chỉ của nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (comboBox1.Text.Length == 0)
            {
                MessageBox.Show("Chon chức vụ nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtTenDn.Text.Length == 0)
            {
                MessageBox.Show("Nhập tên đăng nhập của nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSdt.Text.Length != 10)
            {
                MessageBox.Show("Số diện thoại phải gồm 10 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (!IsNumber(txtSdt.Text))
            {
                MessageBox.Show("Số điện thoại chỉ được nhập số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            kn.xuLy("EXEC ADDNHANVIEN " + comboBox1.SelectedValue + ",'" + txtTenNv.Text + "', '" + txtSdt.Text + "', '" + txtDiachi.Text + "', '" + txtTenDn.Text + "'");
            restTextNhanVien();
            MessageBox.Show("Thêm nhân viên mới thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if(maNV !="36E7062C-3A63-4A3A-8253-A2A36A67EA4D")
            {
                MessageBox.Show("Bạn không được xóa nhân viên này", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            kn.xuLy("EXEC DELETENHANVIEN '" + maNV + "'");
            LoadNhanVien();
            restTextNhanVien();
            MessageBox.Show("xóa nhân viên thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (txtTenNv.Text.Length == 0)
            {
                MessageBox.Show("Nhập tên nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSdt.Text.Length == 0)
            {
                MessageBox.Show("Nhập số điện thoại nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtDiachi.Text.Length == 0)
            {
                MessageBox.Show("Nhập địa chỉ của nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (comboBox1.Text.Length == 0)
            {
                MessageBox.Show("Chon chức vụ nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtTenDn.Text.Length == 0)
            {
                MessageBox.Show("Nhập tên đăng nhập của nhân viên", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSdt.Text.Length != 10)
            {
                MessageBox.Show("Số diện thoại phải gồm 10 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (!IsNumber(txtSdt.Text))
            {
                MessageBox.Show("Số điện thoại chỉ được nhập số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            kn.xuLy("UPDATE NHANVIEN SET TenNV = '"+txtTenNv.Text+"', MaCV="+comboBox1.ValueMember+", Sdt='"+txtSdt.Text+"', DiaChi ='"+txtDiachi.Text+"'  WHERE MaNV = '"+maNV+"'");
            restTextNhanVien();
            LoadNhanVien();
            MessageBox.Show("Sửa thông tin nhân viên thành công thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnThemNCC_Click(object sender, EventArgs e)
        {
            if (txtTenNCC.Text.Length == 0)
            {
                MessageBox.Show("Nhập tên nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSDTNCC.Text.Length == 0)
            {
                MessageBox.Show("Nhập số điện thoại nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtDiaChiNCC.Text.Length == 0)
            {
                MessageBox.Show("Nhập địa chỉ của nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSDTNCC.Text.Length != 10)
            {
                MessageBox.Show("Số diện thoại phải gồm 10 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (!IsNumber(txtSDTNCC.Text))
            {
                MessageBox.Show("Số điện thoại chỉ được nhập số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            kn.xuLy("INSERT INTO NHACUNGCAP(TenNCC, Sdt, DiaChi) VALUES (N'"+txtTenNCC.Text+"', '"+txtSDTNCC.Text+"', N'"+txtDiaChiNCC.Text+"')");
            txtDiaChiNCC.Text = "";
            txtSDTNCC.Text = "";
            txtTenNCC.Text = "";
            btnXoaNCC.Enabled = false;
            LoadNCC();
            MessageBox.Show("Thêm nhà cung cấp mới thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        private void btnXoaNCC_Click(object sender, EventArgs e)
        {
            if (txtTenNCC.Text.Length == 0)
            {
                MessageBox.Show("Nhập tên nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSDTNCC.Text.Length == 0)
            {
                MessageBox.Show("Nhập số điện thoại nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtDiaChiNCC.Text.Length == 0)
            {
                MessageBox.Show("Nhập địa chỉ của nhà cung cấp", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (txtSDTNCC.Text.Length != 10)
            {
                MessageBox.Show("Số diện thoại phải gồm 10 số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (!IsNumber(txtSDTNCC.Text))
            {
                MessageBox.Show("Số điện thoại chỉ được nhập số", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            kn.xuLy("UPDATE NHACUNGCAP SET TenNCC= N'"+txtTenNCC.Text+"', Sdt= '"+txtSDTNCC.Text+"', DiaChi= N'"+txtDiaChiNCC.Text+"' WHERE MaNCC = "+MaNCC+"");
            txtDiaChiNCC.Text = "";
            txtSDTNCC.Text = "";
            txtTenNCC.Text = "";
            btnXoaNCC.Enabled = false;
            LoadNCC();
            btnThemNCC.Enabled = true;
            MessageBox.Show("Sửa thông tin nhà cung cấp thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }
        private void LoadNCC()
        {
           
            dgKhachHang.DataSource = kn.xuLy("SELECT *FROM NHACUNGCAP");
            dgNhanVien.AllowUserToAddRows = false;

        }
        private void dgKhachHang_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int i = dgKhachHang.CurrentRow.Index;
            // cbxSP.SelectedValue= dgBanHang.Rows[i].Cells[0].Value.ToString();
            MaNCC = Convert.ToInt32(dgKhachHang.Rows[i].Cells[0].Value);
            txtTenNCC.Text = dgKhachHang.Rows[i].Cells[1].Value.ToString();
            txtSDTNCC.Text = Convert.ToString(dgKhachHang.Rows[i].Cells[2].Value).Trim();
            txtDiaChiNCC.Text = Convert.ToString(dgKhachHang.Rows[i].Cells[3].Value).Trim();
            btnThemNCC.Enabled= false;

        }

        private void dgKhachHang_Click(object sender, EventArgs e)
        {
            int i = dgKhachHang.CurrentRow.Index;
            // cbxSP.SelectedValue= dgBanHang.Rows[i].Cells[0].Value.ToString();
            MaNCC = Convert.ToInt32(dgKhachHang.Rows[i].Cells[0].Value);
            txtTenNCC.Text = dgKhachHang.Rows[i].Cells[1].Value.ToString();
            txtSDTNCC.Text = Convert.ToString(dgKhachHang.Rows[i].Cells[2].Value).Trim();
            txtDiaChiNCC.Text = Convert.ToString(dgKhachHang.Rows[i].Cells[3].Value).Trim();
            btnThemNCC.Enabled = false;
            btnXoaNCC.Enabled = true;
        }
    }
}
