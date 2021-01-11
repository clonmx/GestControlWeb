<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AvisosUsuarios.aspx.cs" Inherits="GestControlWeb.GestControl.Admin.AvisosUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .fila {
            margin-left: 20px;
        }
    </style>
    <div id="mainContainer" class="container" style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <div class="shadowBox">
            <div class="page-container">
                <div class="container">
                    <h4>Avisos de Usuarios
                    </h4>
                    <div id="dvGrid" style="margin-left: -100px;">
                        <asp:GridView ID="grvAvisosUsuarios" runat="server" Width="800" AllowPaging="true" AutoGenerateColumns="False" OnPageIndexChanging="grvAvisosUsuarios_PageIndexChanging"
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" PageSize="25">
                            <Columns>
                                <asp:BoundField DataField="UsuarioId" HeaderText="Usuario" ReadOnly="True" SortExpression="UserId" />
                                <asp:BoundField DataField="Titulo" HeaderText="Titulo Mensaje" SortExpression="Titulo" />
                                <asp:BoundField DataField="Mensaje" HeaderText="Mensaje" ReadOnly="True" SortExpression="Mensaje" />
                                <asp:BoundField DataField="EntidadMensaje" HeaderText="Destinatario" SortExpression="EntidadMensaje" />
                                <asp:BoundField DataField="FechaEnvio" HeaderText="Fecha Registro" SortExpression="FechaEnvio" />
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                            <RowStyle ForeColor="#000066" CssClass="fila" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <span class="clearfix"></span>
            <br />
            <br />
            <section id="more-blurb" class="container_12 clearfix">
                <div class="product grid_4">
                    <a href="Administracion.aspx" style="font-size: x-large">Volver
                    </a>
                    <br />
                    <br />
                </div>
            </section>
        </div>
    </div>
</asp:Content>
