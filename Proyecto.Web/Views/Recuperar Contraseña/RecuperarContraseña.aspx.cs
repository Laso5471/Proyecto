using System;
using System.Configuration;
using System.Data;

namespace Proyecto.Web.Views.Recuperar_Contraseña
{
    public partial class RecuperarContraseña : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                string stMensaje = string.Empty;
                if (string.IsNullOrEmpty(txtCorreo.Text)) stMensaje += "Ingrese correo,";

                if (!string.IsNullOrEmpty(stMensaje)) throw new Exception(stMensaje.TrimEnd(','));

                Controladores.RecuperarContraseñaControllers obRecuperarContraseñaControllers = new Controladores.RecuperarContraseñaControllers();
                logica.Modelos.ClaseInformacionPersonal obclUsuario = new logica.Modelos.ClaseInformacionPersonal
                {
                    CORREO_REG = txtCorreo.Text
                };

                DataSet dsConsulta = obRecuperarContraseñaControllers.getConsultaContraseñaControllers(obclUsuario);

                if (dsConsulta.Tables[0].Rows.Count > 0)
                {
                    string[] stLogin = dsConsulta.Tables[0].Rows[0]["CORREO_REG"].ToString().Split('@');

                    String stCuerpoHTML = "<!DOCTYPE html>";
                    stCuerpoHTML += "<html lang='es'>";
                    stCuerpoHTML += "<head>";
                    stCuerpoHTML += "<meta charset='uft -8'>";
                    stCuerpoHTML += "<title>Recuperacion de contraseña</title>";
                    stCuerpoHTML += "</head>";
                    stCuerpoHTML += "<body style='backround - color: black '>";
                    stCuerpoHTML += "<table style='max - width: 600px; padding: 10px; margin: 0 auto; borde - collapse: collapse; '>";
                    stCuerpoHTML += "<tr>";
                    stCuerpoHTML += "<td style='padding: 0' >";
                    stCuerpoHTML += "<img style='padding: 0; display: block' src='cid:imagefondo' width='100%' height='10%'>";
                    stCuerpoHTML += "</td>";
                    stCuerpoHTML += "</tr>";
                    stCuerpoHTML += "<tr>";
                    stCuerpoHTML += "<td style='background - color: #ecf0f1'>";
                    stCuerpoHTML += "<div style='color: #34495e; margin: 4% 10% 2%; text-align: justify;font-family: sans-serif'>";
                    stCuerpoHTML += "<h2 style='color: #e67e22; margin: 0 0 7px'>Hola " + stLogin[0] + "</h2>";
                    stCuerpoHTML += "<p style='margin: 2px; font - size: 15px'>";
                    stCuerpoHTML += "Hemos recibido una solicitud para restablecer la contraseña de su cuenta asociada con";
                    stCuerpoHTML += "esta dirección de correo electrónico. Si no ha realizado esta solicitud, puede ignorar este";
                    stCuerpoHTML += "correo electrónico y le garantizamos que su cuenta es completamente segura.";
                    stCuerpoHTML += "<br/>";
                    stCuerpoHTML += "<br/>";
                    stCuerpoHTML += "Su contraseña es: " + dsConsulta.Tables[0].Rows[0]["CONTRASEÑA_REG"].ToString();
                    stCuerpoHTML += "</p>";
                    stCuerpoHTML += "<p style='color: #b3b3b3; font-size: 12px; text-align: center;margin: 30px 0 0'>Copyright © LOVE YOUR BODY 2018</p>";
                    stCuerpoHTML += "</div>";
                    stCuerpoHTML += "</td>";
                    stCuerpoHTML += "</tr>";
                    stCuerpoHTML += "</table>";
                    stCuerpoHTML += "</body>";
                    stCuerpoHTML += "</html>";

                    logica.Modelos.ClaseCorreo obClaseCorreo = new logica.Modelos.ClaseCorreo()
                    {
                        stServidor = ConfigurationManager.AppSettings["stServidor"].ToString(),
                        stUsuario = ConfigurationManager.AppSettings["stUsuario"].ToString(),
                        stContraseña = ConfigurationManager.AppSettings["stContraseña"].ToString(),
                        stPuerto = ConfigurationManager.AppSettings["stPuerto"].ToString(),

                        blAutenticacion = true,
                        blConexionSegura = true,
                        inPrioridad = 0,
                        inTipo = 1,
                        stAsunto = "Recuperacion de contraseña",
                        stFrom = ConfigurationManager.AppSettings["stUsuario"].ToString(),
                        stTO = txtCorreo.Text,
                        stImagen = Server.MapPath("~") + @"\Recursos\image\ImageFondo.JPEG",
                        stIDImagen= "imagefondo",
                        stMensaje = stCuerpoHTML,
                        
                    };

                    obRecuperarContraseñaControllers.setCorreoControllers(obClaseCorreo);
                    ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal('Enhorabuena !', 'Se envio correo de recuperacion a la cuenta digitada !', 'succes') </script>");

                }
                else
                    throw new Exception("No se encontro ningun usuario con el correo ingresado");
            }
            catch(Exception ex){
                ClientScript.RegisterStartupScript(this.GetType(), "mensaje", "<script> swal('Error al enviar el correo !', '" + ex.Message + "!', 'error') </script>");
            }
        }
    }
}