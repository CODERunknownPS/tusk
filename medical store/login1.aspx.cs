using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class login1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string user = TextBox1.Text.Trim();
        string i = "select * from Register where UserName =@Username and Password=@Password";
        SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        con.Open();
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            rd.Read();
            Session["Username"] = rd["Username"].ToString();
            Response.Redirect("Home.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
            "<script language='javascript'>alert('Invalid Username and Password')</script>");
            con.Close();

        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
     
    }
}