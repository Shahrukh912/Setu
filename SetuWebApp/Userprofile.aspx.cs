using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Userprofile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        

        if (ViewState["editprofilebuttonclicked"] == null)
        {
            Paneldefaultprofile.Visible = true;
            Labelrole.Text = Session["role"].ToString();
            Labelname.Text = Session["name"].ToString();
            Labeldepartment.Text = Session["department"].ToString();
            Labelsem.Text = Session["sem"].ToString();
        }
        else
        {
            Paneleditprofile.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ViewState["editprofilebuttonclicked"] = "true";
        Paneldefaultprofile.Visible = false;
        Paneleditprofile.Visible = true;
    }
}