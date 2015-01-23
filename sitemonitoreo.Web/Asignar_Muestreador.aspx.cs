using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WSAsignarMuestreador;

public partial class Asignar_Muestreador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //CheckForIllegalCrossThreadCalls = false;
    }
    protected void btnGrabar_Click(object sender, EventArgs e)
    {        
        asignarmuestreadorrequest oWSrequest = new asignarmuestreadorrequest();    
        oWSrequest.locacionCodigo = this.locacionInput.Value;
        oWSrequest.locacionDescripcion = "";
        oWSrequest.emailDestino = WebApplication.UsuarioEmail;
        oWSrequest.nombreMuestreador = this.muestreadorInput.Value;
        oWSrequest.fechaMuestreo = this.fecrecInput.Text;

        try
        {
            AsignarMuestreadorService oWS = new AsignarMuestreadorService(); 
            asignarmuestreadorresponse oWSresponse = new asignarmuestreadorresponse();
            oWSresponse = oWS.asignarmuestreador(oWSrequest);

            Page.ClientScript.RegisterStartupScript(Page.GetType(), "Mensaje", "<script language='javascript'>alert('codigoRespuesta: "+ oWSresponse.codigoRespuesta + " descripcionRespuesta: " + oWSresponse.descripcionRespuesta + "');</script>");
            
        }
        catch (Exception ex) {
            throw new Exception(ex.Message);
        }  
    }
}