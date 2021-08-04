using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["MAS"] == "Student")
                this.MasterPageFile = "MasterStudent.Master";
            else if (Request.QueryString["MAS"] == "Teacher")
                this.MasterPageFile = "MasterTeacher.Master";
            else if (Request.QueryString["MAS"] == "Attendant")
                this.MasterPageFile = "MasterAttendant.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            Label2.Text = "";

            conn.Open();

            cmd = new SqlCommand("select UserPassword from Login where UserID = " + Session["Key"].ToString(), conn);
            dr = cmd.ExecuteReader();
            dr.Read();

            if (OldPass.Text != dr["UserPassword"].ToString())
            {
                Label1.Text = "Incorrect Password";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                dr.Close();

                if (TextBox2.Text != NewPass.Text)
                {
                    Label2.Text = "Password Mismatch";
                    Label2.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    cmd = new SqlCommand("update Login set UserPassword = '" + NewPass.Text + "' where UserID = " + Session["Key"].ToString(), conn);

                    int x = cmd.ExecuteNonQuery();

                    if (x > 0)
                        Response.Redirect("VisitorLoginPage.aspx");
                }
            }

            conn.Close();
        }
    }
}