using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Drawing;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string Username = string.Empty;
        string Password = string.Empty;
        string connStr = ConfigurationManager.ConnectionStrings["connStr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(connStr))
        {
            using (SqlCommand cmd = new SqlCommand("select Username, Password from Register where Email = @Email "))
            {
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text.Trim());
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        Username = sdr["Username"].ToString();
                        Password = sdr["Password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(Password))
        {
            MailMessage mm = new MailMessage("pspraja840@gmail.com", TextBox2.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.",Username, Password);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "pspraja840@gmail.com";
            NetworkCred.Password = "psthedon";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblMessage.ForeColor = Color.Green;
            lblMessage.Text = "Password has been sent to your email address.";
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email address does not match our records.";
        }

    }
}