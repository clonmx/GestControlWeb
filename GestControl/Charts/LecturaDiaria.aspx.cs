using GestControlBusiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestControlWeb.GestControl.Charts
{
    public partial class LecturaDiaria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Chart2.Titles["Title1"].Text = "Maxima Energía Consumida (W+)";
            Chart2.ChartAreas["ChartArea1"].AxisX.Interval = 1;
            Chart1.Titles["Title1"].Text = "Maxima Energía Inyectada (W+)";
            Chart1.ChartAreas["ChartArea1"].AxisX.Interval = 1;

            PlataformaSQL sql = new PlataformaSQL();

            Chart1.DataSource = sql.GET_CONSUMO_ANUAL_Energia("CONSUMO MAX DIARIA");
            Chart2.DataSource = sql.GET_CONSUMO_ANUAL_Energia("INYECCION MAX DIARIA");

        }
    }
}