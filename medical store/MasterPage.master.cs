using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["Username"] == null)
        {
            Response.Redirect("login1.aspx");
        }

        Label2.Text = System.DateTime.Now.ToString();
        Label3.Text = System.DateTime.Now.DayOfWeek.ToString();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("login1.aspx");
    }
}
