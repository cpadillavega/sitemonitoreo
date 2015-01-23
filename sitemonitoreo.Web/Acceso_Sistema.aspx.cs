using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using sitemonitoreo.Business;
using sitemonitoreo.Entities;

public partial class Acceso_Sistema : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAcceder_Click(object sender, EventArgs e)
    {
        EUsuario oEUsuario = new EUsuario();
        BoAccesoUsuario oBoAccesoUsuario = new BoAccesoUsuario();
        oEUsuario = oBoAccesoUsuario.Validar_Acceso_Usuario(usuarioInput.Value, passwordInput.Value);
        if (oEUsuario == null)
        {
            return;
        }
        else {
           //Pasar Valores
            WebApplication.UsuarioEmail = this.usuarioInput.Value;
            Response.Redirect("Asignar_Muestreador.aspx");
        }
    }
}