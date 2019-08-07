using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using AspxLearn.Classes;


namespace AspxLearn
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            DataTable DtLogin = new DataTable();
            DtLogin = ClsLogin.DtLogin(txtUsername.Text,txtPassword.Text);

            if(DtLogin.Rows.Count==1)
            {
                Response.Redirect("~/result.aspx");
            }
            else
            {
                LblWarning.Text = "Username Atau Password Anda Salah!";
            }
          


        }
    }
}