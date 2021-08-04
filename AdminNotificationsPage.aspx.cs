using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminNotificationsPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("insert into Notification (NotDateTime, UserType, Detail) values (" +
	                                "convert(varchar, GETDATE(), 109)," +
	                                "'" + UserType.SelectedValue + "'," +
	                                "'" + TextBox1.Text +"')", conn);
            
            int x = cmd.ExecuteNonQuery();

            if (x > 0)
            {
                UserType.SelectedIndex = 0;
                TextBox1.Text = "";
            }

            conn.Close();
        }
    }
}