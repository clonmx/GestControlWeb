using GestControlBusiness;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestControlWeb.GestControl.Admin
{
    public partial class AvisosUsuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                ObtenerAvisosUsuarios();
        }
        private void ObtenerAvisosUsuarios()
        {
            grvAvisosUsuarios.DataSource = new PlataformaSQL().GET_AVISOS_USUARIO();
            grvAvisosUsuarios.DataBind();
        }

        protected void grvAvisosUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvAvisosUsuarios.PageIndex = (e).NewPageIndex;
            ObtenerAvisosUsuarios();
        }
    }
}