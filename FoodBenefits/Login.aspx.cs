using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FoodBenefits
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
        protected void button_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FoodBenefits"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand("Select * from Registrations where UserName =@UserName and Password =@Password", conn);
                com.Parameters.AddWithValue("@UserName", TxtUserName.Text);
                com.Parameters.AddWithValue("@Password", TxtPassword.Text);
                SqlDataAdapter da = new SqlDataAdapter(com);
                DataTable dt = new DataTable();
                da.Fill(dt);


                if (dt.Rows.Count > 0)
                {
                    Session["UserName"] = TxtUserName.Text;
                    
                    if (dt.Rows[0]["IsAdmin"] != null && Convert.ToBoolean(dt.Rows[0]["IsAdmin"]) == true)
                    {
                        Session["isAdmin"] = "true";
                    }
                    else
                    {
                        Session["isAdmin"] = "false";
                    }
                    Response.Redirect("Default.aspx");
                }

                else
                {
                    //ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");
                    //Response.Redirect("Registration.aspx");
                    Response.Write("<script>alert('Invalid Username and Password');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
    
        }
    }
}
