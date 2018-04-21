using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto.Web.Controladores
{
    public class Consulta_Usuario_Controllers
    {
        public DataSet Get_ConsultaUsuariosControllers()
        {
            try
            {
                logica.BL.ClaseInformacionPersonal claseInformacionPersonal = new logica.BL.ClaseInformacionPersonal();
                return claseInformacionPersonal.get_ConsultarUsuario();
            }
            catch (Exception ex)
            {
                //comentario
                throw ex;
            }
        }
    }
}