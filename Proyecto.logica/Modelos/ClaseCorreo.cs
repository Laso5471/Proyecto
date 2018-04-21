using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proyecto.logica.Modelos
{
    public class ClaseCorreo
    {
        public string stServidor { get;set; }
        public string stUsuario { get; set; }
        public string stContraseña { get; set; }
        public bool blConexionSegura { get; set; }
        public bool blAutenticacion { get; set; }
        public string stFrom { get; set; }
        public string stTO { get; set; }
        public string stAsunto { get; set; }
        public string stMensaje { get; set; }
        public int inTipo { get; set; }
        public int inPrioridad { get; set; }
        public string stPuerto { get; set; }
        public string stImagen { get; set; }
        public string stIDImagen { get; set; }

    }
}
