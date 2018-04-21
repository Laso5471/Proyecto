using System;

namespace Proyecto.Web.Recursos.Template
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Session["SessionUsuario"] != null)
                {

                    lblusuario.Text = Session["SessionUsuario"].ToString();
                }
                else
                    Response.Redirect("../../Views/Logica/Login.aspx");
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            //Session.Remove("SessionUsuario");//ELIMINAMOS UNA VARIABLE DE SESSION
            Session.RemoveAll();
            Response.Redirect("../../Views/Logica/Login.aspx");
        }
    }
}