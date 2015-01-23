using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using sitemonitoreo.Entities;
using sitemonitoreo.DataEntities;

namespace sitemonitoreo.Business
{
    public class BoAccesoUsuario
    {
        DAccesoUsuario oDAccesoUsuario = null;

        public EUsuario Validar_Acceso_Usuario(string email, string pass)
        {
            try
            {
                oDAccesoUsuario = new DAccesoUsuario();
                return oDAccesoUsuario.Validar_Acceso_Usuario(email, pass);
            }
            catch (Exception ex) 
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
