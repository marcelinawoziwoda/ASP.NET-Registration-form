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

    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_menu(object sender, EventArgs e)
        {
            Response.Redirect("~/Menu.aspx");
        }


        protected void Button1_Click(object sender, EventArgs e)
        {


            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjektConnectionString2"].ConnectionString); //odwolanie do webconf

            con.Open();

            SqlCommand zap = new SqlCommand("Select haslo from Rejestracja where login like @login", con);
            SqlCommand cmd = new SqlCommand("Select count (login) from Rejestracja where login=@login and haslo=@haslo", con);
            cmd.Parameters.AddWithValue("@login", login1.Text);
            cmd.Parameters.AddWithValue("@haslo", password1.Text);
            zap.Parameters.AddWithValue("@login", login1.Text);


            string admin = (string)zap.ExecuteScalar();
            
            int ile = (int)cmd.ExecuteScalar();
            if (ile == 1)
            {
                Session["login"] = login1.Text;
                if (login1.Text.Equals("Admin") || login1.Text.Equals("admin"))
                {
                    Response.Redirect("~/Admin.aspx");
                }
                else
                {
                    Response.Redirect("~/Menu.aspx");
                }
            }

            else
            {
            Label1.Visible = true;
            Label1.Text = "Złe hasło lub brak konta!!!";
            }


                con.Close();
            }


        }
    }
