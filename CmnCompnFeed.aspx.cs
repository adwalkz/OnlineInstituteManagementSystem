using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class StudentComplains : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        string Query = "";
        string uname = "";

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["MAS"] == "Student")
                this.MasterPageFile = "MasterStudent.Master";
            else if (Request.QueryString["MAS"] == "Teacher")
                this.MasterPageFile = "MasterTeacher.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Act.Text = Request.QueryString["Act"].ToUpper();

            if (Act.Text == "COMPLAIN")
            {
                Text.Text = "Tell us if something wrong.";
                Lab.Text = "What's the issue ? (Mention in detail)";
            }
            else
            {
                Text.Text = "your feedback matters.";
                Lab.Text = "Write your Feed back";
            }

            Query = "select " + Request.QueryString["MAS"][0] + "Name from " + Request.QueryString["MAS"] + " where " + Request.QueryString["MAS"] + "ID = " + Session["Key"].ToString();
            conn.Open();
            cmd = new SqlCommand(Query, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                uname = dr[0].ToString();
            conn.Close();
            User.Text = uname;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["Act"] == "Complain")
                Query = "insert into Complain (UserType, UserID, UserName, Date, Issue) values (" +
                                        "'" + Request.QueryString["MAS"] + "', " +
                                        Session["Key"].ToString() + ", " +
                                        "'" + uname + "', " +
                                        "GETDATE(), " +
                                        "'" + Box.Text + "')";
            else
                Query = "insert into FeedBack values ( GETDATE(), " +
                                    "'" + Request.QueryString["MAS"] + "', " +
                                    Session["Key"] + ", " +
                                    "'" + uname + "', " +
                                    "'" + Box.Text + "')";

            conn.Open();
            cmd = new SqlCommand(Query, conn);
            int x = cmd.ExecuteNonQuery();
            conn.Close();
            if (x > 0)
            {
                Box.Text = "";
                Msg.ForeColor = System.Drawing.Color.Green;
                if (Request.QueryString["Act"] == "Complain")
                {
                    Query = "select top (1) TicketID from Complain order by TicketID desc";
                    conn.Open();
                    cmd = new SqlCommand(Query, conn);
                    dr = cmd.ExecuteReader();
                    dr.Read();
                    Msg.Text = "Complain Lock Successfully. Your Ticket ID is: " + dr[0].ToString();
                    conn.Close();
                }
                else
                    Msg.Text = "Feedback Saved Successfully";
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Box.Text = "";
        }
    }
}