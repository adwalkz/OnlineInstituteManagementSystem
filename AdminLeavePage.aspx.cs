using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminLeavePage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        int x;

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select UserType, UserID, UserName, Convert(varchar, FromDate, 105)From_Date, Convert(varchar, ToDate, 105)To_Date, Reason from Leave where LStatus = 'Pending'", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Button1.Visible = false;
                Label1.Text = "No Pending Leave Found";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                GridFun();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Act;
            string Uid;

            RadioButton rb1;
            RadioButton rb2;

            conn.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                rb1 = row.Cells[0].FindControl("RadioButton1") as RadioButton;
                rb2 = row.Cells[0].FindControl("RadioButton2") as RadioButton;

                Act = "Pending";
                Uid = row.Cells[2].Text;

                if (rb1.Checked)
                    Act = "Approve";
                if (rb2.Checked)
                    Act = "Deny";

                cmd = new SqlCommand("update Leave set LStatus = '" + Act + "' where UserID = " + Uid, conn);
            
                x = cmd.ExecuteNonQuery();
            }
            
            conn.Close();

            if (x > 0)
            {
                GridFun();
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