using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class addcompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        if (checkUser() == true)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('Company Already Exists')</script>");
        }
        else
        {

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string i = "insert into addcompany  values(@ComName,@Adds,@MedName,@MobNo)";
            SqlCommand cmd = new SqlCommand(i, con);
            cmd.Parameters.AddWithValue("@ComName", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Adds", TextBox3.Text);
            cmd.Parameters.AddWithValue("@MedName", TextBox4.Text);
            cmd.Parameters.AddWithValue("@MobNo", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('Added Successfullt')</script>");
            con.Close();
        }
    }
    private Boolean checkUser()
    {
        Boolean useravailable = false;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        String myquery = "Select * from addstock where ComName='" + TextBox2.Text + "'";
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

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
}
