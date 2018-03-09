using System;

using System.Data;
using System.Data.SqlClient;

namespace Proyecto.logica.BL
{
    public class ClaseIniciarSesion
    {
        SqlConnection _SqlConnection = null;
        SqlCommand _SqlCommand = null;
        SqlDataAdapter _SqlDataAdapter = null;

        string Conexion = string.Empty;

        public ClaseIniciarSesion()
        {
            ClaseConexion objecto = new ClaseConexion();

            Conexion = objecto.getConexion();

        }

        public bool Validar_Usuario(Modelos.Inico_sesion inico_Sesion)
        {
            try
            {
                DataSet Consulta = new DataSet();

                _SqlConnection = new SqlConnection(Conexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("INICIAR_SESION", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;


                _SqlCommand.Parameters.Add(new SqlParameter("@USUARIO_REG", inico_Sesion.USUARIO_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@CONTRASEÑA_REG", inico_Sesion.CONTRASEÑA_REG));

                _SqlCommand.ExecuteNonQuery();

                _SqlDataAdapter = new SqlDataAdapter(_SqlCommand);
                _SqlDataAdapter.Fill(Consulta);

                if (Consulta.Tables[0].Rows.Count > 0) return true;
                else return false;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                _SqlConnection.Close();
            }
        }
    }

}
