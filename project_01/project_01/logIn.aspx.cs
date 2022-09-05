using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project_01
{
    public partial class logIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text != "" && txtPassword.Text != "")
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EShoppingAspDb"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Select * From Users Where userName=@uName and password=@pass", con);
                    cmd.Parameters.AddWithValue("@uName", txtUserName.Text);
                    cmd.Parameters.AddWithValue("@pass", txtPassword.Text);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    if (dt.Rows.Count != 0)
                    {
                        Response.Redirect("~/Default.aspx");
                    }
                    else
                    {
                        lblMsg.Visible = true;
                    }
                    cmd.ExecuteNonQuery();
                    //Response.Write("<script> alert('Registration Complete Successfully!!'); </script>");
                    clear();
                    con.Close();
                }
            }
            
           
        }
        protected void clear()
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtUserName.Focus();
        }
    }
}