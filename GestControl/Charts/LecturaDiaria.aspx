<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LecturaDiaria.aspx.cs" Inherits="GestControlWeb.GestControl.Charts.LecturaDiaria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lectura Diaria</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Chart ID="Chart2" runat="server" Width="600px">
                <Series>
                    <asp:Series ChartType="Line" Font="Microsoft Sans Serif, 8.25pt, style=Bold" IsValueShownAsLabel="True" Name="Series1" XValueMember="Fecha Lectura" YValueMembers="Valor">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY LineWidth="0">
                        </AxisY>
                        <AxisX IntervalAutoMode="VariableCount" IsLabelAutoFit="False" IsStartedFromZero="False">
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Font="Microsoft Sans Serif, 12pt, style=Bold" Name="Title1"></asp:Title>
                </Titles>
            </asp:Chart>
            <asp:Chart ID="Chart1" runat="server" Width="600px">
                <Series>
                    <asp:Series ChartType="Line" Font="Microsoft Sans Serif, 8.25pt, style=Bold" IsValueShownAsLabel="True" Name="Series1" XValueMember="Fecha Lectura" YValueMembers="Valor">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisY LineWidth="0">
                        </AxisY>
                        <AxisX IntervalAutoMode="VariableCount" IsLabelAutoFit="False" IsStartedFromZero="False">
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
                <Titles>
                    <asp:Title Font="Microsoft Sans Serif, 12pt, style=Bold" Name="Title1"></asp:Title>
                </Titles>
            </asp:Chart>
        </div>
    </form>
</body>
</html>
