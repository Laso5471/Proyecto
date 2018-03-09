using System;


namespace Proyecto.Web.Views.Registrar
{
    public partial class Registrar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (string.IsNullOrEmpty(TextNombres.Text)) stMensaje += "Ingrese nombres,";
                if (string.IsNullOrEmpty(TextApellidos.Text)) stMensaje += "Ingrese apellidos,";
                if (string.IsNullOrEmpty(TextUsuario.Text)) stMensaje += "Ingrese usuario,";
                if (string.IsNullOrEmpty(TextFechaNacimiento.Text)) stMensaje += "Ingrese fecha de nacimiento ,";
                if (string.IsNullOrEmpty(TextContraseña1.Text)) stMensaje += "Ingrese contraseñas,";
                if (string.IsNullOrEmpty(TextCorreo.Text)) stMensaje += "Ingrese correos,";
                if (string.IsNullOrEmpty(Textpeso.Text)) stMensaje += "Ingrese peso,";
                if (string.IsNullOrEmpty(Textestatura.Text)) stMensaje += "Ingrese estatura,";
                if (string.IsNullOrEmpty(TextListaSexo.Text)) stMensaje += "Ingrese sexo,";


                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));

                ClientScript.RegisterStartupScript(this.GetType(), "Mensaje", "<script> swal ('Ingresando!', 'El registro fue exitoso!', 'success') </script>");

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal('Error al registrarse!', '" + ex.Message + "!', 'error') </script>");
            }
        }

        protected void listaSexo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}