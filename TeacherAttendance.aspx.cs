using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class TeacherAttendance : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        int x;

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select StudentID, SName from Student where SClass = '" + DropDownList1.SelectedValue + "' and " +
                                    "Batch = '" + RadioButtonList1.SelectedValue + "' and " +
                                    "Sub like '%" + DropDownList3.SelectedValue.ToUpper() + "%'", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();

                Button1.Visible = false;
                Button2.Visible = true;

                DropDownList1.Enabled = false;
                DropDownList2.Enabled = false;
                DropDownList3.Enabled = false;
                RadioButtonList1.Enabled = false;
            }
            else
            {
                Label1.Text = "No Student Record Found";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select * from Schedule where Class = '" + DropDownList1.SelectedValue + "' and " + 
                                "Batch = '" + RadioButtonList1.SelectedValue + "' and " +
                                "Sub = '" + DropDownList3.SelectedValue + "' and " +
                                "Slot = '" + DropDownList2.SelectedValue +"'", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if(dr.HasRows)
            {
                conn.Close();
                GridFun();
            }
            else
            {
                Label1.Text = "No Schedule Found";
                Label1.ForeColor = System.Drawing.Color.Red;
                conn.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string Act = "A";
            string Sid;

            RadioButton rb1;
            RadioButton rb2;

            conn.Open();

            foreach (GridViewRow row in GridView1.Rows)
            {
                rb1 = row.Cells[0].FindControl("RadioButton1") as RadioButton;
                rb2 = row.Cells[0].FindControl("RadioButton2") as RadioButton;

                Sid = row.Cells[1].Text;

                if (rb1.Checked)
                    Act = "P";
                else
                    Act = "A";

                cmd = new SqlCommand("insert into Attendance values (GETDATE(), '" + DropDownList2.SelectedValue + "', '" + Session["Key"].ToString() + "', " +
                                    "'" + DropDownList1.SelectedValue + "', " +
                                    "'" + RadioButtonList1.SelectedValue + "', " +
                                    "'" + DropDownList3.SelectedValue + "', " +
                                    "'" + Sid + "', " +
                                    "'" + Act + "')", conn);

                x = cmd.ExecuteNonQuery();
            }

            conn.Close();

            if (x > 0)
            {
                Label1.Text = "Changes Saved";
                Label1.ForeColor = System.Drawing.Color.Green;

                GridView1.Visible = false;
                Button2.Visible = false;
            }
            else
            {
                Label1.Text = "Something went wrong";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}