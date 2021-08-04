using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class VisitorLogin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            UserType.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            string utype = UserType.SelectedValue;
            string uname = UserName.Text;
            string upass = UserPassword.Text;

            cmd = new SqlCommand("select * from Login where UserType = '" + utype.ToUpper() + "' and UserName = '" + uname.ToUpper() + "' and UserPassword = '" + upass + "'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {
                Session["Key"] = dr[1].ToString();
                Session.Timeout = 15;
                Response.Redirect(utype + "Index.aspx");
            }

            conn.Close();
        }
    }
}