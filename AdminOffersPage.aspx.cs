using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class AdminOffersPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;

        void clrscr()
        {
            OName.Text = "";
            PCode.Text = "";
            Discount.Text = "";
            Strt.Text = "";
            End.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("insert into Offer (OfferName, PromoCode, SDate, EDate, Discount) values (" +
                                    "'" + OName.Text + "'," +
                                    "'" + PCode.Text + "'," +
                                    "'" + Strt.Text + "'," +
                                    "'" + End.Text + "'," +
                                    "'" + Discount.Text + "')", conn);

            int x = cmd.ExecuteNonQuery();

            if (x > 0)
            {
                clrscr();
            }

            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            clrscr();
        }
    }
}