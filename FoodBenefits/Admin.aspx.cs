using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FoodBenefits
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isAdmin"] == null || Session["isAdmin"] == "false")
            {
                Response.Redirect("Default.aspx");
            }
        }

       protected void lblInsert_Click(object sender, EventArgs e)
        {
            SqlDataSource1.InsertParameters["FirstName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtFname")).Text;
            SqlDataSource1.InsertParameters["LastName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtLname")).Text;
            SqlDataSource1.InsertParameters["UserName"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtUname")).Text;
            SqlDataSource1.InsertParameters["Password"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPass")).Text;
            SqlDataSource1.InsertParameters["ConfirmPassword"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCpass")).Text;
            SqlDataSource1.InsertParameters["Gender"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("DropDownList2")).SelectedValue;
            SqlDataSource1.InsertParameters["Address"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtAdds")).Text;
            SqlDataSource1.InsertParameters["EmailID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;

            SqlDataSource1.Insert();
            Response.Write("<script>alert('Data inserted successfully')</script>");
        }

       protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
       {
           if(e.Row.RowType == DataControlRowType.DataRow)
           {
               LinkButton lb = (LinkButton)e.Row.FindControl("LinkButton2");
               lb.Attributes.Add("onclick", "return confirm('Do you want to delete this Record with ID = "+ DataBinder.Eval(e.Row.DataItem,"User_ID") +"');");
           }
       }
       
    }
}




