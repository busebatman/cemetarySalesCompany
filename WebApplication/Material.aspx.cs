using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Material : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source = LAPTOP-O32JBEQS;Initial Catalog=CEMETARY_SALES_COMPANY;Timeout=60;Max Pool Size=5000;Trusted_Connection=YES;");
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            

            da = new SqlDataAdapter("Select MATERIAL_T.MaterialName, SUPPLIER_T.CompanyName,  SUPPLIER_T.ContactNumber, SUPPLY_RELATION_T.SupplyDate," +
                " SUPPLY_RELATION_T.SupplyAmount, SUPPLY_RELATION_T.SupplyPrice from MATERIAL_T, SUPPLIER_T, SUPPLY_RELATION_T WHERE " +
                "SUPPLIER_T.SupplierID =SUPPLY_RELATION_T.SupplierID AND MATERIAL_T.MaterialID=SUPPLY_RELATION_T.MaterialID ", con);

            dt = new DataTable();
            da.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
    }
}