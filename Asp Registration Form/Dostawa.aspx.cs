using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Registration_Form
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjektConnectionString2"].ConnectionString); //odwolanie do webconf
            SqlCommand zap = new SqlCommand("Select count (miejscowosc) from Dostawa where miejscowosc=@miejscowosc", con);
            con.Open();

            if (Session["login"] == null)
            {

                Label1.Text = "Niezalogowano";
                Label1.Visible = false;

                Response.Redirect("~/Login.aspx");

            }
            else
            {
                Powrot.Text = "Wyloguj";
                Label1.Text = "Zalogowano: " + Session["login"].ToString();
                Label1.Visible = true;

            }

            string login = Session["login"].ToString();
            string miejscowosc = Session["miejscowosc"].ToString().ToLower();
            zap.Parameters.AddWithValue("@miejscowosc", miejscowosc);

            int a = (int)zap.ExecuteScalar();
            if (a > 0)
            {
                Image1.Visible = true;
                Napis.Visible = true;
                
                Napis.Text = "Twoje zamówienie zostanie dostarczone..!";
             }
            else
            {
                Image2.Visible = true;
                Napis.Visible = true;
                Napis.Text = "Upsss... mieszkasz za daleko! Dostawa nie może być zrealizowana!";
            }
            con.Close();
        }

        protected void Button_wyloguj(object sender, EventArgs e)
        {
            Session["login"] = null;
            Response.Redirect("~/Login.aspx");
        }

        

    }

}