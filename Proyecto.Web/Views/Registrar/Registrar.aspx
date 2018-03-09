<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="Proyecto.Web.Views.Registrar.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>SB Admin - Start Bootstrap Template</title>
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

</head>
<body class="bg-dark" style="background-image: url('https://k41.kn3.net/8F92905E4.jpg')">
    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Registrarse</div>
            <div class="card-body">
                <form id="form1" runat="server" class="form-control-range">
                    <div class="form-group">
                        <asp:Label ID="lblNombres" runat="server" Text="Ingrese nombres"></asp:Label>
                        <asp:TextBox ID="TextNombres" runat="server" CssClass="form-control-file"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblApellidos" runat="server" Text="Ingrese apellidos"></asp:Label>
                        <asp:TextBox ID="TextApellidos" runat="server" CssClass="form-control-file"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblusuario" runat="server" Text="Ingrese usuario"></asp:Label>
                        <asp:TextBox ID="TextUsuario" runat="server" CssClass="form-control-file"></asp:TextBox>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblfechaNacimiento" runat="server" Text="Ingrese fecha de nacimiento"></asp:Label>
                        <asp:TextBox ID="TextFechaNacimiento" runat="server" CssClass="form-control-file">Año/Mes/Día</asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbllistasexo" runat="server" Text="Seleccione sexo"></asp:Label>
                        <asp:TextBox ID="TextListaSexo" runat="server" CssClass="form-control-file">Masculino o Femenino</asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblCorreo" runat="server" Text=" Ingrese correo"></asp:Label>
                        <asp:TextBox ID="TextCorreo" runat="server" CssClass="form-control-file"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblConfirmeCorreo" runat="server" Text="Confirme correo"></asp:Label>
                        <asp:TextBox ID="TextConfirmeCorreo" runat="server" CssClass="form-control-file"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblpeso" runat="server" Text="Ingrese su peso en kilogramos"></asp:Label>
                        <asp:TextBox ID="Textpeso" runat="server" CssClass="form-control-file"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblestatura" runat="server" Text="Ingrese estatura en centimetros"></asp:Label>
                        <asp:TextBox ID="Textestatura" runat="server" CssClass="form-control-file"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <asp:Label ID="lblContraseña1" runat="server" Text="Ingrese Contraseña"></asp:Label>
                                <asp:TextBox ID="TextContraseña1" runat="server" CssClass="form-control-file" TextMode="Password"></asp:TextBox>

                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblContraseña2" runat="server" Text="Confirmar contrasena"></asp:Label>
                                <asp:TextBox ID="TextContraseña2" runat="server" CssClass="form-control-file" TextMode="Password"></asp:TextBox>

                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btnRegistrase" runat="server" CssClass="btn btn-primary btn-block" Text="Registrarse" OnClick="btnRegistrar_Click" />
                </form>

                <div class="text-center">
                    <a class="d-block small mt-3" href="../Logica/Login.aspx">Iniciar sesion</a>
                    <a class="d-block small" href="#">¿Olvidaste tu contraseña?</a>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
