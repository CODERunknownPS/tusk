using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ContactUsaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string i = "insert into Contactus values(@Name,@Email,@MobNo,@Subject)";
        SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
        cmd.Parameters.AddWithValue("@MobNo", TextBox3.Text);
        cmd.Parameters.AddWithValue("@Subject", TextBox4.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        Label1.Text = "Thanks For Contact Us,We will reach you very soon";
        con.Close();
    }
}