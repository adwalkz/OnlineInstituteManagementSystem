using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class TeacherIndex : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select *, Convert(varchar, DOB, 105)DOBS, Convert(varchar, DOJ, 105)DOJS from Teacher where TeacherID = " + Session["Key"].ToString(), conn);

            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {
                Session["Key"] = dr["TeacherID"];
                Session["Sub"] = dr["Sub"];
                Session.Timeout = 15;
                TName.Text = dr["TName"].ToString();
                DP.ImageUrl = dr["DP"].ToString();

                UID.Text = dr["TeacherID"].ToString();
                DOJ.Text = dr["DOJS"].ToString();
                DOB.Text = dr["DOBS"].ToString();
                Exp.Text = dr["Sub"].ToString();
            }

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CmnEdit.aspx?MAS=Teacher&Act=Edit");
        }
    }
}