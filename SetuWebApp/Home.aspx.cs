using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["setuconn"].ConnectionString))
        {
            con.Open();
            string query = "Select * from " + Session["department"] + "notice ORDER BY time desc";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            int i = 1;
            int x = (Request.Browser.ScreenPixelsWidth)*2-100;
            while (dr.Read())
            {
                Table t = new Table();
                t.ID = Convert.ToString("table" + i);
                t.BorderColor = System.Drawing.Color.Red;
                t.BorderWidth = 1;
                t.Width = x;

                TableRow tr1 = new TableRow();
                TableCell td11 = new TableCell();
                td11.Text = "NOTICE";
                td11.HorizontalAlign = HorizontalAlign.Center;
                tr1.Cells.Add(td11);
                t.Rows.Add(tr1);

                TableRow tr2 = new TableRow();
                TableCell td21 = new TableCell();
                td21.Text = "Poster By : " + dr["postedby"];
                tr2.Cells.Add(td21);
                t.Rows.Add(tr2);

                TableRow tr3 = new TableRow();
                TableCell td31 = new TableCell();
                td31.Text = "Subject : " + dr["Subject"];
                tr3.Cells.Add(td31);
                t.Rows.Add(tr3);

                TableRow tr4 = new TableRow();
                TableCell td41 = new TableCell();
                td41.Text = (string)dr["body"];
                tr4.Cells.Add(td41);
                t.Rows.Add(tr4);
     
                PlaceHolder1.Controls.Add(t);
            }

        }
    }
}