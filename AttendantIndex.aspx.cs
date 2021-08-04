using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantIndex : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select *, Convert(varchar, DOB, 105)DOBS, Convert(varchar, DOJ, 105)DOJS from Attendant where AttendantID = " + Session["Key"].ToString(), conn);

            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {
                Session["Key"] = dr["AttendantID"];
                Session.Timeout = 15;
                AName.Text = dr["AName"].ToString();
                DP.ImageUrl = dr["DP"].ToString();

                UID.Text = dr["AttendantID"].ToString();
                DOJ.Text = dr["DOJS"].ToString();
                DOB.Text = dr["DOBS"].ToString();
            }
            dr.Close();

            cmd = new SqlCommand("select count(*) from CallBack", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                NCB.Text = dr[0].ToString();
            }
            dr.Close();

            cmd = new SqlCommand("select count(*) from Complain where Status = 'Pending'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                NOC.Text = dr[0].ToString();
            }
            dr.Close();

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CmnEdit.aspx?MAS=Attendant&Act=Edit");
        }
    }
}