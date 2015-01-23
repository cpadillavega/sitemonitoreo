<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_Principal.master" AutoEventWireup="true" CodeFile="Inventario_Manantiales.aspx.cs" Inherits="Inventario_Manantiales" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphContenido" Runat="Server">
<div class="panel panel-default">
<div class="panel-heading">
    <h3 class="panel-title" style="text-align:center;">Inventario de Manantiales y Muestreo Hidroquimico</h3>
  </div>
  <div class="panel-body">
       <table align="center" style="width:70%;">
          <tr>
              <td>Fecha<asp:TextBox ID="fechaInput" CssClass="form-control" runat="server" Width="100px"/><asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="fechaInput" Format="dd/MM/yyyy"></asp:CalendarExtender></td>
              <td>Muestreado por<input type="text" class="form-control" id="muestreadorInput" runat="server" style="width:250px;"/></td>
              <td>Codigo<input type="text" class="form-control" id="codigoInput" runat="server" style="width:200px;"/></td>
          </tr>
       </table>
      <br />
       <table align="center" style="border: thin solid #F5F5F5; width:70%;">
          <tr>
              <td style="text-align: center; background-color: #F5F5F5">Caudal</td>
              <td style="text-align: center; background-color: #F5F5F5">Conductividad</td>
              <td style="text-align: center; background-color: #F5F5F5">Oxigeno</td>
              <td style="text-align: center; background-color: #F5F5F5">pH</td>
              <td style="text-align: center; background-color: #F5F5F5">Solidos</td>
              <td style="text-align: center; background-color: #F5F5F5">Temperatura</td>
          </tr>
          <tr>
              <td style="text-align: center">0.00</td>
              <td style="text-align: center">167.00</td>
              <td style="text-align: center">3.40</td>
              <td style="text-align: center">6.84</td>
              <td style="text-align: center">241.00</td>
              <td style="text-align: center">21.37</td>
          </tr>
       </table>
       <br />
       <table align="center" style="width:70%;">
          <tr>
              <td>
                  Descripcion<textarea id="descripcionInput" class="form-control" cols="20" rows="3"></textarea>
              </td>              
          </tr>
       </table>
      <br />
      <table align="center" style="width:70%;">
          <tr>
              <td>Sistema de coordenadas<input type="text" class="form-control" id="Text1" runat="server" style="width:300px;"/></td>
              <td>Tipo<input type="text" class="form-control" id="Text2" runat="server" style="width:300px;"/></td>              
          </tr>
          <tr>
              <td>UTM Este<input type="text" class="form-control" id="Text3" runat="server" style="width:300px;"/></td>
              <td>Genesis de manantial<input type="text" class="form-control" id="Text4" runat="server" style="width:300px;"/></td>              
          </tr>
          <tr>
              <td>UTM Oeste<input type="text" class="form-control" id="Text5" runat="server" style="width:300px;"/></td>
              <td>Uso de agua<input type="text" class="form-control" id="Text6" runat="server" style="width:300px;"/></td>              
          </tr>
          <tr>
              <td>Cota<input type="text" class="form-control" id="Text7" runat="server" style="width:300px;"/></td>
              <td>&nbsp;</td>              
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>              
          </tr>
      </table>
  </div>
</div>
</asp:Content>

