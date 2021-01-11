<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Mobile.Master" AutoEventWireup="true" CodeBehind="NotificacionHorarioPunta.aspx.cs" Inherits="GestControlWeb.GestControl.NotificacionHorarioPunta" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $("[name='switch-state']").bootstrapSwitch();
        });
    </script>

    <div class="jumbotron">

        <h2>Aviso de horario punta</h2>
        <img src="../gc_imgs/tarifa-flex-grafico.jpg" class="img-responsive" />


        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active" style="font-size: x-small"><a data-toggle="tab" href="#home">Administrar</a></li>
                <li class="auto-style6"><a data-toggle="tab" href="#menu1">Consumo</a></li>
                <li class="auto-style6"><a data-toggle="tab" href="#menu2">ERNC</a></li>
            </ul>

            <div class="tab-content">
                <div id="home" class="tab-pane fade in active">
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style4">
                                <h6 style="color: #428bca">Inyección ERNC a la Red  : </h6>
                            </td>
                            <td class="text-center">
                                <div class="divToggleButton">

                                    <asp:CheckBox ID="chkToggleButton" runat="server"
                                        AutoPostBack="true" OnCheckedChanged="chkToggleButton_CheckedChanged" />
                                    <asp:Label ID="Label1"
                                        AssociatedControlID="chkToggleButton" runat="server"
                                        ToolTip="Toggle between Auto and Manual mode" />

                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <h6 style="color: #428bca">Accionar Circuitos Especiales : </h6>
                            </td>
                            <td class="text-center">
                                <div class="divToggleButton2">
                                    <asp:CheckBox ID="CheckBox2" runat="server"
                                        AutoPostBack="true" OnCheckedChanged="chkToggleButton_CheckedChanged2" />
                                    <asp:Label ID="Label2"
                                        AssociatedControlID="CheckBox2" runat="server"
                                        ToolTip="Toggle between Auto and Manual mode" />
                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <h6 style="color: #428bca">Accionar Enchufes : </h6>
                            </td>
                            <td class="text-center">
                                <div class="divToggleButton3">
                                    <asp:CheckBox ID="CheckBox3" runat="server"
                                        AutoPostBack="true" OnCheckedChanged="chkToggleButton_CheckedChanged3" />
                                    <asp:Label ID="Label6"
                                        AssociatedControlID="CheckBox3" runat="server"
                                        ToolTip="Toggle between Auto and Manual mode" />
                                </div>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </div>
                <div id="menu1" class="tab-pane fade">
                    <asp:Chart ID="Chart1" runat="server" Width="250px">
                        <Series>
                            <asp:Series ChartType="Spline" Font="Microsoft Sans Serif, 6.25pt, style=Bold" IsValueShownAsLabel="True" Name="Series1" XValueMember="Fecha Lectura" YValueMembers="Valor">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BorderColor="DarkGray">
                                <AxisY LineWidth="0">
                                </AxisY>
                                <AxisX IntervalAutoMode="VariableCount" IsLabelAutoFit="False" IsStartedFromZero="False">
                                    <StripLines>
                                        <asp:StripLine Interval="1" IntervalOffset="1" />
                                    </StripLines>
                                </AxisX>

                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 9pt, style=Bold" Name="Title1"></asp:Title>
                        </Titles>
                    </asp:Chart>
                </div>
                <div id="menu2" class="tab-pane fade">
                    <asp:Chart ID="Chart2" runat="server" Width="250px">
                        <Series>
                            <asp:Series ChartType="Spline" Font="Microsoft Sans Serif, 6.25pt, style=Bold" IsValueShownAsLabel="True" Name="Series1" XValueMember="Fecha Lectura" YValueMembers="Valor">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1" BorderColor="DarkGray">
                                <AxisY LineWidth="0">
                                </AxisY>
                                <AxisX IntervalAutoMode="VariableCount" IsLabelAutoFit="False" IsStartedFromZero="False">
                                    <StripLines>
                                        <asp:StripLine Interval="1" IntervalOffset="1" />
                                    </StripLines>
                                </AxisX>

                            </asp:ChartArea>
                        </ChartAreas>
                        <Titles>
                            <asp:Title Font="Microsoft Sans Serif, 9pt, style=Bold" Name="Title1"></asp:Title>
                        </Titles>
                    </asp:Chart>
                </div>
            </div>
        </div>
    </div>
    <div>
        <p class="lead">
            La definición de horas punta va a depender del sistema eléctrico del cual sean abastecidos, quedando éstas establecidas en el decreto de precios de nudo.
Para las empresas distribuidoras que se alimentas del SIC, el cual se extiende desde Tal Tal por el norte y hasta la Isla Grande de Chiloé por el Sur, y que abastece a más del 90% de la población, se entiende por horas punta al periodo comprendido entre las 18 y 23 horas de cada día de los meses de invierno, es decir entre los meses de mayo a septiembre inclusive. 
        </p>
        <p class="lead">
            El resto del año es fuera de punta. De acuerdo a la nueva normativa este periodo desde el 2008 cambió, iniciándose en Marzo y finalizando en Septiembre.
La implicancia de este periodo no es menor si la industria o el comercio entran en este periodo, debido al sobre costo por utilización de potencia y el arrastre del sobre costo a los meses fuera de punta.
        </p>
        <p class="lead">Si ejemplificamos los costos por concepto de electricidad a una industria que entra en el periodo de horas puntas y tiene una consumo de potencia aproximadamente de 350 kw como demanda máxima, visualizamos que una gran parte de la facturación corresponde a las horas de punta.</p>
        <p class="lead">
            Para poder realizar el corte de horas punta con un Equipo <strong>ERNC</strong> primero que nada debemos escoger la tarifa que nos permita realizar la correspondiente discriminación del periodo de horas punta.
Los clientes pueden elegir libremente cualquiera de las opciones de tarifas que a continuación se describen, con las limitaciones y condiciones de aplicación establecida en cada caso y dentro del nivel de tensión que corresponda.
        </p>
        <p class="lead">Por su parte, las empresas distribuidoras se encuentran obligadas a aceptar la opción elegida por el cliente.</p>
        <p class="lead">Esta opción tarifaría regirá por 1 año salvo acuerdos distintos con la distribuidora.  </p>
        <p class="lead"><strong>BT1:</strong> Opción de tarifa simple para baja tensión y clientes residenciales.  </p>
        <p class="lead"><strong>BT2:</strong> Opción en baja tensión con potencia contratada y medidor de energía y potencia contratada.  </p>
        <p class="lead"><strong>BT3:</strong> Opción en baja tensión con demanda de potencia máxima leída y medidor de energía y demanda de potencia máxima leída. Hasta ahora ninguna de las tarifas descritas hacen diferenciación entre el periodo de horas punta y el periodo fuera de punta, y además son tarifas que tienen un valor de KW muy elevado y fijo para todo el año para clientes que posean gran demanda.</p>
        <p class="lead">&nbsp;<strong>BT4: </strong>Opción tarifa horaria en baja tensión. Para clientes con medidor de energía y demanda máxima contratada o leída fuera de horas punta, y demanda máxima contratada o leída en horas de punta del sistema eléctrico.</p>
    </div>

</asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
