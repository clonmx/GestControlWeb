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
    public partial class Control : System.Web.UI.Page
    {
        Interfaz_Socket sock = new Interfaz_Socket();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ObtenerEstadoDispositivos();
                sock.Connecta_WinSock();
            }
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
                        case "0":
                            lblDisp1.Text = item.Terminal;
                            lblDesc1.Text = item.String_Alerta;
                            cbDisp0.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "1":
                            lblDisp2.Text = item.Terminal;
                            lblDesc2.Text = item.String_Alerta;
                            cbDisp1.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "2":
                            lblDisp3.Text = item.Terminal;
                            lblDesc3.Text = item.String_Alerta;
                            cbDisp2.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "3":
                            lblDisp4.Text = item.Terminal;
                            lblDesc4.Text = item.String_Alerta;
                            cbDisp3.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "4":
                            lblDisp5.Text = item.Terminal;
                            lblDesc5.Text = item.String_Alerta;
                            cbDisp4.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "5":
                            lblDisp6.Text = item.Terminal;
                            lblDesc6.Text = item.String_Alerta;
                            cbDisp5.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "6":
                            lblDisp7.Text = item.Terminal;
                            lblDesc7.Text = item.String_Alerta;
                            cbDisp6.Checked = (item.Estado) == "0" ? false : true;
                            break;
                        case "7":
                            lblDisp8.Text = item.Terminal;
                            lblDesc8.Text = item.String_Alerta;
                            cbDisp7.Checked = (item.Estado) == "0" ? false : true;
                            break;
                    }
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }


        protected void cbDisp0_CheckedChanged(object sender, EventArgs e)
        {
            switch (((CheckBox)sender).ID.ToString())
            {
                case "cbDisp0":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("1", ((CheckBox)sender).Checked ? "1" : "0");
                    break;
                case "cbDisp1":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("2", ((CheckBox)sender).Checked ? "1" : "0");
                    break;
                case "cbDisp2":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("3", ((CheckBox)sender).Checked ? "1" : "0");
                    break;
                case "cbDisp3":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("4", ((CheckBox)sender).Checked ? "1" : "0");
                    break;
                case "cbDisp4":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("5", ((CheckBox)sender).Checked ? "1" : "0");
                    break;
                case "cbDisp5":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("6", ((CheckBox)sender).Checked ? "1" : "0");
                    break;
                case "cbDisp6":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("7", cbDisp0.Checked ? "1" : "0");
                    break;
                case "cbDisp7":
                    sock.Connecta_WinSock();
                    sock.SendOutDevicetoDevice("8", cbDisp0.Checked ? "1" : "0");
                    break;
            }
        }
    }
}