using Entidades;
using GestControlBusiness;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestControlWeb.GestControl
{
    public partial class NotificacionHorarioPunta : System.Web.UI.Page
    {
        Interfaz_Socket sock = new Interfaz_Socket();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ObtenerEstadoDispositivos();
                sock.Connecta_WinSock();

                Chart1.Titles["Title1"].Text = "Maxima Energía Consumida (W+)";
                Chart1.ChartAreas["ChartArea1"].AxisX.Interval = 1;
                Chart2.Titles["Title1"].Text = "Maxima Energía Inyectada (W+)";
                Chart2.ChartAreas["ChartArea1"].AxisX.Interval = 1;


                PlataformaSQL sql = new PlataformaSQL();

                Chart1.DataSource = sql.GET_CONSUMO_ANUAL_Energia("CONSUMO MAX DIARIA MOVIL");
                Chart2.DataSource = sql.GET_CONSUMO_ANUAL_Energia("INYECCION MAX DIARIA MOVIL");
            }
        }


        protected void chkToggleButton_CheckedChanged(object sender, EventArgs e)
        {
            sock.Connecta_WinSock();
            sock.SendOutDevicetoDevice("4", chkToggleButton.Checked ? "1" : "0");

        }
        protected void chkToggleButton_CheckedChanged2(object sender, EventArgs e)
        {
            sock.Connecta_WinSock();
            sock.SendOutDevicetoDevice("7", CheckBox2.Checked ? "1" : "0");
        }
        protected void chkToggleButton_CheckedChanged3(object sender, EventArgs e)
        {
            sock.Connecta_WinSock();
            sock.SendOutDevicetoDevice("6", CheckBox3.Checked ? "1" : "0");
        }
        private void ObtenerEstadoDispositivos()
        {
            try
            {
                DataTable dt = new PlataformaSQL().GETEstado_Dispositivos();
                List<Dispositivos> dispositivos = NotificacionesAndroid.DespliegueDatos(dt);

                foreach (Dispositivos item in dispositivos)
                {
                    switch (item.Terminal)
                    {

                        case "4":
                            chkToggleButton.Checked = (item.Estado) == "0" ? false : true;
                            break;

                        case "7":

                            CheckBox2.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "6":

                            CheckBox3.Checked = (item.Estado) == "0" ? false : true;
                            break;
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}