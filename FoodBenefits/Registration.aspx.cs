using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace FoodBenefits
{
    public partial class Registration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FoodBenefits"].ConnectionString);
                conn.Open();
                string checkuser = "select count(*) from Registrations where UserName='" + TextBoxUname.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write(" This UserName already Exist");
                }

                conn.Close();
            }

            if (Request.QueryString["registered"] != null && Request.QueryString["registered"] == "true")
            {
                registrationMessage.Text = "You have successfully registered.";
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FoodBenefits"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Registrations (FirstName,LastName,UserName,Password,ConfirmPassword,Gender,Address,EmailID) values (@Fname ,@Lname ,@Uname ,@Pwd ,@Cpwd ,@Gender ,@Addrs ,@Email)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Fname", TextBoxFname.Text);
                com.Parameters.AddWithValue("@Lname", TextBoxLname.Text);
                com.Parameters.AddWithValue("@Uname", TextBoxUname.Text);
                com.Parameters.AddWithValue("@Pwd", TextBoxPassword.Text);
                com.Parameters.AddWithValue("@Cpwd", TextBoxConfirmPassword.Text);
                com.Parameters.AddWithValue("@Gender", RadioButtonListGender.Text);
                com.Parameters.AddWithValue("@Addrs", TextBoxAddress.Text);
                com.Parameters.AddWithValue("@Email", TextBoxEmailID.Text);
                com.ExecuteNonQuery();
                conn.Close();
                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true); 
                //Response.Write("<script LANGUAGE='JavaScript' >alert('Login Successful')</script>");
                //Response.Write("Records successfully inserted");
                Response.Write("<script>alert('Data inserted successfully');</script>");
                Response.Redirect("Registration.aspx?registered=true");

             
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
        public static void EmptyTextBoxes(Control parent)
        {
            foreach (Control c in parent.Controls)
            {
                if (c.GetType() == typeof(TextBox))
                {
                    ((TextBox)(c)).Text = string.Empty;
                }
            }

        }
    }
}