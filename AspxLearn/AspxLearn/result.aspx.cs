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
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TampilJoinTab();
            }

        }
        private void TampilJoinTab()
        {
            DataTable Dt = new DataTable();
            Dt = ClsResult.TampilResult();
            RptJoinTab.DataSource = Dt;
            RptJoinTab.DataBind();
        }
    }
}