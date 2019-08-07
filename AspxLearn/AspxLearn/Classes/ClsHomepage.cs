using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using AspxLearn.Classes;

namespace AspxLearn.Classes
{
    public class ClsHomepage
    {
        public static DataTable TampilData()
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
                cmd.CommandText = "select * from exp_tab where Status = '1' order by Id_user desc";
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
     
        public static void simpanexp( string Id_user, string Title, string Y_start, string Y_end, string Position, string Description )
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into exp_tab values ('" + Id_user + "','1','','" + Title + "','" + Y_start + "','" + Y_end + "','" + Position + "','" + Description + "')";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void editexp(string id_user, string title, string y_start, string y_end, string position, string description, int id_exp)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update exp_tab set Id_user='" + id_user + "', Title='" + title + "', Y_start='" + y_start + "',Y_end='" + y_end + "',Position='" + position + "',Description='" + description + "' where Id_exp ='" + id_exp + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public static void softdelete(string k_del, int id_exp)
        {
            try
            {
                SqlConnection Sqlconn = new SqlConnection(ClsModule.Conn.ToString());
                SqlCommand cmd = new SqlCommand();
                Sqlconn.Open();
                cmd.Connection = Sqlconn;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update exp_tab set [Status]='0', [K_Del]='"+k_del+"' where Id_exp ='" + id_exp + "'";
                cmd.ExecuteNonQuery();
                Sqlconn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }



    
    }
}