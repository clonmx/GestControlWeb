<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GestControlWeb.Account.Login" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div id="hfwrap" style="font:normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <div id="hfwrap2">
            <div id="hfwrap3">
                <article class="clearfix">
                <section id="more-products" class="container_12 clearfix">
                    <div id="blurb" class="grid_7">
                        <h4>Ingrese datos de acceso</h4>
                        <hr />
                        <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                            <p class="text-danger">
                                <asp:Literal runat="server" ID="FailureText" />
                            </p>
                        </asp:PlaceHolder>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="User" CssClass="col-md-2 control-label">Usuario</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="User" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="User"
                                    CssClass="text-danger" ErrorMessage="Campo requerido." />
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                            <div class="col-md-10">
                                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="Ingrese Password." />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <div class="checkbox">
                                    <asp:CheckBox runat="server" ID="RememberMe" />
                                    <asp:Label runat="server" AssociatedControlID="RememberMe">¿Recordar cuenta?</asp:Label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <asp:Button runat="server" OnClick="LogIn" Text="Acceder" CssClass="btn btn-default" />
                            </div>
                        </div>
                    </div>
                    <p>
                        <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                        --%>
                    </p>
                </section></article>
            </div>
        </div>
    </div>
</asp:Content>
