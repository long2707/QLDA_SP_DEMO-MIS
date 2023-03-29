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
    public partial class FLogin : Form
    {
        public FLogin()
        {
            InitializeComponent();
        }
        Helper helper = new Helper();

        DataProvider data = new DataProvider();
        private void btnDangNhap_Click(object sender, EventArgs e)
        {
            try
            {
                if(textUser.Text.Length == 0)
                {
                    MessageBox.Show("Nhập tên đăng nhặp", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                if (textPassword.Text.Length == 0)
                {
                    MessageBox.Show("Nhập mật khẩu", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                DataTable dt = data.xuLy("EXEC CHECK_USER '"+textUser.Text +"', '"+textPassword.Text+"'");
                if(dt.Rows.Count >0 )
                {
                    FTrangChu fTrangChu = new FTrangChu(dt.Rows[0]["role"].ToString(), dt.Rows[0]["TenNV"].ToString(), dt.Rows[0]["MaNV"].ToString());
                   
                    this.Hide();
                    fTrangChu.ShowDialog();
                    
                }
                else
                {
                    MessageBox.Show("Tài khoản đăng nhập không đúng", "Lỗi", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch {
                MessageBox.Show("Bạn chưa có tài khoản\nVui lòng liên hệ chủ cửa hàng để cấp tài khoản đăng nhập", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

           
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có muốn thoát không ?", "Thông Báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
