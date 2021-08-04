using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class StudentAssignmentPagr : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select AssignmentID, TeacherID, Sub, Topic, Convert(varchar, UploadDate, 105)Uploaded_On, DownloadLink from Assignment where Class = '" + Session["Class"] + "' and Sub like '%" + Session["Sub"] + "%' order by UploadDate desc", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Assignment Found";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridFun();
        }
    }
}