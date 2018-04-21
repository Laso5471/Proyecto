using System;
using System.Data;
using System.Data.SqlClient;


namespace Proyecto.logica.BL
{
    public class ClaseRegistrar
    {
        SqlConnection _SqlConnection = null;
        SqlCommand _SqlCommand = null;
        SqlDataAdapter _SqlDataAdapter = null;
        SqlParameter _SqlParameter = null;

        string Conexion = string.Empty;

        public ClaseRegistrar()
        {
            ClaseConexion objecto = new ClaseConexion();

            Conexion = objecto.getConexion();

        }

        public String set_CrearUsuario(Modelos.ClaseInformacionPersonal InformacionPersonal, int InOpcion)
        {
            try
            {
                DataSet Consulta = new DataSet();

                _SqlConnection = new SqlConnection(Conexion);
                _SqlConnection.Open();

                _SqlCommand = new SqlCommand("REGISTRO_USUARIOS", _SqlConnection);
                _SqlCommand.CommandType = CommandType.StoredProcedure;

                //PARAMETROS DE ENTRADA
                _SqlCommand.Parameters.Add(new SqlParameter("@USUARIO_REG", InformacionPersonal.USUARIO_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@CONTRASEÑA_REG", InformacionPersonal.CONTRASEÑA_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@NOMBRES_REG", InformacionPersonal.NOMBRES_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@APELLIDOS_REG", InformacionPersonal.APELLIDOS_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@FECHA_DE_NACIMIENTO", InformacionPersonal.FECHA_DE_NACIMIENTO));
                _SqlCommand.Parameters.Add(new SqlParameter("@SEXO_ID", InformacionPersonal.SEXO_ID));
                _SqlCommand.Parameters.Add(new SqlParameter("@CORREO_REG", InformacionPersonal.CORREO_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@CONFIRMACION_CORREO", InformacionPersonal.CONFIRMACION_CORREO));
                _SqlCommand.Parameters.Add(new SqlParameter("@PESO_REG", InformacionPersonal.PESO_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@TALLA_REG", InformacionPersonal.TALLA_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@CONFIRMAR_CONTRASEÑA_REG", InformacionPersonal.CONFIRMAR_CONTRASEÑA_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@IMAGEN_REG", InformacionPersonal.IMAGEN_REG));
                _SqlCommand.Parameters.Add(new SqlParameter("@nOpcion", InOpcion));

                //PARAMETROS DE SALIDA

                _SqlParameter = new SqlParameter();
                _SqlParameter.ParameterName = "@cMensaje";
                _SqlParameter.Direction = ParameterDirection.Output;
                _SqlParameter.SqlDbType = SqlDbType.VarChar;
                _SqlParameter.Size = 50;

                _SqlCommand.Parameters.Add(_SqlParameter);
                _SqlCommand.ExecuteNonQuery();

                return _SqlParameter.Value.ToString();

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

