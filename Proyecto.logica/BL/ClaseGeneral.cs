using System;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;

namespace Proyecto.logica.BL
{
    public class ClaseGeneral
    {
        public void setCorreo(Modelos.ClaseCorreo obclsCorreo)
        {
            try
            {
                MailMessage Mail = new MailMessage();

                Mail.From = new MailAddress(obclsCorreo.stFrom);
                Mail.To.Add(obclsCorreo.stTO);
                Mail.Subject = obclsCorreo.stAsunto;
                Mail.Body = obclsCorreo.stMensaje;

                if (obclsCorreo.inTipo == 0) Mail.IsBodyHtml = false;
                else if (obclsCorreo.inTipo == 1) Mail.IsBodyHtml = true;

                if (obclsCorreo.inPrioridad == 2) Mail.Priority = MailPriority.High;
                else if (obclsCorreo.inPrioridad == 1) Mail.Priority = MailPriority.Low;
                else if (obclsCorreo.inPrioridad == 0) Mail.Priority = MailPriority.Normal;

                AlternateView htmlView = AlternateView.CreateAlternateViewFromString(obclsCorreo.stMensaje,
                    Encoding.UTF8,
                    MediaTypeNames.Text.Html);

                //INCLUIR UNA IMAGEN
                LinkedResource img = new LinkedResource(obclsCorreo.stImagen, MediaTypeNames.Image.Jpeg);
                img.ContentId = obclsCorreo.stIDImagen;
                htmlView.LinkedResources.Add(img);



                System.Net.Mail.SmtpClient smtp = new SmtpClient();
                smtp.Host = obclsCorreo.stServidor;

                if (obclsCorreo.blAutenticacion) smtp.Credentials = new System.Net.NetworkCredential(obclsCorreo.stUsuario, obclsCorreo.stContraseña);
                if (obclsCorreo.stPuerto.Length > 0) smtp.Port = Convert.ToInt32(obclsCorreo.stPuerto);

                smtp.EnableSsl = obclsCorreo.blConexionSegura;
                smtp.Send(Mail);

  
            }
            catch (Exception e)
            {
                throw e;

            }
        }
    }
}
