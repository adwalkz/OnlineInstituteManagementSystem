using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminFeesPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if(Request.QueryString["UT"] == "Admin")
                this.MasterPageFile = "MasterAdmin.Master";
            else if (Request.QueryString["UT"] == "Attendant")
                this.MasterPageFile = "MasterAttendant.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GridBind();

            if (Request.QueryString["UT"] == "Attendant")
            {
                Label2.Visible = false;
                GridView1.Columns[3].Visible = false;
            }
        }

        private void GridBind()
        {
            conn.Open();

            cmd = new SqlCommand("select * from Fee", conn);
            dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }

            conn.Close();
        }

        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridBind();
        }

        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            TextBox txtFee = (TextBox)GridView1.Rows[e.RowIndex].FindControl("SubFee");
            Label txtSubId = (Label)GridView1.Rows[e.RowIndex].FindControl("SubID");

            conn.Open();
            cmd = new SqlCommand("update Fee set SubFee = " + txtFee.Text + " where SubjectID = " + txtSubId.Text, conn);
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