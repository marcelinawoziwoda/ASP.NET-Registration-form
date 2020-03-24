using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp_Registration_Form
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            DataKey dk = GridView1.SelectedDataKey;
            int a = 0;
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
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

            DataKey dk = GridView2.SelectedDataKey;
            int a = 0;
            FormView2.PageIndex = 0;
            FormView2.DataBind();
            while (FormView2.DataKey.Value.ToString() != dk.Value.ToString()
                    && a < FormView2.PageCount)
            {
                if (a + 1 < FormView2.PageCount)
                {
                    FormView2.PageIndex++;
                    FormView2.DataBind();
                }
            }
        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataKey dk = GridView3.SelectedDataKey;
            int a = 0;
            FormView3.PageIndex = 0;
            FormView3.DataBind();
            while (FormView3.DataKey.Value.ToString() != dk.Value.ToString()
                    && a < FormView3.PageCount)
            {
                if (a + 1 < FormView3.PageCount)
                {
                    FormView3.PageIndex++;
                    FormView3.DataBind();
                }
            }
        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataKey dk = GridView4.SelectedDataKey;
            int a = 0;
            FormView4.PageIndex = 0;
            FormView4.DataBind();
            while (FormView4.DataKey.Value.ToString() != dk.Value.ToString()
                    && a < FormView4.PageCount)
            {
                if (a + 1 < FormView4.PageCount)
                {
                    FormView4.PageIndex++;
                    FormView4.DataBind();
                }
            }
        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataKey dk = GridView5.SelectedDataKey;
            int a = 0;
            FormView5.PageIndex = 0;
            FormView5.DataBind();
            while (FormView5.DataKey.Value.ToString() != dk.Value.ToString()
                    && a < FormView5.PageCount)
            {
                if (a + 1 < FormView5.PageCount)
                {
                    FormView5.PageIndex++;
                    FormView5.DataBind();
                }
            }
        }
    }
}