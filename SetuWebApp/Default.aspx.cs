using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

        if (RadioButtonList1.SelectedItem.Text == "Sign Up")
        {
            PanelSignUp.Visible = true;
            PanelLogin.Visible = false;
        }
        else
        {
            PanelLogin.Visible = true;
            PanelSignUp.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["setuconn"].ConnectionString))
        {
            con.Open();
            string query = "Select * from login WHERE username='" + TxtBoxUserName.Text + "' AND password='" + TxtBoxPassword.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["department"]=dr["department"].ToString();
                Session["enrollment"] = dr["enrollment"].ToString();
                Session["role"] = dr["role"].ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {
                labelerror.Visible = true;
            }
        }
    }
    protected void ButtonSignUp_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["setuconn"].ConnectionString))
        {
            con.Open();
            string query = "insert into " + DropDownListDeparment.SelectedValue.ToString() + DropDownListRole.SelectedValue.ToString() + " Values('" + TxtBoxEnrollment.Text + "','" + TxtBoxName.Text + "','" + DropDownListSem.SelectedValue.ToString()+"')";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            query = "insert into login Values('" + TxtBoxEnrollment.Text + "','" + TxtBoxUserNameSignup.Text + "','" + TxtBoxPasswordSignup.Text + "','" + DropDownListDeparment.SelectedValue.ToString() + "','" + DropDownListRole.SelectedValue.ToString() + "')";
            cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
            RadioButtonList1.Items[0].Selected = true;
            Response.Redirect("Default.aspx");
        }
    }
}