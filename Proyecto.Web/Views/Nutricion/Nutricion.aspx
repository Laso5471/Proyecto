<%@ Page Title="" Language="C#" MasterPageFile="~/Recursos/Template/Template.Master" AutoEventWireup="true" CodeBehind="Nutricion.aspx.cs" Inherits="Proyecto.Web.Views.index.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenedor" runat="server">
    <script src="../../Js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />


    <div class="container">
        <div class="card mx-auto mt-5">
            <div class="card-header">Informacion nutricional</div>
            <div class="card-body">

                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <h1>
                                <b>Encuentra toda la información sobre los alimentos que ingieres diariamente!</b>
                                <asp:Label runat="server" ID="lblopcion" Visible="false"></asp:Label>

                            </h1>
                        </div>
                    </div>
                    <p>
                        <strong>Bienvenido al lugar donde encontraras toda la información que necesitas saber a la hora de ingerir un alimento y no consumir más de lo que necesitas para tu ingesta diaria. </strong>
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
                                <p><strong>Ejemplo del resultado si buscamos Brocoli</strong></p>
                                <br />
                                <dl class="dl-horizontal">
                                    <dt>¿Que nos aporta el brocoli a nuestro organismo?</dt>
                                    <dd>El consumo de brócoli aporta a nuestro organismo gran variedad de vitaminas, como vitamina C, B1, B2, B3 y B6, pero sobre todo aporta una gran cantidad de vitamina A. ... es una buena fuente de provitamina A y vitaminas C. ácido fólico. potasio, calcio, fósforo, magnesio y hierro.</dd>
                                    <dt>Grupo alimenticio</dt>
                                    <dd>Pertenece al grupo de los vegetales.</dd>
                                    <dt>Calorias.</dt>
                                    <dd>El brocoli tiene un promedio de 34 calorias</dd>
                                    <dt>Cantidad.</dt>
                                    <dd>100 gramos de brocoli cocido</dd>
                                    <dt>Carbohidratos.</dt>
                                    <dd>100 gramos de Brócoli contienen el 2% del del total diario necesario: 6,6 gramos de carbohidratos</dd>
                                    <dt>Sodio.</dt>
                                    <dd>100 gramos de Brócoli tienen el 2% de tu total diario requerido: 33 milligramos de Sodio.</dd>
                                    <dt>Grasa Total.</dt>
                                    <dd>100 gramos de Brócoli contienen el 0% del total diario necesario: 0,37 gramos de grasa total.</dd>

                                </dl>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </div>


</asp:Content>
