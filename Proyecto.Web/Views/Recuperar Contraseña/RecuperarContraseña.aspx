<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperarContraseña.aspx.cs" Inherits="Proyecto.Web.Views.Recuperar_Contraseña.RecuperarContraseña" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Recuperar contraseña LOVE YOUR BODY</title>
    <!-- Bootstrap core CSS-->
    <link href="../../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom fonts for this template-->
    <link href="../../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles for this template-->
    <link href="../../css/sb-admin.css" rel="stylesheet" />
    <!-- Bootstrap core JavaScript-->
    <script src="../../vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="../../vendor/jquery-easing/jquery.easing.min.js"></script>

    <link href="../../css/sweetalert.css" rel="stylesheet" />
    <script src="../../Js/sweetalert.min.js" type="text/javascript" ></script>
</head>
<body class="bg-dark" style="background-image: url('https://k41.kn3.net/8F92905E4.jpg')">
    <form id="form1" runat="server">
        <div class="container">
            <div class="card card-login mx-auto mt-5">
                <div class="card-header">Recuperar Contraseña</div>
                <div class="card-body">
                    
                    <div class="text-center mt-4 mb-5">
                        <h4>¿Olvido su contraseña?</h4>
                        <p>Ingrese su direccion de correo electronico y le enviaremos las intrucciones para la recuperacion de su contraseña.</p>
                    </div>
                    <div class="form-group">
                        <asp:TextBox runat="server" ID="txtCorreo" CssClass="form-control btn-block"></asp:TextBox>
                    </div>
                    <asp:Button runat="server" ID="btnAceptar" CssClass="btn btn-primary btn-block" Text="Recuperar Contraseña" OnClick="btnAceptar_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="../Logica/Login.aspx">Iniciar sesion</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
