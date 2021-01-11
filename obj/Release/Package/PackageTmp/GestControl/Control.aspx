<%@ Page Title="Control" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Control.aspx.cs" Inherits="GestControlWeb.GestControl.Control" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="../Content/css/rcswitcher.css" />
    <link rel="stylesheet" href="../Content/css/rcswitcher.min.css" />
    <script src="../Content/js/jquery-2.1.3.min.js"></script>
    <script src="../Content/js/rcswitcher-4.0.min.js"></script>
    <style type="text/css">
        .etiqueta {
            font-weight: bold;
            margin: 5px;
        }

        .etiquetaDescripcion {
            font-weight: lighter;
            font-style: italic;
            font-size: unset;
            margin: 5px;
            padding-left: 5px;
        }

        .ckbx {
            margin: 5px;
        }
    </style>
    <script>

        function __doPostBack(eventTarget, eventArgument) {
            if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                theForm.__EVENTTARGET.value = eventTarget;
                theForm.__EVENTARGUMENT.value = eventArgument;
                theForm.submit();
            }
        }
        window.onload = function () {


            $('.permissions :checkbox').rcSwitcher({
                // reverse: true,
                // inputs: true,
                width: 44,
                height: 16,
                blobOffset: 2,
                onText: 'SI',
                offText: 'NO',
                theme: 'dark',
                // autoFontSize: true,
                autoStick: true,
            }).on('toggle.rcSwitcher', function (e, data, type) {
                console.log(type);
                __doPostBack($(':checkbox[value=1]'), '');
            });

            $('.delete :checkbox').rcSwitcher({
                // reverse: true,
                inputs: true,
                // width: 70,
                // height: 24,
                // blobOffset: 2,
                onText: 'Del',
                offText: 'No',
                theme: 'modern',
                // autoFontSize: true,
            }).on({
                'enable.rcSwitcher': function (e, data) {
                    console.log('Enabled', data);
                },

                'disable.rcSwitcher': function (e, data) {
                    console.log('Disabled');
                }
            });


            // Toggle Checked Status For Check Box
            $('.toggle-checkbox').on('click', function (e) {
                if ($(':checkbox[value=1]').is(':checked')) {
                    $(':checkbox[value=1]').prop('checked', false)
                } else {
                    $(':checkbox[value=1]').prop('checked', true)
                }
                $(':checkbox[value=1]').change();
            });


            // Toggle Disabled Status For Check Box
            $('.toggle-checkbox-disable').on('click', function (e) {

                if ($(':checkbox[value=1]').is(':disabled'))
                    $(':checkbox[value=1]').prop('disabled', false)
                else
                    $(':checkbox[value=1]').prop('disabled', true)

                $(':checkbox[value=1]').change();
            });
        };

    </script>
    <div style="font: normal 12px/1.5 Tahoma, Geneva, sans-serif;">
        <section id="more-products" class="container_12 clearfix">
            <h1>Control de Dispositivos</h1>
        </section>
        <section id="more-blurb" class="container_12 clearfix">
            <div class="product grid_3">
                <h4>Dispositivo</h4>
                <asp:Label ID="lblDisp1" runat="server" Text="Dispositivo 1" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp2" runat="server" Text="Dispositivo 2" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp3" runat="server" Text="Dispositivo 3" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp4" runat="server" Text="Dispositivo 4" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp5" runat="server" Text="Dispositivo 5" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp6" runat="server" Text="Dispositivo 6" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp7" runat="server" Text="Dispositivo 7" CssClass="swraper etiqueta"></asp:Label>
                <br />
                <asp:Label ID="lblDisp8" runat="server" Text="Dispositivo 8" CssClass="swraper etiqueta"></asp:Label>
            </div>
            <div class="product grid_2">
                <h4>Activo</h4>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp0" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp1" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp2" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp3" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp4" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp5" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp6" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
                <div class="permissions ckbx">
                    <asp:CheckBox ID="cbDisp7" runat="server" OnCheckedChanged="cbDisp0_CheckedChanged" AutoPostBack="true" />
                </div>
            </div>
            <div class="product grid_4">
                <h4>Descripción</h4>
                <asp:Label ID="lblDesc1" runat="server" Text="Descripción del dispositivo 1" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc2" runat="server" Text="Descripción del dispositivo 2" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc3" runat="server" Text="Descripción del dispositivo 3" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc4" runat="server" Text="Descripción del dispositivo 4" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc5" runat="server" Text="Descripción del dispositivo 5" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc6" runat="server" Text="Descripción del dispositivo 6" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc7" runat="server" Text="Descripción del dispositivo 7" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
                <asp:Label ID="lblDesc8" runat="server" Text="Descripción del dispositivo 8" CssClass="swraper etiquetaDescripcion"></asp:Label><br />
            </div>

        </section>
        <span class="clearfix"></span>
        <br />
        <br />
        <section id="more-blurb" class="container_12 clearfix">
            <div class="product grid_4">
                <a href="DatosUsuario.aspx" style="font-size: x-large">Volver
                </a>
                <br />
                <br />
            </div>
        </section>
    </div>
</asp:Content>
