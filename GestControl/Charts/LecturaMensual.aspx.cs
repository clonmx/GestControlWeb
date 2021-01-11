using GestControlBusiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestControlWeb.GestControl.Charts
{
    public partial class LecturaMensual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Titles["Title1"].Text = "Maxima Energía Consumida (W+)";
            Chart1.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart2.Titles["Title1"].Text = "Energía Activa Consumida Wh+";
            Chart2.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart3.Titles["Title1"].Text = "Maxima Energía Inyectada (W+)";
            Chart3.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart4.Titles["Title1"].Text = "Energía Activa Inyectada Wh-";
            Chart4.ChartAreas["ChartArea1"].AxisX.Interval = 1;

            PlataformaSQL sql = new PlataformaSQL();

            Chart1.DataSource = sql.GET_CONSUMO_ANUAL_Energia("CONSUMO MAX MENSUAL");
            Chart2.DataSource = sql.GET_CONSUMO_ANUAL_Energia("CONSUMO ACTIVO MENSUAL");
            Chart3.DataSource = sql.GET_CONSUMO_ANUAL_Energia("INYECCION MAX MENSUAL");
            Chart4.DataSource = sql.GET_CONSUMO_ANUAL_Energia("INYECCION ACTIVA MENSUAL");

        }
    }
}