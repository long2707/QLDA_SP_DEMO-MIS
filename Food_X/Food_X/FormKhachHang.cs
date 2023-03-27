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
    public partial class FormKhachHang : Form
    {
        private string sdt { get; set; }
        public FormKhachHang(string sdt)
        {
            InitializeComponent();
            this.sdt = sdt;
        }
        DataProvider data = new DataProvider();
        private void button1_Click(object sender, EventArgs e)
        {
            data.xuLy("INSERT INTO KHACHHANG(TenKH, Sdt) VALUES('" + textBox1.Text + "', '" + sdt + "')");
            this.Close();
        }
    }
}
