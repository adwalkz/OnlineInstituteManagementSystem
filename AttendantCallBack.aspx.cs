using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantCallBack : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GridBind();
        }

        private void GridBind()
        {
            conn.Open();

            cmd = new SqlCommand("select CallerID, CallerName as Name, Contact, Convert(varchar, Date, 105)Call_Date, Reason, Email, Addr as Address from CallBack order by CallerID desc", conn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

            conn.Close();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            TextBox txtCN = (TextBox)GridView1.Rows[e.RowIndex].FindControl("CallerName");
            TextBox txtReason = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Reason");
            TextBox txtEmail = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Email");
            TextBox txtAddr = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Addr");
            Label txtCallerId = (Label)GridView1.Rows[e.RowIndex].FindControl("CallerID");

            conn.Open();
            cmd = new SqlCommand("update CallBack set " +
                                "CallerName = '" + txtCN.Text + "', " +
                                "Reason = '" + txtReason.Text + "', " +
                                "Email = '" + txtEmail.Text + "', " +
                                "Addr = '" + txtAddr.Text + "' " +
                                " where CallerID = " + txtCallerId.Text, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            GridView1.EditIndex = -1;
            GridBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GridBind();
        }
    }
}