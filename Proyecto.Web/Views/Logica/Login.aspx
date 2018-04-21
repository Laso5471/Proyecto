<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto.Web.Views.Logica.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"  >
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login LOVE YOUR BODY</title>
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
    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-header">Inicio de sesion</div>
            <div class="card-body">
                <form id="form1" runat="server" class="form-control-range">
                    <div class="form-group">
                        <asp:Label ID="lblusuario" runat="server" Text="Ingrese usuario"></asp:Label>
                        <asp:TextBox ID="Textusuario" runat="server" CssClass="form-control-file" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblContraseña" runat="server" Text="Ingrese contraseña"></asp:Label>
                        <asp:TextBox ID="TextContraseña" runat="server" CssClass="form-control-file"  TextMode="Password" ></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <label class="form-check-label"/>
                                <asp:Checkbox ID ="CheckRecordar" runat="server" text="Recordar usuario" />
                        </div>
                    </div>
                    <asp:Button ID="btnIniciarSesion" runat="server" CssClass="btn btn-primary btn-block" Text="Iniciar sesion" OnClick="btnIniciarSesion_Click" />
                </form>
                <div class="text-center">
                    <a class="d-block small mt-3" href="../Registrar/Registrar.aspx">Registrarse</a>
                    <a class="d-block small" href="../Recuperar Contraseña/RecuperarContraseña.aspx">¿Olvidaste tu contraseña?</a>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
