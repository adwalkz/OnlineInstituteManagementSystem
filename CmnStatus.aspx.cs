using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class CmnStatus : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        string Query = "";

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter(Query, conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Record Found";
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
            Stat.Text = Request.QueryString["Act"].ToUpper();

            Query = "select * from " + Request.QueryString["Act"] + " where UserID = " + Session["Key"].ToString() + " and UserType = '" + Request.QueryString["MAS"] + "' order by ";

            if (Request.QueryString["Act"] == "Leave")
                Query = "select Convert(varchar, FromDate, 105)From_Date, Convert(varchar, ToDate, 105)To_Date, Reason, LStatus as Status from " + Request.QueryString["Act"] + " where UserID = " + Session["Key"].ToString() + " order by Status desc";
            else
                Query = "select TicketID, Convert(varchar, Date, 105)Complain_Date, Issue, Status from " + Request.QueryString["Act"] + " where UserID = " + Session["Key"].ToString() + " order by Complain_Date desc";

            GridFun();
        }
    }
}