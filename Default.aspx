<%@ Page Title="GestControl" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GestControlWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div id="hfwrap">
        <div id="hfwrap2">
            <div id="hfwrap3">

                <section id="featured" class="container_12 clearfix" style="background-color: lightgrey; height: 90%;">
                    <div id="descrp" class="grid_6 suffix_6">
                        <h1>GestControl WEB</h1>
                        <div class="product grid_6">
                            <p>ENERGY-GESTCONTROL está concebida como una plataforma modular que  en principio sea capaz de gestionar el sistema energético de las viviendas, y  entregar información en línea al cliente final.</p>
                            <p class="button"><a href="#">Mas información</a></p>

                        </div>
                        <span></span>
                    </div>
                    <!--#descrp-->
                </section>
            </div>
            <!--#hfwrap3-->
        </div>
        <!--hfwrap2-->
    </div>
    <!--hfwrap-->

    <section id="more-products" class="container_12 clearfix">
        <h1>Nuestro Sistema</h1>
        <div class="product grid_4">
            <figure>
                <div style="height: 250px;">
                    <img src="Content/images/graph.png" width="300" alt="phone number one" />
                </div>
                <figcaption>
                    <h3>Gestión WEB de su Hogar</h3>
                    <p>Acceso desde cualquier dispositivo a traves del sitio de GestControl, donde podra activar/desactivar componentes de su hogar.  Además podrá ver datos estadisticos e información de su cuenta. <a href="#">Más...</a></p>
                </figcaption>
            </figure>
        </div>

        <div class="product grid_4">
            <figure>
                <div style="height: 250px;">
                    <img src="Content/images/mov1.png" width="140" alt="Login" />
                    <img src="Content/images/mov2.png" width="140" alt="Control de Dispositivos" />
                </div>
                <figcaption>
                    <h3>Gestión desde su Celular</h3>
                    <p>Desde tu dispositivo móvil accede a la gestión de tu hogar desde cualquier lugar y con respuesta al instante.  Alertas inmediatas, manten el control en todo momento. <a href="#">Más...</a></p>
                </figcaption>
            </figure>
        </div>

        <div class="product grid_4">
            <figure>
                <div style="height: 250px;">
                    <img src="Content/images/mov3.png" width="140" alt="Informaciones" />
                </div>
                <figcaption>
                    <h3>Informaciones</h3>
                    <p>Este y otros productos disponibles para usted.  Nuestra plataforma esta en continuo crecimiento, mejorando cada vez más para sus necesidades y requerimientos. <a href="#">Más...</a></p>
                </figcaption>
            </figure>
        </div>
        <span class="clearfix"></span>
    </section>

    <center>
    <div>
        <a href="Content/App/GestControl_local.apk" style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
            <img src="/Content/img/MetroUI_OS_Android.png" width="50" /><br />
            APK LOCAL</a>
        <br />
        <a href="/Content/App/GestControl_publico.apk" style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
            <img src="Content/img/MetroUI_OS_Android.png" width="50" /><br />
            APK PUBLICO</a>
    </div></center>
</asp:Content>
