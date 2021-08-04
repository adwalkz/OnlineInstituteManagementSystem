using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantComplain : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        int x;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                GridFun();
        }

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select UserType, UserID, UserName, Convert(varchar, Date, 105)Complain_Date, Issue, TicketID from Complain where Status = 'Pending'", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Button1.Visible = false;
                Label1.Text = "No Camplain Found :)";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Act = "Pending";

            CheckBox cb1;

            conn.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                cb1 = row.Cells[0].FindControl("CheckBox1") as CheckBox;

                if(cb1.Checked)
                    Act = "Close";

                cmd = new SqlCommand("update Complain set Status = '" + Act + "' where TicketID = " + row.Cells[6].Text, conn);
            
                x = cmd.ExecuteNonQuery();
            }
               conn.Close();

            if (x > 0)
            {
                Label1.Text = "Changes Saved";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                Label1.Text = "Something went wrong";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}