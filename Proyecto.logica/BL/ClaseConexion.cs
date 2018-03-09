using System.Configuration;


namespace Proyecto.logica.BL
{
    class ClaseConexion


        //CONEXION A BASE DE DATOS RETORNA CADENA DE CONEXION
    {
        public string getConexion()
        {
            return ConfigurationManager.ConnectionStrings["CNX"].ToString();
        }

    }
}
