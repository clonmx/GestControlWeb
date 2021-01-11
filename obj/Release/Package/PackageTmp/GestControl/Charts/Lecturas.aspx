<%@ Page Title="Graficos de Consumo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lecturas.aspx.cs" Inherits="GestControlWeb.GestControl.Charts.Lecturas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-switch.css" rel="stylesheet" />
    <script src="Scripts/bootstrap-switch.js"></script>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript">
        function MostrarOcultarGraficos(grafico) {
            var estilo = grafico.style.display;
            if (estilo == "block") {
                grafico.style.display = "none";
            }
            else {
                grafico.style.display = "block";
            }
            if(grafico.id == "ifAnual")
            {
                document.getElementById("ifMensual").style.display = "none";
                document.getElementById("ifDiaria").style.display = "none";
            }
            if (grafico.id == "ifMensual") {
                document.getElementById("ifAnual").style.display = "none";
                document.getElementById("ifDiaria").style.display = "none";
            }
            if (grafico.id == "ifDiaria") {
                document.getElementById("ifAnual").style.display = "none";
                document.getElementById("ifMensual").style.display = "none";
            }
        }
    </script>
    <div style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <section id="more-products" class="container_12 clearfix" style="height: 650px;">
            <h1>Graficos de Consumo</h1>

            <div class="list-group">
                <a onclick="MostrarOcultarGraficos(ifAnual);" class="list-group-item">
                    <h4>Información ultimo año</h4>
                </a>
                <iframe id="ifAnual" src="LecturaAnual.aspx" style="display: none; width: 100%; height: 400px;"></iframe>

                <a onclick="MostrarOcultarGraficos(ifMensual);" class="list-group-item">
                    <h4>Información ultimo mes</h4>
                </a>
                <iframe id="ifMensual" src="LecturaMensual.aspx" style="display: none; width: 100%; height: 400px;"></iframe>

                <a onclick="MostrarOcultarGraficos(ifDiaria);" class="list-group-item">
                    <h4>Información dia actual</h4>
                </a>
                <iframe id="ifDiaria" src="LecturaDiaria.aspx" style="display: none; width: 100%; height: 400px;"></iframe>

            </div>
        </section>
        <span class="clearfix"></span>
        <section id="more-blurb" class="container_12 clearfix">

            <a href="../DatosUsuario.aspx" style="font-size: x-large">Volver
            </a>
        </section>

    </div>
</asp:Content>
