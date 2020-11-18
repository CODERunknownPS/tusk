using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class viewstock : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            this.SearchCustomers();
        }
    }

    private void SearchCustomers()
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string sql = "SELECT ItmName,ItmDetail,Price,Qnt,ComName,ExpDt FROM addstock";
        SqlCommand cmd = new SqlCommand(sql, con);
        if (!string.IsNullOrEmpty(txtSearch.Text.Trim()))
        {
            sql += " WHERE ItmName LIKE @ItmName + '%'";
            cmd.Parameters.AddWithValue("@ItmName", txtSearch.Text.Trim());
        }
        cmd.CommandText = sql;
        cmd.Connection = con;
        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
        {

            DataTable dt = new DataTable();
            sda.Fill(dt);
            Grid1.DataSource = dt;
            Grid1.DataBind();

        }
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

    }
}