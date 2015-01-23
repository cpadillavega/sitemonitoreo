<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Acceso_Sistema.aspx.cs" Inherits="Acceso_Sistema" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet"/>
<link href="css/login.css" rel="stylesheet" />
<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>      
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/login.css" rel="stylesheet" />
<title>Acceso al Sistema</title>
</head>
<body>
<form id="form1" runat="server"> 
<br/>
<br/>
<br/>
<div class="wrapper">
    <div class="templateBody">
        <div class="templateContent" style="width: 450px;">
            <div id="login-form">
                <h1 style="font-size: 40px;text-align: center;letter-spacing: 0px;">Acceso al Sistema</h1><br/>
                <table align="center" style="width:70%;">
                    <tr>
                        <td style="height:80px;">
                        <label for="usuarioInput">Usuario<span style="color:red">*</span>:</label>
                        <input type="text" class="form-control" id="usuarioInput" runat="server" placeholder="Ingresa tu usuario"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="height:80px;">
                        <label for="passwordInput">Contraseña<span style="color:red">*</span>:</label>
                        <input type="password" class="form-control" id="passwordInput" runat="server" placeholder="Ingresa tu contraseña"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="height:50px;text-align:right;">
                        <asp:Button ID="btnAcceder" runat="server" CssClass="btn btn-primary btn-lg" Text="Acceder" OnClick="btnAcceder_Click" />
                        </td>
                    </tr>
                </table>

            </div>
        </div>
    </div>
</div>
</form>
<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script> 
</body>
</html>