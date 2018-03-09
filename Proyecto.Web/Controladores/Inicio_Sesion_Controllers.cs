using System;

namespace Proyecto.Web.Controladores
{
    public class Inicio_Sesion_Controllers
    {
        public bool Get_Validar_Usuaurio(logica.Modelos.Inico_sesion inico_Sesion)
        {
            try
            {
                logica.BL.ClaseIniciarSesion claseIniciarSesion = new logica.BL.ClaseIniciarSesion();
                return claseIniciarSesion.Validar_Usuario(inico_Sesion);
            }
            catch(Exception ex)
            {
                //comentario
                throw ex;
            }
        }
    }
}