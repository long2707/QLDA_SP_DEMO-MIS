using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Food_X.DTO
{
    internal class DataProvider
    {
        private string connections = "Data Source=DESKTOP-JAVVLQ7;Initial Catalog=QLDA_DATA;Persist Security Info=True;User ID=sa;Password=long270701";
        SqlConnection connection;

        DataTable dtTable;
        SqlDataAdapter dataAdp;

        public SqlConnection moKetNoi()
        {
            connection = new SqlConnection(connections);
            if (connection.State == ConnectionState.Closed)
            {
                connection.Open();
            }
            return connection;
        }
        public SqlConnection dongKetNoi()
        {
            connection = new SqlConnection(connections);
            if (connection.State == ConnectionState.Open)
            {
                connection.Close();
            }
            return connection;
        }

        public DataTable xuLy(string query)
        {


            dtTable = new DataTable();
            moKetNoi();
            dataAdp = new SqlDataAdapter(query, connection);
            dataAdp.Fill(dtTable);
            dongKetNoi();

            return dtTable;
        }

    }
}
