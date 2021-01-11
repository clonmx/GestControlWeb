<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Notificaciones_Usuarios.aspx.cs" Inherits="GestControlWeb.Notificaciones_Usuarios" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style type="text/css">
        .cbx{
            width: 250px !important;
        }
    </style>
    <link href="../Content/bootstrap.cosmo.min.css" rel="stylesheet" />
    <link href="../Content/StyleSheet.css" rel="stylesheet" />
    <div id="mainContainer" class="container" style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <div class="shadowBox">
            <div class="page-container">
                <div class="container">
                    <h4>Selección de Usuarios para envío de Notificaciones
                    </h4>
                    <div class="row" style="height: 550px;">
                        <div class="col-lg-12 ">
                            <div class="table-responsive">
                                <asp:GridView ID="grdCustomer" runat="server" Width="100%" CssClass="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="UserId" EmptyDataText="There are no data records to display.">

                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:CheckBox ID="chkCtrl" runat="server" />
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" Visible="false" />
                                        <asp:BoundField DataField="Clientes" HeaderText="Nombre" SortExpression="Clientes" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                                        <asp:BoundField DataField="Comuna" HeaderText="Comuna" SortExpression="Comuna" HeaderStyle-CssClass="visible-lg" ItemStyle-CssClass="visible-lg" />
                                    </Columns>
                                </asp:GridView>
                            </div>

                        </div>

                        <div class="jumbotron">
                            <label for="comment">Titulo</label>
                            <asp:TextBox ID="txtTitulo" runat="server" Style="width: 100%;"></asp:TextBox>
                            <br />
                            <label for="comment">Mensaje</label>
                            <asp:TextBox ID="txtMensaje" runat="server" TextMode="MultiLine" Style="width: 100%; height: 100px;"></asp:TextBox>
                            <br />
                            <label for="comment">URL</label>
                            <asp:TextBox ID="txtURL" runat="server" TextMode="Url" Style="width: 100%;"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="btnEnviarNotificacion" class="btn btn-primary btn-md" runat="server" Text="Enviar Notificación" OnClick="Button1_Click" />
                            <br />
                            <asp:CheckBox ID="cbHoraPunta" runat="server" CssClass="cbx" OnCheckedChanged="cbHoraPunta_CheckedChanged" AutoPostBack="true" />
                            <label class="cbx">Notificación de Horario Punta</label>
                            <br />
                             <asp:CheckBox ID="cbCorteProgramado" runat="server" CssClass="cbx" OnCheckedChanged="cbCorteProgramado_CheckedChanged" AutoPostBack="true" />
                            <label class="cbx">Notificación de Corte Programado</label>
                            <br />
                            <asp:Label ID="lblError" runat="server" ForeColor="DarkRed"></asp:Label>
                        </div>
                        <span class="clearfix"></span>
                        <br />
                        <section id="more-blurb" class="container_12 clearfix">

                            <a href="Administracion.aspx" style="font-size: x-large">Volver
                            </a>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
