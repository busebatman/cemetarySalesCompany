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
    public partial class Buying_Grave : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection("Data Source = LAPTOP-O32JBEQS;Initial Catalog=CEMETARY_SALES_COMPANY;Timeout=60;Max Pool Size=5000;Trusted_Connection=YES;");
        //SqlDataAdapter da;
        //DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //insert data to person, customer tables
        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string conString = "Data Source = LAPTOP-O32JBEQS;Initial Catalog=CEMETARY_SALES_COMPANY;Timeout=60;Max Pool Size=5000;Trusted_Connection=YES";

            String str_person_id = "select max(personID) from [person_t] ";
            Boolean existing_grave = true;
            Boolean s =true;
            Boolean f = true;
            SqlConnection sqlCnn;
            SqlCommand Cmd;
            SqlCommand sqlCmd;
            SqlCommand sing_grave_cmd;
            SqlCommand fam_grave_cmd;
            SqlCommand price_cmd;
            int graveyard_id = Convert.ToInt32(graveyard_id2.Text);
            int grave_id_ = Convert.ToInt32(grave_id.Text);
            int price=2000;
            String str_graveyard_id = Convert.ToString(graveyard_id2.Text);
            
            String str_sing_grave_capacity = "select SingularGraveCapacity from graveyard_t where graveyardID=" + graveyard_id + "";
            String sing_grave_capacity ;
            int int_sing_grave_capacity;
            String str_fam_grave_capacity = "select FamilyGraveCapacity from graveyard_t where graveyardID=" + graveyard_id + "";
            String fam_grave_capacity ;
            int int_fam_grave_capacity;
            sqlCnn = new SqlConnection(conString);
            int storeMaxId = 0;
            
            try
            {
                sqlCnn.Open();
                //read singular grave capacity from database as string
                sing_grave_cmd = new SqlCommand(str_sing_grave_capacity, sqlCnn);
                sing_grave_capacity = Convert.ToString(sing_grave_cmd.ExecuteScalar());
                sing_grave_cmd.ExecuteNonQuery();
                //converting capacity value from string to int
                int_sing_grave_capacity = Convert.ToInt32(sing_grave_capacity);
                //initializing max graveID based on capacity such as sing grave capacity is 200, graveyardID is 345; max value of graveID is 345200 
                sing_grave_capacity = str_graveyard_id + sing_grave_capacity;
                int max_sing_grave_id = Convert.ToInt32(sing_grave_capacity);

                fam_grave_cmd = new SqlCommand(str_fam_grave_capacity, sqlCnn);
                fam_grave_capacity = Convert.ToString(fam_grave_cmd.ExecuteScalar());
                fam_grave_cmd.ExecuteNonQuery();
                //converting capacity value from string to int
                int_fam_grave_capacity = Convert.ToInt32(fam_grave_capacity);
                //increasing family grave ID values based on capacity
                int_fam_grave_capacity = int_fam_grave_capacity + int_sing_grave_capacity;
                fam_grave_capacity = Convert.ToString(int_fam_grave_capacity);
                fam_grave_capacity = str_graveyard_id + fam_grave_capacity;
                int max_fam_grave_id = Convert.ToInt32(fam_grave_capacity);

                if (sing_grave_box.Checked)
                {
                    if (existingGrave.Checked)
                    {
                        existing_grave = false;
                    }
                    if (grave_id_ > max_sing_grave_id)
                    {
                        Response.Write("<script>alert('enter valid graveID')</script>");
                        s = false;
                    }
                    else
                        s = true;

                }
                else if (fam_grave_box.Checked)
                {
                    
                    if (existingGrave.Checked)
                    {
                        existing_grave = false;
                    }
                    if ((grave_id_ < max_sing_grave_id) && (grave_id_ > max_fam_grave_id))
                        
                    {
                        Response.Write("<script>alert('enter valid graveID')</script>");
                        f = false;
                    }
                    else
                        f = true;

                }
                //taking price according to table values

                /* Alter Proc getPrice
                 @grave_id int, @graveyard_id int
                 as
                 select Price from grave_t where graveyardID = @graveyard_id and graveID = (@grave_id - 1);*/

                /*
                String str_price = "select Price from grave_t where graveyardID=" + graveyard_id + " and graveID=" + (grave_id_ - 1) + "";
                String str_price2 = " create procedure getPrice  @grave_id int, @graveyard_id int as select Price from grave_t where graveyardID = @graveyard_id and graveID = (@grave_id - 1)";
                
                price_cmd = new SqlCommand(str_price, sqlCnn);
                price = Convert.ToInt32(price_cmd.ExecuteScalar());
                price_cmd.ExecuteNonQuery();*/

                //person id is automatically increased by one when new customer is added
                sqlCmd = new SqlCommand(str_person_id, sqlCnn);
                storeMaxId = Convert.ToInt32(sqlCmd.ExecuteScalar());
                storeMaxId++;

                /*Cmd = new SqlCommand();
                Cmd.CommandType = CommandType.StoredProcedure;
                Cmd.CommandText = "getPrice";
                Cmd.Parameters.AddWithValue("@grave_id", grave_id_);// Dısarıdan Store Procedure parametre ekliyoruz.. 
                Cmd.Parameters.AddWithValue("@graveyard_id", graveyard_id);
                Cmd.Connection = con;
                price = Cmd.ExecuteNonQuery();*/
                
                sqlCmd.Dispose();
                sqlCnn.Close();
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('error')</script>");
            }
            if(f & s )
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Person_T values(" + storeMaxId + " , '" + first_name.Text + "', '" + last_name.Text + "', '" + gender.Text + "' ) ", con);
                SqlCommand cmd2 = new SqlCommand("insert into phone_number_t values(" + storeMaxId + " , '" + phone_number.Text + "' ) ", con);
                if (existing_grave)
                {
                    SqlCommand cmd3 = new SqlCommand("insert into grave_t(GraveID, GraveYardID, Price) values(" + grave_id_ + " , " + graveyard_id + ", " + price + ")", con);
                    cmd3.ExecuteNonQuery();
                }
                SqlCommand cmd4 = new SqlCommand("insert into customer_t values(" + storeMaxId + " , " + grave_id_ + ", '" + birth_date.Text + "', " +
                    "'" + city.Text + "' , '" + district.Text + "' , " + Convert.ToInt32(postal_code.Text) + "  ) ", con);
                
                cmd.ExecuteNonQuery();
                cmd2.ExecuteNonQuery();
                
                int i = cmd4.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('User added')</script>");
                }
                else
                {
                    Response.Write("<script>alert('error')</script>");
                }
            }
            
        }
    }
}