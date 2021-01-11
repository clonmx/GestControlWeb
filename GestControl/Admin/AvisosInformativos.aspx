<%@ Page Title="Notificaciones" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AvisosInformativos.aspx.cs" Inherits="GestControlWeb.GestControl.AvisosInformativos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div id="mainContainer" class="container" style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <div class="shadowBox">
            <div class="page-container">
                <div class="container">
                    <h4>Infomativo a Usuarios</h4>
                    <asp:TextBox ID="txbAviso" runat="server" TextMode="MultiLine" Width="800" Height="300"></asp:TextBox>
                    <br />
                    <asp:Button ID="btnEnviarNotificacion" runat="server" Text="Enviar Notificación" OnClick="btnEnviarNotificacion_Click" />
                </div>
            </div>
            <span class="clearfix"></span>
            <br />
            <section id="more-blurb" class="container_12 clearfix" style="height:200px;">

                <a href="Administracion.aspx" style="font-size: x-large">Volver
                </a>
            </section>
        </div>
    </div>
</asp:Content>
