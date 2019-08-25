using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Notice : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        PanelNotice.Visible = false;
        PanelPostNotice.Visible = true;
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["setuconn"].ConnectionString))
        {
            con.Open();
            string query = "insert into " + DropDownListnoticefor.SelectedValue.ToString() +"notice (enrollment,postedby,subject,body) Values('"+Session["enrollment"]+"','" + TxtBoxpostedby.Text + "','" + TxtBoxSubject.Text + "','" + TxtBoxBody.Text + "')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            Response.Redirect("Home.aspx");
        }

    }
}