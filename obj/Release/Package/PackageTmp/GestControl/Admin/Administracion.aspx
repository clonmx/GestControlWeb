<%@ Page Title="Administración y Gestión" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Administracion.aspx.cs" Inherits="GestControlWeb.GestControl.Admin.Administracion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif; height:650px;">
        <section id="more-products" class="container_12 clearfix">
            <h1>Administración</h1>
            <div class="product grid_8">
                <h4>Accesos</h4>
                <a href="Notificaciones_Usuarios.aspx" style="font-size: x-large">Envio de Notificaciones por sector
                </a>
                <br />
                <a href="AvisosInformativos.aspx" style="font-size: x-large">Avisos Informativos a todos los Usuarios
                </a>
                <br />
                <br />
                 <a href="AvisosUsuarios.aspx" style="font-size: x-large">Avisos de Usuarios
                </a>
                <br />
                <br />
            </div>
        </section>
    </div>
</asp:Content>
