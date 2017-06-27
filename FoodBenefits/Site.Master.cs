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
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void logMeOut(object sender, EventArgs e)
        {
            if (Session["userName"] != null)
            {
                Session.RemoveAll();
                lblwelcome.Text = "";
                Response.Redirect("Default.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["UserName"] != null)
                {
                    lblwelcome.Text = Session["UserName"].ToString();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }


            finally
            {
                
            }         
            
        }
    }
}