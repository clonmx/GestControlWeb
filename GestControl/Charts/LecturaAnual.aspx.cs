using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestControlBusiness;
using Entidades;

namespace GestControlWeb.GestControl.Charts
{
    public partial class LecturaAnual : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart1.Titles["Title1"].Text = "Maxima Energía Consumida (W+)";
            Chart2.Titles["Title1"].Text = "Energía Activa Consumida Wh+";
            Chart3.Titles["Title1"].Text = "Maxima Energía Inyectada (W+) ";
            Chart4.Titles["Title1"].Text = "Energía Activa Inyectada Wh-";
            Chart1.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart2.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart3.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart4.ChartAreas["ChartArea1"].AxisX.Interval = 1;

            PlataformaSQL sql = new PlataformaSQL();

            Chart1.DataSource = sql.GET_CONSUMO_ANUAL_Energia("CONSUMO MAX ANUAL");
            Chart2.DataSource = sql.GET_CONSUMO_ANUAL_Energia("CONSUMO ACTIVO ANUAL");
            Chart3.DataSource = sql.GET_CONSUMO_ANUAL_Energia("INYECCION MAX ANUAL");
            Chart4.DataSource = sql.GET_CONSUMO_ANUAL_Energia("INYECCION ACTIVA ANUAL");

        }
    }
}