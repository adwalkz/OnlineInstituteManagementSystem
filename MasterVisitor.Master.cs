using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class MasterVisitor : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("insert into CallBack (Date, CallerName, Contact) values ( GETDATE(), " +
                                    "'" + CName.Text + "'," +
                                    "'" + CCon.Text + "')", conn);

            int x = cmd.ExecuteNonQuery();

            if (x > 0)
            {
                Label1.Text = "Request Submitted Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            conn.Close();
        }
    }
}