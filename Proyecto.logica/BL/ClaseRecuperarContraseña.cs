using System;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto.logica.BL
{
    public class ClaseRecuperarContraseña
    {
        SqlConnection _SqlConnection = null;
        SqlCommand _SqlCommand = null;
        SqlDataAdapter _SqlDataAdapter = null;

        string Conexion = string.Empty;

        public ClaseRecuperarContraseña()
        {
            ClaseConexion objecto = new ClaseConexion();

            Conexion = objecto.getConexion();

        }

        //Consulta contraseña

        public DataSet GetConsultaContraseña(Modelos.ClaseInformacionPersonal informacionPersonal)
        {
            try
            {
                DataSet Consulta = new DataSet();

                _SqlConnection = new SqlConnection(Conexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("CosultarUsuario", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;


                _SqlCommand.Parameters.Add(new SqlParameter("@CORREO_REG", informacionPersonal.CORREO_REG));
                //_SqlCommand.Parameters.Add(new SqlParameter("@CONTRASEÑA_REG", inico_Sesion.CONTRASEÑA_REG));

                _SqlCommand.ExecuteNonQuery();

                _SqlDataAdapter = new SqlDataAdapter(_SqlCommand);
                _SqlDataAdapter.Fill(Consulta);

                return Consulta;
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
