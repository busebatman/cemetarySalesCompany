using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class SqlConnectionStringBuilder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source = LAPTOP-O32JBEQS;Initial Catalog=CEMETARY_SALES_COMPANY;Timeout=60;Max Pool Size=5000;Trusted_Connection=YES;");
        SqlDataAdapter da;
        DataTable dt;
        //sqlconn bgl = new sqlconn();
        protected void Page_Load(object sender, EventArgs e)
        {
            string dbConnectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString;

            var queryString = "SELECT * FROM GRAVEYARD_T";
            var dbConnection = new SqlConnection(dbConnectionString);
            var dataAdapter = new SqlDataAdapter(queryString, dbConnection);
            var commandBuilder = new SqlCommandBuilder(dataAdapter);
            var ds = new DataSet();
            dataAdapter.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

            /*SqlCommand komut = new SqlCommand("SELECT * FROM GRAVEYARD_T", bgl.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            GridView1.DataSource = oku;
            GridView1.DataBind();*/
        }



        protected void Button1_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(graveyard_id.Text);

            da = new SqlDataAdapter("Select GRAVE_T.graveID, GRAVE_T.ServiceID, GRAVE_T.Price " +
                "from graveyard_t INNER JOIN  grave_t  ON GRAVE_T.graveyardID = GRAVEYARD_T.graveyardID " +
                "WHERE GRAVEYARD_T.graveyardID =" + id + "", con);

            dt = new DataTable();
            da.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();

        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            string connectionString = ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ToString();

            SqlConnection con = new SqlConnection(connectionString);

            try
            {
                con.Open();
            }
            catch (Exception)
            {
                con.Close();
                return;
                throw;
            }
            Response.Redirect("Buying_Grave.aspx");
        }
    }
}