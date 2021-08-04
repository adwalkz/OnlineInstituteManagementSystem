using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantNotifications : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select top (20) * from Notification where UserType in ('All', '" + Request.QueryString["MAS"] + "') order by NotificationID desc ", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Notification For Now";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            conn.Close();
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["MAS"] == "Attendant")
                this.MasterPageFile = "MasterAttendant.Master";
            else if (Request.QueryString["MAS"] == "Teacher")
                this.MasterPageFile = "MasterTeacher.Master";
            else if (Request.QueryString["MAS"] == "Student")
                this.MasterPageFile = "MasterStudent.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridFun();
        }
    }
}