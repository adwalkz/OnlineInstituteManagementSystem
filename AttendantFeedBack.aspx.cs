using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantFeedBack : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select Convert(varchar, Date, 105)FeedBack_Date, UserType, UserID, UserName, FeedBack from FeedBack order by Date desc", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Feed Back Found";
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