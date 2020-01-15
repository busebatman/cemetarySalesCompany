using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;


namespace WebApplication3
{
    public class sqlconn
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source = LAPTOP - O32JBEQS; Initial Catalog = CEMETARY_SALES_COMPANY; Timeout=60;Max Pool Size=5000;Trusted_Connection=YES;");
            NewMethod(baglan);
            return baglan;
        }

        private static void NewMethod(SqlConnection baglan)
        {
            baglan.Open();
        }
    }
}