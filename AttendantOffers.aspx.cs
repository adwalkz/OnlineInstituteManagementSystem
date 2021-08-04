using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AttendantOffers : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlDataAdapter da;
        DataTable dt = new DataTable();

        void GridFun()
        {
            conn.Open();

            da = new SqlDataAdapter("select OfferName, PromoCode, Convert(varchar, SDate, 105)Start_On, Convert(varchar, EDate, 105)End_On, Discount from Offer where GETDATE() between SDate and EDate order by SDate desc", conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Label1.Text = "No Offer Found";
                Label1.ForeColor = System.Drawing.Color.Green;
            }

            conn.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            GridFun();
        }
    }
}