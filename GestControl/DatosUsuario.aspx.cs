using Entidades;
using GestControlBusiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace GestControlWeb.GestControl
{
    public partial class DatosUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ObtenerNotificaciones();

        }

        private void ObtenerNotificaciones()
        {
            Session["Usuario"] = "franco";
            if (Session["Usuario"] != null)
            {
                string IdUsuario = Session["Usuario"].ToString();
                List<Mensajes> mensajes = new PlataformaSQL().GET_MENSAJES_USUARIO("franco");

                foreach (Mensajes item in mensajes)
                {
                    lblNotificaciones.Text = lblNotificaciones.Text + "<b>" + item.Titulo + "</b><br />" + item.Mensaje + "<br /><i>" + item.EntidadMensaje + " " + item.FechaEnvio + "." + "</i><br />" + "<br />";
                }
            }
            else
            {
                Response.Redirect("~/Account/Login");
            }
        }
    }
}