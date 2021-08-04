using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminIndex : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select count(*) from Login where UserType = 'Student'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                NOS.Text = dr[0].ToString();
            dr.Close();
            cmd = new SqlCommand("select count(*) from Login where UserType = 'Teacher'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                NOF.Text = dr[0].ToString();
            dr.Close();
            cmd = new SqlCommand("select count(*) from Login where UserType = 'Attendant'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                NOA.Text = dr[0].ToString();
            dr.Close();

            cmd = new SqlCommand("select count(*) from Complain where Status = 'Pending'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                PCom.Text = dr[0].ToString();
            dr.Close();
            cmd = new SqlCommand("select count(*) from CallBack where Reason = '<unknown>'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                PCB.Text = dr[0].ToString();
            dr.Close();

            conn.Close();
        }
    }
}