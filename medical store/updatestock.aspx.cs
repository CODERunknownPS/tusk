using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string i = "update addstock Set ItmName = @ItmName, Qnt=@Qnt where ItmName = @ItmName";
        SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@ItmName", TextBox1.Text);
        
        cmd.Parameters.AddWithValue("@Qnt", TextBox3.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('Added Successfullt')</script>");
        con.Close();
    }
}