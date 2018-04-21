using System;

namespace Proyecto.Web.Views.index
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string StringUsuario = null;
            if (!IsPostBack)
            {
                if (Request.QueryString["stUsuario"] != null)
                    StringUsuario = Request.QueryString["stUsuario"].ToString();
            }

            //string stLogin = string.Empty;

            //if (Request.QueryString["Parametro1"] != null)
            //    stLogin = Request.QueryString["Parametro1"].ToString();
            //if (Session["sesionLogin"] != null)//validar
            //    stLogin = Session["sesionLogin"].ToString();//recepcion
            //else
            //    Response.Redirect("../Logica/Login.aspx");
        }

        protected void btnPublicar_Click(object sender, EventArgs e)
        {

        }
    }
}