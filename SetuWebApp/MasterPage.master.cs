using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       if (Session["role"] == null)
            Response.Redirect("Default.aspx");
        else
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["setuconn"].ConnectionString))
            {
                con.Open();
                string query = "select * from " + Session["department"].ToString() + Session["role"].ToString() + " WHERE enrollment = '" + Session["enrollment"]+"'";
                SqlCommand cmd = new SqlCommand(query, con);

                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    if (dr.Read())
                    {
                        Labelusername.Text = dr["name"].ToString();
                        Session["Name"] = dr["name"].ToString();
                        Session["sem"] = dr["sem"].ToString();
                    }
                }
            }
        }
        
    }
    protected void ButtonLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("Default.aspx");
    }
    protected void TabButtonHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void TabButtonBook_Click(object sender, EventArgs e)
    {
        Response.Redirect("Book.aspx");
    }
    protected void TabButtonNotice_Click(object sender, EventArgs e)
    {
        Response.Redirect("Notice.aspx");
    }
    protected void TabButtonProfile_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userprofile.aspx");
    }
}
