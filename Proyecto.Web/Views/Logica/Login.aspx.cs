using System;
using System.Web;
using static System.Net.WebRequestMethods;

namespace Proyecto.Web.Views.Logica
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Request.Cookies["Email"] != null)
                    Textusuario.Text = Request.Cookies["Email"].Value.ToString();

            }
            //AQUI PUEDO PROGARAMAR LO QUE SE VA A A EJECUTAR A PENAS INGRESE A LA PAGINA 

        }
        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (string.IsNullOrEmpty(Textusuario.Text)) stMensaje += "Ingrese correo,";
                if (string.IsNullOrEmpty(TextContraseña.Text)) stMensaje += "Ingrese contraseña,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));

                logica.Modelos.Inico_sesion obclUsuario = new logica.Modelos.Inico_sesion
                {
                    USUARIO_REG = Textusuario.Text,
                    CONTRASEÑA_REG = TextContraseña.Text
                };


                Controladores.Inicio_Sesion_Controllers obcliniciar_sesion_controllers = new Controladores.Inicio_Sesion_Controllers();
                bool blBandera = obcliniciar_sesion_controllers.Get_Validar_Usuaurio(obclUsuario);

                if (blBandera) 
                {
                    if (CheckRecordar.Checked)
                    {
                        HttpCookie cookieEmail = new HttpCookie("Email", Textusuario.Text);
                        cookieEmail.Expires = DateTime.Now.AddDays(2);
                        Response.Cookies.Add(cookieEmail);
                    }else
                    {
                        HttpCookie cookieEmail = new HttpCookie("Email", Textusuario.Text);
                        cookieEmail.Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Add(cookieEmail);
                    }
                    //definir sesion
                    Session["sesionLogin"] = Textusuario.Text;
                    Session["sesionPasword"] = TextContraseña.Text;

                    //borrar
                    //Session.RemoveAll();
                    //Session.Remove("sesionLogin");//nombre variable a remover

                    
                    Response.Redirect("../index/Index.aspx?Parametro1=" + Textusuario.Text + "&Parametro2=" + TextContraseña.Text);
                }
                
                else throw new Exception("Usuario o Contraseña incorrectos");

               // ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal ('Ingresando!', 'El inicio de sesion fue exitoso!', 'success') </script>");
                

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal('Error al iniciar sesion!', '" + ex.Message + "!', 'error') </script>");
            }


        }
    }
}