<%@ Page Title="Datos Usuario" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DatosUsuario.aspx.cs" Inherits="GestControlWeb.GestControl.DatosUsuario" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <section id="more-products" class="container_12 clearfix">
            <h1>Datos Hogar</h1>
            <div class="product grid_8">
                <figure>
                    <h4>Consumo de Hoy</h4>
                    <iframe src="Charts/LecturaDiaria.aspx" style="width: 100%; height: 650px;"></iframe>
                </figure>
            </div>
            <div class="product grid_4">
                <h4>Notificaciones</h4>
                <div style="height: 650px; overflow: auto;">
                    <asp:Label ID="lblNotificaciones" runat="server"></asp:Label>
                </div>
            </div>
        </section>
        <span class="clearfix"></span>
        <section id="more-blurb" class="container_12 clearfix">
            <div>
                <h4>Accesos</h4>
                <a href="Control.aspx" style="font-size: x-large">Control de Hogar
                </a>
                <br />
                <a href="Charts/Lecturas.aspx" style="font-size: x-large">Graficos de Consumo
                </a>
                <br />
                <br />
            </div>
        </section>
    </div>
</asp:Content>
