using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestControlWeb;
using GestControlBusiness;

namespace GestControlWeb.GestControl
{
    public partial class AvisosInformativos : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviarNotificacion_Click(object sender, EventArgs e)
        {
            PlataformaSQL cnx = new PlataformaSQL();
            cnx.SENDMesaje(txbAviso.Text);
        }
    }
}