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
                    <asp:ScriptManager runat="server"></asp:ScriptManager>

                    <div class="form-group">
                        <asp:Label ID="lblNombres" runat="server" Text="Nombres"></asp:Label>
                        <asp:TextBox ID="TextNombres" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextNombres" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWENombres" runat="server"
                            TargetControlID="TextNombres"
                            WatermarkText="Ingrese sus nombres" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblApellidos" runat="server" Text="Apellidos"></asp:Label>
                        <asp:TextBox ID="TextApellidos" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvApellidos" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextApellidos" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEApellidos" runat="server"
                            TargetControlID="TextApellidos"
                            WatermarkText="Ingrese sus apellidos" />

                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblusuario" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="TextUsuario" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextUsuario" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEUsuario" runat="server"
                            TargetControlID="TextUsuario"
                            WatermarkText="Ingrese un nombre de usuario" />

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblfechaNacimiento" runat="server" Text="Ingrese fecha de nacimiento"></asp:Label>
                        <asp:TextBox ID="TextFechaNacimiento" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextFechaNacimiento" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:CalendarExtender ID="FechaNa" runat="server" TargetControlID="TextFechaNacimiento" />

                    </div>
                    <div class="form-group">
                        <asp:Label ID="lbllistasexo" runat="server" Text="Sexo"></asp:Label>
                        <asp:TextBox ID="TextListaSexo" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextListaSexo" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWESexo" runat="server"
                            TargetControlID="TextListaSexo"
                            WatermarkText="Ingrese su sexo Masculino o Femenino" />
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblCorreo" runat="server" Text="Correo"></asp:Label>
                        <asp:TextBox ID="TextCorreo" runat="server" TextMode="Email" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextCorreo" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWECorreo" runat="server"
                            TargetControlID="TextCorreo"
                            WatermarkText="Ingrese su correo electronico que sea Gmail preferencial mente" />
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblConfirmeCorreo" runat="server" Text="Confirme correo"></asp:Label>
                        <asp:TextBox ID="TextConfirmeCorreo" runat="server" TextMode="Email" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvConfirmeCorreo" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextConfirmeCorreo" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvConfirmarCorreo" runat="server" ErrorMessage="Correo no coincide" ControlToValidate="TextConfirmeCorreo" ControlToCompare="TextCorreo" ForeColor="Red"></asp:CompareValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEConfirmeCorreo" runat="server"
                            TargetControlID="TextConfirmeCorreo"
                            WatermarkText="Ingrese nuevamente su correo electronico" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblpeso" runat="server" Text="Kilogramos"></asp:Label>
                        <asp:TextBox ID="Textpeso" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvPeso" runat="server" ErrorMessage="Campo requerido" ControlToValidate="Textpeso" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEPeso" runat="server"
                            TargetControlID="Textpeso"
                            WatermarkText="Ingrese su peso en kilogramos" />
                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblestatura" runat="server" Text="Estatura"></asp:Label>
                        <asp:TextBox ID="Textestatura" runat="server" CssClass="form-control-file"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEstatura" runat="server" ErrorMessage="Campo requerido" ControlToValidate="Textestatura" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                        <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEEstatura" runat="server"
                            TargetControlID="Textestatura"
                            WatermarkText="Ingrese su estatura en centimentros" />
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <asp:Label ID="lblContraseña1" runat="server" Text="Contraseña"></asp:Label>
                                <asp:TextBox ID="TextContraseña1" runat="server" CssClass="form-control-file" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvContraseña1" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextContraseña1" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEContraseña" runat="server"
                                    TargetControlID="TextContraseña1"
                                    WatermarkText="Ingrese su contraseña" />

                            </div>
                            <div class="col-md-6">
                                <asp:Label ID="lblContraseña2" runat="server" Text="Confirmar contrasena"></asp:Label>
                                <asp:TextBox ID="TextContraseña2" runat="server" CssClass="form-control-file" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvContraseña2" runat="server" ErrorMessage="Campo requerido" ControlToValidate="TextContraseña2" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="cvConfirmaContraseña" runat="server" ErrorMessage=" Contraseña no coincide" ControlToValidate="TextContraseña2" ControlToCompare="TextContraseña1" ForeColor="Red"></asp:CompareValidator>
                                <ajaxToolkit:TextBoxWatermarkExtender ID="TBWEConfirmeContraseña" runat="server"
                                    TargetControlID="TextContraseña2"
                                    WatermarkText="Ingrese nuevamente su contraseña" />

                            </div>

                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <asp:Label runat="server" ID="lblImagen" Text="Subir imagen"></asp:Label>
                                <asp:FileUpload runat="server" ID="fuImagen" CssClass="form-control"></asp:FileUpload>
                                <asp:RequiredFieldValidator ID="rfvImagen" runat="server" ErrorMessage="Campo requerido" ControlToValidate="fuImagen" ForeColor="Red" ValidationGroup="ValidarCuenta"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>



                    <div class="text-center">
                        <asp:Button ID="btnRegistrase" runat="server" CssClass="btn btn-primary btn-block" Text="Registrarse" OnClick="btnRegistrar_Click" ValidationGroup="ValidarCuenta" />
                        <a class="d-block small" href="../Logica/Login.aspx">Iniciar sesion</a>
                        <a class="d-block small" href="../Recuperar Contraseña/RecuperarContraseña.aspx">¿Olvidaste tu contraseña?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

</body>

</html>
