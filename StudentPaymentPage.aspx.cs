using System;
using System.Data.SqlClient;
using System.Configuration;

namespace AkaarInstitute
{
    public partial class StudentPaymentPage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["SQLConn"]);
        SqlCommand cmd;
        SqlDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select * from SFee where StudentID = " + Session["Key"].ToString(), conn);

            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {
                NOI.Text = dr["NOI"].ToString();
                PayableLab.Text = dr["SubFee"].ToString();

                if (dr["FStatus"].ToString() == "Complete")
                {
                    Label2.Text = "Installment Complete :)";
                    Label2.ForeColor = System.Drawing.Color.Green;

                    Wizard1.StartNextButtonText = "";
                    Wizard1.StartNextButtonType = System.Web.UI.WebControls.ButtonType.Link;

                    OfferCode.ReadOnly = true;
                    bApply.Enabled = false;
                }
            }

            dr.Close();
            conn.Close();

            RadioButtonList1.SelectedIndex = 0;
        }

        protected void bApply_Click(object sender, EventArgs e)
        {
            conn.Open();

            cmd = new SqlCommand("select * from Offer where PromoCode = '" + OfferCode.Text + "' and GETDATE() between SDate and EDate", conn);

            dr = cmd.ExecuteReader();
            dr.Read();

            if (dr.HasRows)
            {
                Label1.Text = "Promo Successfully Applied";
                Label1.ForeColor = System.Drawing.Color.Green;

                int Dis = Convert.ToInt32(dr["Discount"].ToString());
                int Fee = Convert.ToInt32(PayableLab.Text);

                Fee = Fee - ((Fee * Dis) / 100);

                PayableLab.Text = Fee.ToString();
            }
            else
            {
                Label1.Text = "Promo code does not exist";
                Label1.ForeColor = System.Drawing.Color.Red;
            }

            conn.Close();
        }

        protected void Wizard1_FinishButtonClick(object sender, System.Web.UI.WebControls.WizardNavigationEventArgs e)
        {
            conn.Open();
            cmd = new SqlCommand("update SFee set NOI = '" + (Convert.ToInt32(NOI.Text) - 1) + "' where StudentID = " + Session["Key"].ToString(), conn);
            cmd.ExecuteNonQuery();
            if ((Convert.ToInt32(NOI.Text) - 1) == 0)
            {
                cmd = new SqlCommand("update SFee set FStatus = 'Complete' where StudentID = " + Session["Key"].ToString(), conn);
                cmd.ExecuteNonQuery();
            }

            cmd = new SqlCommand("insert into Payment(StudentID, PayDate, PaymentType, OfferApplied, PaidAmount) values (" +
	                            "'" + Session["Key"].ToString() + "'," +
                                "GETDATE()," +
	                            "'" + RadioButtonList1.SelectedValue + "'," +
	                            "'" + OfferCode.Text + "'," +
	                            "'" + PayableLab.Text + "')", conn);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("select PaymentID from Payment where StudentID = " + Session["Key"].ToString() + " order by PaymentID desc", conn);
            dr = cmd.ExecuteReader();
            dr.Read();
            if (dr.HasRows)
            {
                Wizard1.ActiveStepIndex = 0;

                Label2.Text = "Fee Paid Successfully. Your Payment ID is : " + dr["PaymentID"].ToString();
                Label2.ForeColor = System.Drawing.Color.Green;

                Wizard1.StartNextButtonText = "";
                Wizard1.StartNextButtonType = System.Web.UI.WebControls.ButtonType.Link;

                OfferCode.ReadOnly = true;
                bApply.Enabled = false;
            }
            conn.Close();
        }
    }
}