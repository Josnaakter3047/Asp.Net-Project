using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EShoppingWebsite.Models
{
    public class Connection
    {
        public static string GetConnection()
        {
            string strCon = "Data Source=DESKTOP-T3FMBE6;Initial Catalog=EShoppingAspDb;Integrated Security=True";
            return strCon;
        }
    }
}