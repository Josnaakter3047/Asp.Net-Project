using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;

namespace project_01
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
           
            if (txtFullName.Text!="" && txtContactNumber.Text!=""&& txtEmail.Text!="" && txtUserName.Text!="" && txtPassword.Text!="")
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["EShoppingAspDb"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Insert into Users (fullName,contactNumber,emailAddress,userName,password) Values ('" + txtFullName.Text + "','" + txtContactNumber.Text + "','" + txtEmail.Text + "','" + txtUserName.Text + "','" + txtPassword.Text + "')", con);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script> alert('Registration Complete Successfully!!'); </script>");
                    AllClear();
                    con.Close();
                }
                
                Response.Redirect("~/logIn.aspx");
            }
            else
            {
                Response.Write("<script> alert('Registration Failed!!'); </script>");
                lblMsg.Visible = true;
            }
            

        }
        protected void AllClear()
        {
            txtFullName.Text = "";
            txtContactNumber.Text = "";
            txtEmail.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value.Length > 3)
                args.IsValid = true;
            else
                args.IsValid = false;
        }
    }
}