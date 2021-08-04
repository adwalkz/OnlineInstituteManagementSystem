using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class StudentAttendancePage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select Convert(varchar, AttDate, 105)Date, Slot, TeacherID, Subject, SAtt as Status from Attendance where StudentID = " + Session["Key"].ToString() + " order by AttDate desc", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Record Found";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridFun();
        }
    }
}