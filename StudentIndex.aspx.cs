using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class StudentIndex : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select *, Convert(varchar, DOB, 105)DOBS, Convert(varchar, DOA, 105)DOAS from Student where StudentID = " + Session["Key"].ToString(), conn);

            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {
                SName.Text = dr["SName"].ToString();
                DP.ImageUrl = dr["DP"].ToString();

                UID.Text = dr["StudentID"].ToString();
                DOA.Text = dr["DOAS"].ToString();
                DOB.Text = dr["DOBS"].ToString();
                Class.Text = dr["SClass"].ToString();
                Sub.Text = dr["Sub"].ToString();
                Batch.Text = dr["Batch"].ToString();

                Session["Class"] = dr["SClass"].ToString();
            }

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CmnEdit.aspx?MAS=Student&Act=Edit");
        }
    }
}