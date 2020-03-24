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

    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                    
            if (Session["login"]==null)
            {
                
                Label1.Text = "Niezalogowano";
                zamow.Visible = false;
                Powrot.Text = "Zaloguj";
                GridView1.Columns[0].Visible = false; //by niezalogownay nie widzial funkcji wybierz
                FormView1.Visible = false;
            }
            else
            {
                Label1.Text = "Zalogowano: "+ Session["login"].ToString();
                zamow.Visible = true;
                Powrot.Text = "Wyloguj";
            }   
        }


        protected void Button4_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("~/Order.aspx");

            }
        protected void Button_wyloguj(object sender, EventArgs e)
        {
            Session["login"] = null;

            Response.Redirect("~/Login.aspx");
        }
        
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection con = null;
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ProjektConnectionString2"].ConnectionString); //odwolanie do webconf

            con.Open();

            FormView1.Visible = true;
            DataKey dk = GridView1.SelectedDataKey;
            int id = Convert.ToInt32(GridView1.SelectedDataKey[0]);
            int a = 0;
            Label2.Visible = true;
            //Label2.Text = dk.Value.ToString();
           // string x = Label2.Text;
            int x  = Convert.ToInt32(dk.Value.ToString());

            FormView1.PageIndex = 0;
            FormView1.DataBind();
            while (FormView1.DataKey.Value.ToString() != dk.Value.ToString()
                    && a < FormView1.PageCount)
            {
                if (a + 1 < FormView1.PageCount)
                {
                    FormView1.PageIndex++;
                    FormView1.DataBind();
                }
            }
            
           // string login = Session["login"].ToString();

            SqlCommand zapytanie = new SqlCommand("insert into UzytkownikZam(zamowienie, cena) Select nazwa, cena from Menu where id = @id" , con);
            zapytanie.Parameters.AddWithValue("@id", x);
            zapytanie.ExecuteNonQuery();
            con.Close();
            
        }
    }
    }

