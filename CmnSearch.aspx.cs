using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminDelete : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        string Query1 = "", Query2 = "";
        int x;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["MAS"] == "Teacher")
                this.MasterPageFile = "MasterTeacher.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RadioButtonList1.SelectedIndex = 0;
                UsrName.Visible = false;
            }

            User.Text = Request.QueryString["UT"];

            if (Request.QueryString["UT"] == "ASSIGNMENT" || Request.QueryString["UT"] == "OFFER")
                RadioButtonList1.Visible = false;

            Act.Text = Request.QueryString["AC"].ToUpper();
            ActBut.Text = Request.QueryString["AC"];

            ActBut.Visible = false;
        }

        protected void ActBut_Click(object sender, EventArgs e)
        {
            if (ActBut.Text == "Drop")
            {
                if (RadioButtonList1.SelectedIndex == 0)
                {
                    Query1 = "delete " + Request.QueryString["UT"] + " where " + Request.QueryString["UT"] + "ID = " + InBox.Text;
                    Query2 = "delete Login where UserID = " + InBox.Text;
                }
                if (RadioButtonList1.SelectedIndex == 1)
                {
                    Query1 = "delete " + Request.QueryString["UT"] + " where " + Request.QueryString["UT"] + "ID = " + "(select UserID from Login where UserName = '" + InBox.Text + "')";
                    Query2 = "delete Login where UserName = '" + InBox.Text + "'";
                }
                conn.Open();
                cmd = new SqlCommand(Query2, conn);
                x = cmd.ExecuteNonQuery();
                cmd = new SqlCommand(Query1, conn);
                x = cmd.ExecuteNonQuery();
                conn.Close();
                if (x == 1)
                {
                    UpdateLab.Text = "Successfully Droped";
                    UpdateLab.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    UpdateLab.Text = "Drop Fail";
                    UpdateLab.ForeColor = System.Drawing.Color.Red;
                }
            }
            else
            {
                string act = "";
                string typ = "";

                if (ActBut.Text == "View")
                    act = "View";
                else if (ActBut.Text == "Edit")
                    act = "Edit";

                if (RadioButtonList1.SelectedIndex == 0)
                    typ = "ID";
                else if (RadioButtonList1.SelectedIndex == 1)
                    typ = "UN";

                Response.Redirect("CmnEdit.aspx?MAS=Admin&Act=" + act + "&typ=" + typ + "&val=" + InBox.Text + "&u=" + User.Text);
            }
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
            {
                UnqID.Visible = true;
                UsrName.Visible = false;
            }
            if (RadioButtonList1.SelectedIndex == 1)
            {
                UnqID.Visible = false;
                UsrName.Visible = true;
            }
        }

        protected void bReset_Click(object sender, EventArgs e)
        {
            RadioButtonList1.SelectedIndex = 0;
            UsrName.Visible = false;
            UpdateLab.Text = "";
            InBox.Text = "";
        }

        protected void InBox_TextChanged(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedIndex == 0)
                Query1 = "select * from " + Request.QueryString["UT"] + " where " + Request.QueryString["UT"] + "ID = " + InBox.Text;
            else if (RadioButtonList1.SelectedIndex == 1)
                Query1 = "select * from " + Request.QueryString["UT"] + " where " + Request.QueryString["UT"] + "ID = " + "(select UserID from Login where UserName = '" + InBox.Text + "')";

            conn.Open();
            cmd = new SqlCommand(Query1, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                ActBut.Visible = true;
                UpdateLab.Text = "Record Found";
                UpdateLab.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                UpdateLab.Text = "Record Not Found";
                UpdateLab.ForeColor = System.Drawing.Color.Red;
            }
            dr.Close();
            conn.Close();
        }
    }
}