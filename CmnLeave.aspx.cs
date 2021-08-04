using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantLeave : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        string Query = "";
        string Name = "";
        int Leave;
        int x;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if(Request.QueryString["MAS"] == "Attendant" )
                this.MasterPageFile = "MasterAttendant.Master";
            else if(Request.QueryString["MAS"] == "Teacher" )
                this.MasterPageFile = "MasterTeacher.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Query = "select Leave, " + Request.QueryString["MAS"][0] + "Name from " + Request.QueryString["MAS"] + " where " + Request.QueryString["MAS"]+ "ID = " + Session["Key"].ToString();

            conn.Open();

            cmd = new SqlCommand(Query, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Leave = Convert.ToInt32(dr[0].ToString());
                Lbalance.Text = dr[0].ToString();
                Name = dr[1].ToString();
            }

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Leave > 0)
            {
                Query = "insert into Leave (UserType, UserID, UserName, FromDate, ToDate, Reason) values (" +
                            "'" + Request.QueryString["MAS"] + "'," +
                            "" + Session["Key"].ToString() + "," +
                            "'" + Name + "'," +
                            "'" + FDate.Text + "'," +
                            "'" + TDate.Text + "'," +
                            "'" + Reason.Text + "')";

                conn.Open();
                cmd = new SqlCommand(Query, conn);
                x = cmd.ExecuteNonQuery();
                
                if (x == 1)
                {
                    Label1.Text = "Leave Applied";
                    Label1.ForeColor = System.Drawing.Color.Green;

                    Query = "update " + Request.QueryString["MAS"] + " set Leave = " + (Leave-1) + " where " + Request.QueryString["MAS"] + "ID = " + Session["Key"].ToString();
                    cmd = new SqlCommand(Query, conn);
                    cmd.ExecuteNonQuery();
                }
                else
                {
                    Label1.Text = "Something went wrong";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                conn.Close();
            }
            else
            {
                Label1.Text = "Maximum leaves applied";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CmnStatus.aspx?MAS=" + Request.QueryString["MAS"] + "&Act=Leave");
        }
    }
}