using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class TeacherAssignment : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string PATH = "Source/pdf/Assignments/";
                string fileex = System.IO.Path.GetExtension(FileUpload1.FileName);

                string Query = "";
                int filesize, x;
                

                if (fileex.ToLower() != ".pdf")
                    Label1.Text = "Wrong File Format";
                else
                {
                    filesize = FileUpload1.PostedFile.ContentLength;
                    if (filesize > 2097152)  //2MB
                        Label1.Text = "File Size Exceed limit of 2mb. (your file size is: " + filesize + ")";
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/" + PATH + FileUpload1.FileName));
                        Query = "insert into Assignment (UploadDate, Class, Sub, Topic, DownloadLink, TeacherID) values (GETDATE()," +
                                "'" + RadioButtonList1.SelectedValue + "', " +
                                "'" + DropDownList1.SelectedValue +"', " +
                                "'" + Topic.Text + "', " +
                                "'" + PATH + FileUpload1.FileName + "', " +
                                Session["Key"].ToString() + ")";
                        conn.Open();
                        cmd = new SqlCommand(Query, conn);
                        x = cmd.ExecuteNonQuery();
                        if (x == 1)
                        {
                            Label1.Text = "File Uploaded Successfully";
                            Label1.ForeColor = System.Drawing.Color.Green;
                        }
                        else
                        {
                            Label1.Text = "File Uploaded Fail";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }
                        conn.Close();
                    }
                }
            }
        }
    }
}