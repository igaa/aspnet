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
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TampilContact();
            }
        }
        private void TampilContact()
        {
            DataTable Dt = new DataTable();
            Dt = ClsContact.tampilContact();
            ContactRpt.DataSource = Dt;
            ContactRpt.DataBind();
        }

        

        protected void btnCoSave_Click(object sender, EventArgs e)
        {
            ClsContact.simpanCon( Convert.ToInt32(txtUId.Text), txtName.Text, txtMobile.Text, txtAddress.Text);
            TampilContact();
        }

        protected void btnEditCon_Click(object sender, EventArgs e)
        {
            ClsContact.editcon(Convert.ToInt32(txtEUId.Text), txtEName.Text, txtEMobile.Text, txtEAddres.Text, Convert.ToInt32(txtEIdcon.Text));
            TampilContact();
        }
    }
}