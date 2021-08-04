using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminStudentPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        string SubCh = "";
        string SubCh2 = "";
        string Query = "";
        string Usrid = "";
        string Table = "";
        string SubFee = "";
        string U = "";

        int x;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["UT"] != "Student")
            {
                ClassLab.Visible = false;
                Class.Visible = false;

                BatchLab.Visible = false;
                Batch.Visible = false;

                PayDetLab.Visible = false;
                SubFeeLab.Visible = false;
                SubFeeVal.Visible = false;
                PayLab.Visible = false;
                RadioButtonList1.Visible = false;

                Label1.Visible = false;
            }

            if (Request.QueryString["UT"] == "Teacher")
            {
                User.Text = "TEACHER";
                ClassLab.Visible = false;
                Class.Visible = false;
            }
            else if (Request.QueryString["UT"] == "Attendant")
            {
                User.Text = "ATTENDANT";

                SubjectLab.Visible = false;
                Subject.Visible = false;
            }

            if (IsPostBack)
            {
                if (!CheckBox1.Checked)
                {
                    UserName.ReadOnly = false;
                }
            }
            else
            {
                //SubFee.Text = Request.QueryString["F"];
                //Uid.Text = Request.QueryString["Uid"];
                //UserName.Text = Request.QueryString["Uid"];
                CheckBox1.Checked = true;
                UserName.ReadOnly = true;
                RadioButtonList1.SelectedIndex = 0;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, System.Web.UI.WebControls.WizardNavigationEventArgs e)
        {
            conn.Open();

            int NOI = 1;

            if (RadioButtonList1.SelectedIndex == 0)
                NOI = 1;
            else if (RadioButtonList1.SelectedIndex == 1)
                NOI = 2;
            else if (RadioButtonList1.SelectedIndex == 2)
                NOI = 4;
            else if (RadioButtonList1.SelectedIndex == 3)
                NOI = 12;

            if (Request.QueryString["UT"] == "Student")
            {
                cmd = new SqlCommand("insert into SFee (StudentID, SubFee, FMode, NOI) values (" +
                                        "'" + Uid.Text + "'," +
                                        "" + SubFeeVal.Text + "," +
                                        "'" + RadioButtonList1.SelectedValue + "'," +
                                        "'" + NOI + "')", conn);
                x = cmd.ExecuteNonQuery();
            }

            cmd = new SqlCommand("insert into Login values (" +
                                    "'" + Request.QueryString["UT"] + "'," +
                                    "" + Uid.Text + "," +
                                    "'" + UserName.Text.ToUpper() + "'," +
                                    "'" + Password.Text + "')", conn);

            x = cmd.ExecuteNonQuery();

            if (x == 1)
            {
                Response.Redirect("AdminIndex.aspx?ID=" + Session["Key"].ToString());
            }

            conn.Close();
        }

        protected void Wizard1_ActiveStepChanged(object sender, EventArgs e)
        {
            Uid.Text = U;
            UserName.Text = Uid.Text;
            SubFeeVal.Text = SubFee;
        }

        protected void Wizard1_NextButtonClick(object sender, System.Web.UI.WebControls.WizardNavigationEventArgs e)
        {
            conn.Open();

            if (Request.QueryString["UT"] != "Attendant")
            {
                if (Subject.Items[0].Selected)
                {
                    SubCh = SubCh + "'" + Subject.Items[0].Text + "'";
                    SubCh2 = SubCh2 + Subject.Items[0].Text + " ";
                }
                if (Subject.Items[1].Selected)
                {
                    if (SubCh == "")
                    {
                        SubCh = SubCh + "'" + Subject.Items[1].Text + "'";
                        SubCh2 = SubCh2 + Subject.Items[1].Text + " ";
                    }
                    else
                    {
                        SubCh = SubCh + ", '" + Subject.Items[1].Text + "'";
                        SubCh2 = SubCh2 + Subject.Items[1].Text + " ";
                    }
                }
                if (Subject.Items[2].Selected)
                {
                    if (SubCh == "")
                    {
                        SubCh = SubCh + "'" + Subject.Items[2].Text + "'";
                        SubCh2 = SubCh2 + Subject.Items[2].Text + " ";
                    }
                    else
                    {
                        SubCh = SubCh + ", '" + Subject.Items[2].Text + "'";
                        SubCh2 = SubCh2 + Subject.Items[2].Text + " ";
                    }
                }
            }

            if (Request.QueryString["UT"] == "Student")
            {
                Query = "insert into Student (SName, Gender, DOA, SClass, Sub, Batch, Con1, Con2, Email, Addr, DOB) values (" +
                            "'" + Name.Text.ToUpper() + "'," +
                            "'" + Gender.SelectedValue + "'," +
                            "GETDATE()," +
                    //"'" + DateTime.Now.ToShortDateString() + "'," +
                            "'" + Class.SelectedValue + "'," +
                            "'" + SubCh2.ToUpper() + "'," +
                            "'" + Batch.SelectedValue + "'," +
                            "'" + Contact1.Text + "'," +
                            "'" + Contact2.Text + "'," +
                            "'" + Email.Text + "'," +
                            "'" + Address.Text + "'," +
                            "'" + DOB.Text + "')";

                Usrid = "StudentID";
                Table = "Student";
            }
            else if (Request.QueryString["UT"] == "Teacher")
            {
                Query = "insert into Teacher (TName, Gender, DOJ, Sub, Con1, Con2, Email, Addr, DOB) values (" +
                            "'" + Name.Text.ToUpper() + "'," +
                            "'" + Gender.SelectedValue + "'," +
                            "GETDATE()," +
                            "'" + SubCh2.ToUpper() + "'," +
                            "'" + Contact1.Text + "'," +
                            "'" + Contact2.Text + "'," +
                            "'" + Email.Text + "'," +
                            "'" + Address.Text + "'," +
                            "'" + DOB.Text + "')";

                Usrid = "TeacherID";
                Table = "Teacher";
            }
            else if (Request.QueryString["UT"] == "Attendant")
            {
                Query = "insert into Attendant (AName, Gender, DOJ, Con1, Con2, Email, Addr, DOB) values (" +
                            "'" + Name.Text.ToUpper() + "'," +
                            "'" + Gender.SelectedValue + "'," +
                            "GETDATE()," +
                            "'" + Contact1.Text + "'," +
                            "'" + Contact2.Text + "'," +
                            "'" + Email.Text + "'," +
                            "'" + Address.Text + "'," +
                            "'" + DOB.Text + "')";

                Usrid = "AttendantID";
                Table = "Attendant";
            }

            cmd = new SqlCommand(Query, conn);

            x = cmd.ExecuteNonQuery();

            if (Request.QueryString["UT"] != "Attendant")
            {
                cmd = new SqlCommand("select SUM(SubFee) from Fee where SubjectName in (" + SubCh + ")", conn);
                dr = cmd.ExecuteReader();
                dr.Read();
                SubFee = dr[0].ToString();
                dr.Close();
            }
            cmd = new SqlCommand("select max(" + Usrid + ") from " + Table, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
                U = dr[0].ToString();
            conn.Close();
        }
    }
}