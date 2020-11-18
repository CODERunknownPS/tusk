using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class Register2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (checkUser() == true)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('Username Already Exists')</script>");
        }
        else
        {

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string i = "insert into Register values(@Username,@Email,@ContactNo,@Password,@ConfirmPassword)";
            SqlCommand cmd = new SqlCommand(i, con);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ContactNo", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("login1.aspx");
            con.Close();
        }
    }
    private bool checkUser()
    {
        bool useravailable = false;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        String myquery = "Select * from Register where Username='" + TextBox1.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            useravailable = true;
        }
        con.Close();
        return useravailable;
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}
