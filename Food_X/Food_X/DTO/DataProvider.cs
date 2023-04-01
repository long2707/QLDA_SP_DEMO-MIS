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
	//connect sql 
        private string connections = "";
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
