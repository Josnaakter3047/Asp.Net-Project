using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EShoppingWebsite.Models
{
    
    public class BrandGetWay
    {

        SqlConnection con = new SqlConnection(Connection.GetConnection());
        public class Brand
        {
            public int ID { get; set; }
            public string BrandName { get; set; }
        }
        public IQueryable<Brand> Get()
        {
            
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("Select * From Brand",con);
            sda.Fill(dt);
            return dt.AsEnumerable()
                .Select(r => new Brand
                {
                    ID=r.Field<int>("brandId"),
                    BrandName=r.Field<string>("brandName")
                }).AsQueryable();
        }
        public void Insert(Brand b)
        {
            SqlCommand cmd = new SqlCommand("Insert into Brand (brandName) values(@brandName)",con);
            cmd.Parameters.AddWithValue("@brandName",b.BrandName);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Update(Brand b)
        {
            SqlCommand cmd = new SqlCommand("Update Brand Set brandName=@brandName Where brandId=@i", con);
            cmd.Parameters.AddWithValue("@brandName", b.BrandName);
            cmd.Parameters.AddWithValue("@i", b.ID);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public void Delete(int id)
        {
            SqlCommand cmd = new SqlCommand("Delete From Brand Where brandId=@i", con);
            cmd.Parameters.AddWithValue("@i",id);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
    
}