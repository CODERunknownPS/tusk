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
        if (checkUser() == true)
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                "<script language='javascript'>alert('Itemname Already Exists')</script>");
        }
        else
        {

            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string i = "insert into addstock values(@ItmName,@ItmDetail,@Price,@Qnt,@ComName,@ExpDt)";
            SqlCommand cmd = new SqlCommand(i, con);
            cmd.Parameters.AddWithValue("@ItmName", TextBox1.Text);
            cmd.Parameters.AddWithValue("@ItmDetail", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Price", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Qnt", TextBox4.Text);
            cmd.Parameters.AddWithValue("@ComName", TextBox5.Text);
            cmd.Parameters.AddWithValue("@ExpDt", TextBox6.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('Added Successfully')</script>");
            con.Close();
        }
    }
    private Boolean checkUser()
    {
        Boolean useravailable = false;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        String myquery = "Select * from addstock where ItmName='" + TextBox1.Text + "'";
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

}
