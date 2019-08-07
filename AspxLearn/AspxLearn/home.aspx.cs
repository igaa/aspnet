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
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TampilData();
            }
 

        }
        private void TampilData()
        {
            DataTable Dt = new DataTable();
            Dt = ClsHomepage.TampilData();
            RptTampilExp.DataSource = Dt;
            RptTampilExp.DataBind();
        }
       

        protected void btnSave_Click(object sender, EventArgs e)
        {
            ClsHomepage.simpanexp(txtId_user.Text,txtTitle.Text,txtY_start.Text,txtY_end.Text,txtPosition.Text,txtDescription.Text);
            TampilData();

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            ClsHomepage.editexp(txtEId_user.Text, txtETitle.Text, txtEY_start.Text, txtEY_end.Text, txtEPosition.Text, txtEDescription.Text, Convert.ToInt32(txtEid_exp.Text));
            TampilData();
        }

       

        protected void S_del_Click(object sender, EventArgs e)
        {
            ClsHomepage.softdelete(txtDelK_del.Text, Convert.ToInt32(txtDelId_exp.Text));
            TampilData();
        }
    }
}