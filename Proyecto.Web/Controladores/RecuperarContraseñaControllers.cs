using System;
using System.Data;

namespace Proyecto.Web.Controladores
{
    public class RecuperarContraseñaControllers
    {
        public DataSet getConsultaContraseñaControllers(logica.Modelos.ClaseInformacionPersonal claseInformacionPers)
        {
            try
            {
                logica.BL.ClaseRecuperarContraseña obclRecuperarContraseña = new logica.BL.ClaseRecuperarContraseña();
                return obclRecuperarContraseña.GetConsultaContraseña(claseInformacionPers);
            }
            catch (Exception ex) {
                throw ex;
            }
        }

        public void setCorreoControllers (logica.Modelos.ClaseCorreo obCorreo)
        {
            try
            {
                logica.BL.ClaseGeneral ObclaseGeneral = new logica.BL.ClaseGeneral();
                ObclaseGeneral.setCorreo(obCorreo);
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}