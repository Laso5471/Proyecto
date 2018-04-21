using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Proyecto.Web.Views.index
{
    public partial class Informacion_Personal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Controladores.Consulta_Usuario_Controllers obUsuariosControllers = new Controladores.Consulta_Usuario_Controllers();
                DataSet ConsultaInformacionPersonal = obUsuariosControllers.Get_ConsultaUsuariosControllers();

                
            }

        }
    }
}