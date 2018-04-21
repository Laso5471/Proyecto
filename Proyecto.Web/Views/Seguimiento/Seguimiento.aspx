<%@ Page Title="" Language="C#" MasterPageFile="~/Recursos/Template/Template.Master" AutoEventWireup="true" CodeBehind="Seguimiento.aspx.cs" Inherits="Proyecto.Web.Views.index.Seguimiento" %>

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
                    <h4 class="text-danger">Estamos mejorando para ti pronto tendras este espacio a tu dispocision</h4>
                    <br />
                    <p>
                        <strong>Bienvenido este espacio lo hemos creado para ti. </strong>
                        <br />
                        <br />

                        Bienvenido al lugar donde podrás realizar un cálculo de tu índice de masa corporal y podrás llevar un control mensual de tu peso y saber en qué semana bajaste más peso, cuanto bajaste por mes y cuál fue la semana que no tuviste ningún cambio de peso.
                        Esta aplicación es para ti y todos los que estamos detrás de tu pantalla te queremos decir que<strong> nunca es tarde para comenzar</strong> , no
                        te decimos que esto será fácil; pero todos nosotros te apoyamos y te mandaremos las mayores fuerzas para que nunca desistas.
              
                        <br />
                        <br />
                        <strong>Recuerda retroceder nunca, rendirse jamás. </strong>

                        <br />
                        <br />
                    </p>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
