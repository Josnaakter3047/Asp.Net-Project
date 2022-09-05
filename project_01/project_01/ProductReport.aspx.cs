using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_01
{
    public partial class ProductReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-T3FMBE6;Initial Catalog=EShoppingAspDb;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select * from Products",con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            ReportDocument cryRpt = new ReportDocument();
            cryRpt.Load(Server.MapPath("rptProduct.rpt"));
            cryRpt.SetDataSource(ds.Tables["CrystalReportViewer1"]);
            CrystalReportViewer1.ReportSource = cryRpt;
            cryRpt.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Product Information");
        }
    }
}