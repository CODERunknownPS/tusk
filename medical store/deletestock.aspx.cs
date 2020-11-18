using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class deletestock : System.Web.UI.Page
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
        Grid1.Visible = true;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridViewRow gr = Grid1.SelectedRow;
        txtSearch.Text = gr.Cells[0].Text;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        SqlConnection con = new SqlConnection(connStr);
        string i = " Delete from addstock where ItmName =@ItmName";
        SqlCommand cmd = new SqlCommand(i, con);
        cmd.Parameters.AddWithValue("@ItmName", txtSearch.Text);
        con.Open();

        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.Read())
        {

            Response.Write("<script language=javascript>alert('no record found')</script>");

        }
        else
        {
            ClientScript.RegisterStartupScript(Page.GetType(), "validation",
                   "<script language='javascript'>alert('Deleted Successfullt')</script>");
        }
        con.Close();
       
    }
}
