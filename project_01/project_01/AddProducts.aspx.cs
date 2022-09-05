using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EShoppingWebsite.Models;

namespace project_01
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void imgButton_Click(object sender, ImageClickEventArgs e)
        {
           
        }

        protected void DetailsView1_ItemInserting(object sender, DetailsViewInsertEventArgs e)
        {
            
        }

        protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
           
        }

        protected void cal_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void DetailsView1_ItemInserting1(object sender, DetailsViewInsertEventArgs e)
        {
            FileUpload fu = DetailsView1.FindControl("fuPic") as FileUpload;
            if (fu.HasFile)
            {
                string filename = Guid.NewGuid() + Path.GetExtension(fu.FileName);
                fu.PostedFile.SaveAs(Server.MapPath("~/Pictures/") + filename);
                e.Values["productImage"] = filename;
            }
        }

        protected void DetailsView1_ItemUpdating1(object sender, DetailsViewUpdateEventArgs e)
        {
            FileUpload fu = (FileUpload)DetailsView1.FindControl("fuPicture");
            if (fu.PostedFile != null)
            {
                if (fu.PostedFile.ContentLength > 0)
                {
                    string filename = Guid.NewGuid() + Path.GetExtension(fu.FileName);
                    fu.PostedFile.SaveAs(Server.MapPath("~/Pictures/") + filename);
                    e.NewValues["productImage"] = filename;
                }

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Calendar ca = DetailsView1.FindControl("Calendar1") as Calendar;
            if (ca.Visible)
            {
                ca.Visible = false;
            }
            else
            {
                ca.Visible = true;
            }
            ca.Attributes.Add("style", "position :absolute");
        }

        protected void Calendar1_SelectionChanged1(object sender, EventArgs e)
        {
            Calendar ca = DetailsView1.FindControl("Calendar1") as Calendar;
            TextBox joinDate = DetailsView1.FindControl("txtSellDate") as TextBox;
            joinDate.Text = ca.SelectedDate.ToString("yyyy-MM-dd");
            ca.Visible = false;
        }
    }
}