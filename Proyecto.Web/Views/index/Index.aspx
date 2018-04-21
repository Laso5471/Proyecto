<%@ Page Title="" Language="C#" MasterPageFile="~/Recursos/Template/Template.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto.Web.Views.index.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contenedor" runat="server">
    <div class="card mx-auto mt-5">
        <div class="card-header">Publicaciones</div>
        <div class="card-body">

            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-12">
                        <h1>
                            <b>Encuentra las publicaciones de las personas que estan conectadas con Love Your Body!</b>
                            <asp:Label runat="server" ID="lblopcion" Visible="false"></asp:Label>

                        </h1>
                    </div>
                </div>
                <p>
                    <strong>Bienvenido este espacio lo hemos creado para ti. </strong>

                </p>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-12">
                            <div class="input-group">
                                <textarea class="form-control" rows="3"></textarea>

                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-row">
                                <div class="col-md-12">

                                    <p class="text-muted">Seleccione que tipo de archivo desea subir. </p>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optradio">
                                            Imagen
                                        </label>
                                    </div>
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="optradio">
                                            Video
                                        </label>
                                    </div>
                                </div>
                                <br />
                                <asp:Label runat="server" ID="lblImagen"></asp:Label>
                                <asp:FileUpload runat="server" ID="fuImagen" CssClass="form-control"></asp:FileUpload>

                            </div>
                        </div>

                    </div>
                </div>
                <div class="text-center">
                    <asp:Button ID="btnPublicar" runat="server" CssClass="btn btn-primary btn-block" Text="Publicar" OnClick="btnPublicar_Click" />

                </div>
                <br />
                <h2><strong>El es Luis Segura y hoy nos quiere compartir su historia</strong></h2>
                <br />
                <p>Hola a todos primero que todo muchas gracias a los creadores de este proyecto por hacerme ser parte de este y poder saber que mi historia va ser leída por muchas personas que eran como el yo del pasado.</p>
                <br />
                <div class="embed-responsive embed-responsive-4by3">
                    <iframe class="embed-responsive-item" src="../../Recursos/image/30421531_1678561612223295_1252871999_n.png"></iframe>
                </div>
                <br />
                <p>Mi nombre es Luis Segura actualmente tengo 19 años y peso 94 kg mido 1.91 cm; toda la vida desde pequeño fui un niño macizo y lo que más me resaltaban eran los cachetes por eso era reconocido donde llegaba por mis grandes cachetes.</p>
                <br />
                <p>A los 15 años llegue a pesar 155 kg si era un hombre muy grande y me sentía rechazado por muchas personas por sus comentarios que hacían cuando llegaba algún lugar y llegue a tener pensamientos de quitarme la vida, aunque mi madre siempre me motiva a seguir adelante que no les prestara atención a esas personas ignorantes y eso me manto siempre al límite del cañón.</p>
                <br />
                <p>El 2 de diciembre del 2014 me llego una ropa de unas tías que ellas me mandaron a regalar y yo llegue a mi cuarto y no me quedaba nada estaba demasiado de gordo, ese día llore todo el día “Nadie lloraba más que yo” eso se me coloco ruciad la cara de tanto llorar y dije no, ya quiero hacer dieta y le dije a mi madre entre llantos que ya no quería ser más gordo quería bajar de peso que me ayudara.</p>
                <br />
                <p>Y ella me dijo bueno mijo desde hoy empezamos y ella como ya venía en un proceso entre nos dos hacíamos la perfecta combinación ella me motiva a mí, y yo la motivaba a ella y de esto se trata esto de motivarse entre sí.</p>
                <br />
                <p>Y empecé hacer ejercicios en las mañanas con ayuda de un tío nos levantábamos a las 5 am y ese señor me sacaba “la leche” terminaba “mamado” y yo súper motivado porque yo no era el único gordito que quería cambiar su apariencia física eran muchas personas realizando ejercicios y eso me llenaba mucho de motivación a seguir en mi proceso.</p>
                <br />
                <p>Llego el primer mes bajé 7 kg y yo súper feliz le dije a mi madre “El día que yo me gradué del colegio tengo que estar en talla 38 de pantalón” “en esa época era talla 48”. Yo quería seguir haciendo mucho más deporte mi tío ya no me podía acompañar asique me tocaba irme solo y yo ahí dándole duro me venían recuerdo de todo el matoneo que me hacían algunas personas y eso me llena de una fortaleza a seguir.</p>
                <br />
                <p>Bueno y paso 1 año estaba a punto de graduarme estábamos dejando todo arreglado en el colegio las materias al día todo mundo feliz y yo el doble de feliz porque del Luis de hace un año solo quedaban recuerdo ahora era una persona más segura de sí mismo, más del feliz con el metabolismo al 100. El 5 de diciembre llamé contento a mi tía Sandra y le dije:</p>
                <br />
                <dl class="dl-horizontal">
                    <dt>Yo:</dt>
                    <dd>Tía necesito que mande a la ropa de los grados.</dd>
                    <dt>Ella:</dt>
                    <dd>No mijo a usted no le consigo ropa eso es una pérdida de tiempo.</dd>
                    <dt>Yo:</dt>
                    <dd>Tía mire su Facebook le acabo de mandar una foto mía y usted me dice si consigue e o no.</dd>
                    <dt>Ella:</dt>
                    <dd>Cae de sus pieces en llanto no lo podía creer que el Luis de hace un año que pesaba 155 kg estuviera pesando 90 kg y en talla 38.</dd>
                    <dt>Yo:</dt>
                    <dd>tía tranquila me va conseguir la ropa ¿sí o no? "Me dio mucha risa porque ella no lo podía asimilar creía que era un montaje"</dd>
                </dl>
                <br />
                <p>Y llego el día tan esperado se graduaba el primogénito de mi mamá; esa señora estaba feliz no le cabiay la sonrisa en la boca, y ella me dijo entre lágrimas “Mijo usted es un pelado fuerte que todo lo que se lo promete lo cumple, pasar por un proceso tan duro que es bajar de peso y cambiar su vida en tan solo 1 año de esa manera ” y yo solo le dije “Gracias madre sin ti esto no podría ser posible porque tú eres la que siempre me apoyo a que nunca me rindiera que siguiera adelante tu jugaste un papel demasiado importante para poder realizar este cambio en mi vida”.</p>
                <br />
                <p>Solo quiero decirles a todas las personas que acaban de leer una parte de mi historia que nunca se den por vencido por más difícil que este el camino eso se significa que van por el lugar indicado.</p>
                <br />
                <p><strong>Yo soy Luis Segura creador de la idea Love Your Body.</strong></p>

                <div class="embed-responsive embed-responsive-4by3">

                    <iframe class="embed-responsive-item" src="../../Recursos/image/26907533_1582615035151287_2406810582404342863_n.jpg"></iframe>
                </div>
            </div>
        </div>
    </div>


</asp:Content>
