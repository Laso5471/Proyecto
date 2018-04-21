<%@ Page Title="" Language="C#" MasterPageFile="~/Recursos/Template/Template.Master" AutoEventWireup="true" CodeBehind="Rutinas.aspx.cs" Inherits="Proyecto.Web.Views.index.Rutinas" %>

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
                                <b>Encuentra las mejores rutinas totalmente gratis!</b>
                                <asp:Label runat="server" ID="lblopcion" Visible="false"></asp:Label>

                            </h1>
                        </div>
                    </div>
                    <p>
                        <strong>Bienvenido este espacio lo hemos creado para ti. </strong>
                        <br />
                        <br />

                        en este lugar encontraras rutinas deportivas para trabajar desde tu casa o gimnasio avaladas por profesionales.
                        Esta aplicación es para ti y todos los que estamos detrás de tu pantalla te queremos decir que<strong> nunca es tarde para comenzar</strong> , no
                        te decimos que esto será fácil; pero todos nosotros te apoyamos y te mandaremos las mayores fuerzas para que nunca desistas.
              
                        <br />
                        <br />
                        <strong>Recuerda retroceder nunca, rendirse jamás. </strong>

                    </p>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <div class="input-group">
                                    <input type="text" class="form-control">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">Buscar</button>
                                    </span>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </div>
        </div>
    </div>


</asp:Content>
