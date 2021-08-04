using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class CmnEdit : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        string Query = "";
        string Query2 = "";

        int x;

        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.QueryString["MAS"] == "Admin")
                this.MasterPageFile = "MasterAdmin.Master";
            else if (Request.QueryString["MAS"] == "Student")
                this.MasterPageFile = "MasterStudent.Master";
            else if (Request.QueryString["MAS"] == "Teacher")
                this.MasterPageFile = "MasterTeacher.Master";
            else if (Request.QueryString["MAS"] == "Attendant")
                this.MasterPageFile = "MasterAttendant.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            bEdit.Visible = false;
            bDel.Visible = false;

            Label1.Text = "";

            Action.Text = Request.QueryString["Act"].ToUpper();

            if (Request.QueryString["Act"] == "View")
            {
                FileUpload1.Visible = false;
                CheckBox1.Visible = false;
                OR.Visible = false;
                Name.Enabled = false;
                RadioButtonList1.Enabled = false;
                DOB.Enabled = false;
                Con1.Enabled = false;
                Con2.Enabled = false;
                EMail.Enabled = false;
                Addr.Enabled = false;
                UserName.Enabled = false;
                bUpdate.Visible = false;
                bEdit.Visible = true;
                bDel.Visible = true;
            }
            else if (Request.QueryString["Act"] == "Edit")
                Console.Write("");

            conn.Open();

            if (Request.QueryString["MAS"] != "Admin")
                Query = "select * from " + Request.QueryString["MAS"] + " where " + Request.QueryString["MAS"] + "ID = " + Session["Key"].ToString();
            else
            {
                Query = "select * from " + Request.QueryString["u"] + " where " + Request.QueryString["u"] + "ID = ";
                if (Request.QueryString["typ"] == "ID")
                    Query += Request.QueryString["val"];
                else
                    Query += "(select UserID from Login where UserName = '" + Request.QueryString["val"] + "')";
            }

            cmd = new SqlCommand(Query, conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                DP.ImageUrl = dr["DP"].ToString();
                RadioButtonList1.SelectedValue = dr["Gender"].ToString();
                DOB.Text = dr["DOB"].ToString();
                Con1.Text = dr["Con1"].ToString();
                Con2.Text = dr["Con2"].ToString();
                EMail.Text = dr["EMail"].ToString();
                Addr.Text = dr["Addr"].ToString();

                Query = "select UserName from Login where UserID = ";

                if (Request.QueryString["MAS"] != "Admin")
                {
                    Name.Text = dr[Request.QueryString["MAS"][0] + "Name"].ToString();
                    Query += Session["Key"];
                }
                else
                {
                    Name.Text = dr[Request.QueryString["u"][0] + "Name"].ToString();
                    if(Request.QueryString["typ"] == "UN")
                        UserName.Text = Request.QueryString["val"];
                    else
                        Query += Request.QueryString["val"];
                }
                if (UserName.Text == "")
                {
                    dr.Close();

                    cmd = new SqlCommand(Query, conn);
                    dr = cmd.ExecuteReader();
                    dr.Read();
                    if (dr.HasRows)
                        UserName.Text = dr["UserName"].ToString();
                }
            }

            conn.Close();
        }

        protected void bUpdate_Click(object sender, EventArgs e)
        {
            string us = "";
            string id = "";
            string dp = "Source/img/";
             
            if (Request.QueryString["MAS"] != "Admin")
            {
                us = Request.QueryString["MAS"];
                id = Session["Key"].ToString();
            }
            else
            {
                us = Request.QueryString["u"];

                if (Request.QueryString["typ"] == "ID")
                    id = Request.QueryString["val"];
                else
                {
                    Query = "select UserID from Login where UserName = '" + Request.QueryString["val"] + "'";
                    conn.Open();
                    cmd = new SqlCommand(Query, conn);
                    dr = cmd.ExecuteReader();
                    dr.Read();
                    if(dr.HasRows)
                        id = dr["UserID"].ToString();
                    dr.Close();
                    conn.Close();
                }
            }

            if (CheckBox1.Checked)
            {
                dp += "Icon/profile.png";
                x = 5;
            }
            else
            {
                if (FileUpload1.HasFile)
                {
                    string fileex = System.IO.Path.GetExtension(FileUpload1.FileName);

                    if (fileex.ToLower() != ".jpg" && fileex.ToLower() != ".jpeg" && fileex.ToLower() != ".jfif")
                    {
                        Label1.Text = "Wrong File Format";
                        Label1.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        int filesize = FileUpload1.PostedFile.ContentLength;
                        if (filesize >= 5242880)  //5MB
                        {
                            Label1.Text = "File Size Exceed limit of 2MB. (your file size is: " + (filesize / (1024 * 1000)) + "MB (approx))";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            dp = dp + us + "s/" + id + fileex;
                            FileUpload1.SaveAs(Server.MapPath("~/" + dp));
                            x = 5;
                        }
                    }
                }
                else
                {
                    Label1.Text = "ERROR in Loading File";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
            }

            if (x != 5)
                dp = DP.ImageUrl;
            
            Query = "update " + us + " set " +
                        us[0] + "Name = ' " + Name.Text + " ', " +
                        "Gender = '" + RadioButtonList1.SelectedValue + "', " +
                        "Con1 = '" + Con1.Text + "', " +
                        "Con2 = '" + Con2.Text + "', " +
                        "Email = '" + EMail.Text + "', " +
                        "Addr = '" + Addr.Text + "', " +
                        //"DOB = '" + DOB.Text + "', " +
                        "DP = '" + dp + "' " +
                    "where " + us + "ID = " + id;
            Query2 = "update Login set UserName = '" + UserName.Text + "' where UserID = " + id;

            conn.Open();
            cmd = new SqlCommand(Query, conn);
            x = cmd.ExecuteNonQuery();
            cmd = new SqlCommand(Query2, conn);
            x += cmd.ExecuteNonQuery();
            if (x == 2)
            {
                Label1.Text = "Changes Saved Successfully";
                Label1.ForeColor = System.Drawing.Color.LightGreen;
                if (Request.QueryString["MAS"] != "Admin")
                    Response.Redirect("" + Request.QueryString["MAS"] + "index.aspx?ID=" + Session["Key"].ToString());
                else
                    Response.Redirect("CmnEdit.aspx?MAS=Admin&Act=View&typ=ID&val=" + id + "&u=" + us);
            }
            else
            {
                Label1.Text = "Update Fail";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            conn.Close();
        }

        protected void bEdit_Click(object sender, EventArgs e)
        {
            FileUpload1.Visible = true;
            CheckBox1.Visible = true;
            OR.Visible = true;
            Name.Enabled = true;
            RadioButtonList1.Enabled = true;
            DOB.Enabled = true;
            Con1.Enabled = true;
            Con2.Enabled = true;
            EMail.Enabled = true;
            Addr.Enabled = true;
            UserName.Enabled = true;
            bUpdate.Visible = true;
            bEdit.Visible = false;
            bDel.Visible = false;
        }

        protected void bDel_Click(object sender, EventArgs e)
        {
            Query = "delete " + Request.QueryString["u"] + " where " + Request.QueryString["u"] + "ID = ";
            Query2 = "delete Login where UserID = ";

            if (Request.QueryString["typ"] == "ID")
            {
                Query += Request.QueryString["val"];
                Query2 += Request.QueryString["val"];
            }
            else
            {
                Query += "(select UserID from Login where UserName = '" + Request.QueryString["val"] + "')";
                Query2 += "(select UserID from Login where UserName = '" + Request.QueryString["val"] + "')";
            }
            conn.Open();
            cmd = new SqlCommand(Query, conn);
            x = cmd.ExecuteNonQuery();
            cmd = new SqlCommand(Query2, conn);
            x += cmd.ExecuteNonQuery();

            if (x == 2)
                Response.Redirect("CmnSearch.aspx?UT=" + Request.QueryString["u"] + "&AC=View");

            conn.Close();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
        }
    }
}