<%@ Page Title="" Language="C#" MasterPageFile="~/Recursos/Template/Template.Master" AutoEventWireup="true" CodeBehind="Informacion_Personal.aspx.cs" Inherits="Proyecto.Web.Views.index.Informacion_Personal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenedor" runat="server">
    <script src="../../Js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />

    <div class="container">
        <div class="card mx-auto mt-5">
            <div class="card-header">Informacion Personal</div>
            <div class="card-body">

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <h1>
                                <b>Toda su informacion personal al instante</b>
                                <asp:Label runat="server" ID="lblopcion" Visible="false"></asp:Label>

                            </h1>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="lblnombreusuario" Text="Nombres"></asp:Label>
                                <asp:TextBox runat="server" ID="txtnombreusuario" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <asp:Label runat="server" ID="lblapellidousuario" Text="Apellidos"></asp:Label>
                                <asp:TextBox runat="server" ID="txtaepllidousuario" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblfechanac" Text="Fecha de nacimento"></asp:Label>
                            <asp:TextBox runat="server" ID="txtfechanac" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblcorreo" Text="Correo electronico"></asp:Label>
                            <asp:TextBox runat="server" ID="txtcorreo" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblpeso" Text="Peso en Kilogramos"></asp:Label>
                            <asp:TextBox runat="server" ID="txtpeso" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label runat="server" ID="lblestatura" Text="Estatura en centimetros"></asp:Label>
                            <asp:TextBox runat="server" ID="txtestatura" CssClass="form-control"></asp:TextBox>
                        </div>
                    </div>

                </div>

                <asp:Button runat="server" ID="BTNACTUALIZAR" Text="ACTUALIZAR INFORMACION" align="center" CssClass="btn btn-primary"  href="#" />

            </div>

        </div>
    </div>


</asp:Content>
