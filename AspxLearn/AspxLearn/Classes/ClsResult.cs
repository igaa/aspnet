using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace AspxLearn.Classes
{
    public class ClsResult
    {
        public static DataTable TampilResult()
        {
            try
            {
                DataTable DtTampil = new DataTable();
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                SqlDataAdapter Da = new SqlDataAdapter();

                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT tab_contact.Name,Mobile,Address, exp_tab.Id_exp,K_Del,Title,Y_start,Y_end, Position,Description from tab_contact inner join exp_tab ON exp_tab.Id_User = tab_contact.Id_User where Status='1'";
                Da.SelectCommand = cmd;
                Da.Fill(DtTampil);
                Sqlconn.Close();
                return DtTampil;

            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}