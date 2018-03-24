using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto.Web.Views.index
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string stLogin = string.Empty;

            if (Request.QueryString["Parametro1"] != null)
                stLogin = Request.QueryString["Parametro1"].ToString();
            if (Session["sesionLogin"] != null)//validar
                stLogin = Request.QueryString["sesionLogin"].ToString();//recepcion
            else
                Response.Redirect("../Login/Login.aspx");
        }
    }
}