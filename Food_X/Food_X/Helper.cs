using Food_X.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Food_X
{
    class Helper
    {
        
        public static bool CheckKey(string sql)
        {
        DataProvider dataProvider = new DataProvider();
          DataTable  dt =  dataProvider.xuLy(sql);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
       
       
       
    }
}
