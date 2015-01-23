<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Principal.master" AutoEventWireup="true" CodeFile="Asignar_Muestreador.aspx.cs" Inherits="Asignar_Muestreador" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContenido" Runat="Server">
    <div class="panel panel-default">
<div class="panel-heading">
    <h3 class="panel-title" style="text-align:center;">Asignar Muestreador</h3>
  </div>
  <div class="panel-body">
    
      <table align="center" cellpadding="0" cellspacing="0" style="width: 70%">
          <tr>
              <td>Ronda<input type="text" class="form-control" id="rondaInput" runat="server" style="width:300px;"/></td>
              <td>Locacion<input type="text" class="form-control" id="locacionInput" runat="server" style="width:300px;"/></td>
          </tr>
          <tr>
              <td>Jefe de Proyecto<input type="text" class="form-control" id="jefeproInput" runat="server" style="width:300px;"/></td>
              <td>Fecha de recoleccion<asp:TextBox ID="fecrecInput" CssClass="form-control" runat="server" Width="100px"/><asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="fecrecInput" Format="dd/MM/yyyy"></asp:CalendarExtender></td>
          </tr>
          <tr>
              <td>Muestreador<input type="text" class="form-control" id="muestreadorInput" runat="server" style="width:300px;"/></td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td colspan="2" style="text-align:center;height:100px;">
                  <asp:Button ID="btnGrabar" runat="server" CssClass="btn btn-primary btn-lg" Text="Grabar" OnClick="btnGrabar_Click"  />
              </td>
          </tr>
      </table>
    
  </div>
</div>
</asp:Content>

