using System;
using System.IO;

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
                Controladores.RegistrarseControllers obRegistrarseController = new Controladores.RegistrarseControllers();

                //VALIDAMOS LA SELECCION DE UNA IMAGEN
                if (fuImagen.HasFile)
                {
                    if (!Path.GetExtension(fuImagen.FileName).Equals(".jpg"))
                        throw new Exception("Solo se admiten formatos .JPG");

                    string stRuta = Server.MapPath(@"~\Temporales\") + fuImagen.FileName;//RUTA TEMPORAL
                    fuImagen.PostedFile.SaveAs(stRuta);//GUARDANDO EL ARCHIVO DENTRO DEL PROYECTO

                    string stRutaDestino = Server.MapPath(@"~\Imagenes\") + TextUsuario.Text + Path.GetExtension(fuImagen.FileName);//RUTA DESTINO

                    if (File.Exists(stRutaDestino))
                    {
                        File.SetAttributes(stRutaDestino, FileAttributes.Normal);
                        File.Delete(stRutaDestino);
                    }

                    File.Copy(stRuta, stRutaDestino);
                    File.SetAttributes(stRuta, FileAttributes.Normal);
                    File.Delete(stRuta);

                    logica.Modelos.ClaseInformacionPersonal obclsUsuarios = new logica.Modelos.ClaseInformacionPersonal
                    {
                        USUARIO_REG = TextUsuario.Text,
                        CONTRASEÑA_REG = TextContraseña1.Text,
                        NOMBRES_REG = TextNombres.Text,
                        APELLIDOS_REG = TextApellidos.Text,
                        FECHA_DE_NACIMIENTO = TextFechaNacimiento.Text,
                        SEXO_ID = TextListaSexo.Text,
                        CORREO_REG = TextCorreo.Text,
                        CONFIRMACION_CORREO = TextConfirmeCorreo.Text,
                        PESO_REG = Textpeso.Text,
                        TALLA_REG = Textestatura.Text,
                        CONFIRMAR_CONTRASEÑA_REG = TextContraseña2.Text,
                        IMAGEN_REG = stRutaDestino
                    };

                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal('Mensaje!', '" + obRegistrarseController.setRegistrarController(obclsUsuarios, 1) + "!', 'success') </script>");
                }
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal('Error!', '" + ex.Message + "!', 'error') </script>");
            }


        }
    }
}