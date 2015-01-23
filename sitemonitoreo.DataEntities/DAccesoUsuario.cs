using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using sitemonitoreo.Entities;

namespace sitemonitoreo.DataEntities
{
    public class DAccesoUsuario
    {
        public EUsuario Validar_Acceso_Usuario(string email, string pass)
        {
            try
            {
                string strConnection = ConfigurationManager.ConnectionStrings["monitoreo"].ConnectionString;
                EUsuario oEUsuario = null;
                using (SqlConnection oConnection = new SqlConnection(strConnection))
                {
                    using (SqlCommand oCommand = new SqlCommand("uspValidarLoginUsuario", oConnection))
                    {
                        oCommand.CommandType = CommandType.StoredProcedure;
                        oCommand.Parameters.Add("@Email", SqlDbType.NVarChar, 100).Value = email;
                        oCommand.Parameters.Add("@Pass", SqlDbType.NVarChar, 15).Value = pass;
                        oConnection.Open();
                        using (SqlDataReader odr = oCommand.ExecuteReader(CommandBehavior.CloseConnection | CommandBehavior.SingleRow))
                        {
                            if (odr.HasRows)
                            {
                                while (odr.Read())
                                {
                                    oEUsuario = new EUsuario();
                                    oEUsuario.dni = odr.GetString(odr.GetOrdinal("dni"));
                                    oEUsuario.nombres = odr.GetString(odr.GetOrdinal("nombres"));
                                    oEUsuario.ap_paterno = odr.GetString(odr.GetOrdinal("ap_paterno"));
                                    oEUsuario.ap_materno = odr.GetString(odr.GetOrdinal("ap_materno"));
                                    oEUsuario.sexo = odr.GetString(odr.GetOrdinal("sexo"));
                                    oEUsuario.tipo = odr.GetString(odr.GetOrdinal("tipo"));
                                    oEUsuario.direccion = odr.GetString(odr.GetOrdinal("direccion"));                                   
                                }
                            }
                        }
                    }
                }
                return oEUsuario;
            }
            catch (Exception ex) { throw ex; }
        }   
    }
}
