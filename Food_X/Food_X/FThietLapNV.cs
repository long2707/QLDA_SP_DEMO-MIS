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

    public partial class FThietLapNV : UserControl
    {
        private string maNV { get; set; }
        public FThietLapNV(string maNV)
        {
            InitializeComponent();
            this.maNV = maNV;
        }
        DataProvider kn = new DataProvider();
        private void button1_Click(object sender, EventArgs e)
        {
            if(txtPass.Text.Length == 0 || txtConfirmPass.Text.Length == 0) {

                MessageBox.Show("Không được để trống", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                
                return; }
            if(txtPass.Text.Length != txtConfirmPass.Text.Length)
            {
                MessageBox.Show("Mật khẩu nhập lại không giống nhau", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            kn.xuLy("UPDATE USERNV SET password= '"+txtPass.Text+"' WHERE  MaNV = '"+maNV+"'");
            txtConfirmPass.Text = "";
            txtPass.Text = "";
            MessageBox.Show("Đổi mật khảu thành công", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Information);

        }
    }
}
