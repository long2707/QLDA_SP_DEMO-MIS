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
    public partial class FHoaDon : UserControl
    {
        public FHoaDon()
        {
            InitializeComponent();
        }
        DataProvider kn = new DataProvider();
        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }
        private void LoadDataGridView()
        {
            string sql;
            sql = "EXEC HOADONBAN '"+timePick.Value+"'";
            dgHoadon.DataSource = kn.xuLy(sql);

            dgHoadon.Columns[0].Width = 50;
            dgHoadon.Columns[1].Width = 200;
            dgHoadon.Columns[2].Width = 150;
            dgHoadon.Columns[3].Width = 100;
            dgHoadon.Columns[4].Width = 100;
            dgHoadon.Columns[5].Width = 100;
            dgHoadon.Columns[5].Width = 150;
            dgHoadon.AllowUserToAddRows = false;
            
        }

        private void FHoaDon_Load(object sender, EventArgs e)
        {
            LoadDataGridView();
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            LoadDataGridView();
        }
    }
}
