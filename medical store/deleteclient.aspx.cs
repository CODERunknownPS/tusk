using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class deletecleint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.SearchCustomers();
        }
    }

    private Boolean SearchCustomers()
    {
        Boolean useravailable = false;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string sql = "SELECT ClientN,MobNo,Adds,MedN FROM addclient";
        SqlCommand cmd = new SqlCommand(sql, con);
        if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
        {
            sql += " WHERE ClientN LIKE @ClientN + '%'";
            cmd.Parameters.AddWithValue("@ClientN", txtSearch.Text.Trim());
        }
        cmd.CommandText = sql;
        cmd.Connection = con;
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);
            Grid1.DataSource = dt;
            Grid1.DataBind(); DataSet ds = new DataSet();
            sda.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                useravailable = true;
            }

        }
        return useravailable;
    }


    protected void Search(object sender, EventArgs e)
    {
        this.SearchCustomers();
    }
    protected void OnPaging(object sender, GridViewPageEventArgs e)
    {
        Grid1.PageIndex = e.NewPageIndex;
        this.SearchCustomers();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = Grid1.SelectedRow;
        txtSearch.Text = gr.Cells[0].Text;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (SearchCustomers() == true)
        {
            string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
            SqlConnection con = new SqlConnection(connStr);
            string i = " Delete from addclient where ClientN =@ClientN";
            SqlCommand cmd = new SqlCommand(i, con);
            cmd.Parameters.AddWithValue("@ClientN", txtSearch.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('Deleted Successfully')</script>");
            con.Close();
        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                   "<script language='javascript'>alert('No record found')</script>");
            
            
        }
    }
}