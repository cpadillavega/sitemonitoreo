using System;
using System.Text;
using System.Collections.Generic;

namespace sitemonitoreo.Entities
{
    public class EUsuario
    {
        public string dni { get; set; }
        public string nombres { get; set; }
        public string ap_paterno { get; set; }
        public string ap_materno { get; set; }
        public string sexo { get; set; }
        public string tipo { get; set; }
        public string direccion { get; set; }
        public string email { get; set; }
        public string pass { get; set; }
        public string fec_creacion { get; set; }
    }
}
