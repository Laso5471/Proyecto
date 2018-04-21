using System;
using System.Data;
using System.Data.SqlClient;

namespace Proyecto.logica.BL

{
    public class ClaseInformacionPersonal
    {
        SqlConnection _SqlConnection = null;
        SqlCommand _SqlCommand = null;
        SqlDataAdapter _SqlDataAdapter = null;

        string Conexion = string.Empty;

        public ClaseInformacionPersonal()
        {
            ClaseConexion objecto = new ClaseConexion();

            Conexion = objecto.getConexion();

        }

        //Consulta los registro del usuario y los retorna

        public DataSet get_ConsultarUsuario()
        {
            try
            {
                DataSet Consulta = new DataSet();

                _SqlConnection = new SqlConnection(Conexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("ConsultarUsuarios", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;


                //_SqlCommand.Parameters.Add(new SqlParameter("@USUARIO_REG", inico_Sesion.USUARIO_REG));
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
