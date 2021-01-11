<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewSwitcher.ascx.cs" Inherits="GestControlWeb.ViewSwitcher" %>
<div id="viewSwitcher">
    Vista <%: CurrentView %>  | <a href="<%: SwitchUrl %>" data-ajax="false">Cambiar a <%: AlternateView %></a>
</div>