using System;

namespace Proyecto.Web.Views.Logica
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

                if (blBandera) Response.Redirect("../index/Index.aspx");
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