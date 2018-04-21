using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Proyecto.Web.Controladores
{
    public class RegistrarseControllers
    {

        public string setRegistrarController(logica.Modelos.ClaseInformacionPersonal obclsUsuarios, int inOpcion)
        {
            try
            {
                logica.BL.ClaseRegistrar obclsUsuario = new logica.BL.ClaseRegistrar();
                return obclsUsuario.set_CrearUsuario(obclsUsuarios, inOpcion);
            }
            catch (Exception ex) { throw ex; }
        }

    }
}