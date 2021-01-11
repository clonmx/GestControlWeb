using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GestControlBusiness;
using System.Data;
using Entidades;
using System.Configuration;

namespace GestControlWeb
{
    public partial class Notificaciones_Usuarios : Page
    {
        PlataformaSQL plSQL = new PlataformaSQL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!this.IsPostBack)
            {
                lblError.Text = string.Empty;
                DataTable dt = plSQL.dt_SP_GET_Usuarios_a_Notificar();
                grdCustomer.DataSource = dt;
                grdCustomer.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string data = "";
            List<string> usuarios = new List<string>();
            foreach (GridViewRow row in grdCustomer.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox chkRow = (row.Cells[0].FindControl("chkCtrl") as CheckBox);
                    if (chkRow.Checked)
                    {
                        string storid = row.Cells[1].Text;
                        string storname = row.Cells[2].Text;
                        string id = grdCustomer.DataKeys[row.RowIndex].Value.ToString();
                        usuarios.Add(id);
                        data = data + id + " ,  " + storname;
                    }
                }
            }

            if (usuarios.Count > 0 && !string.IsNullOrEmpty(txtMensaje.Text))
            {
                Mensajes msg = new Mensajes();
                msg.Mensaje = txtMensaje.Text;
                msg.EntidadMensaje = "Chilectra";
                msg.FechaEnvio = DateTime.Now;
                msg.TituloMensaje = "Alerta";
                msg.URL = txtURL.Text;
                msg.Titulo = txtTitulo.Text;
                new PlataformaSQL().INS_MENSAJES_USUARIOS(msg, usuarios);
                
            }
            else
                lblError.Text = "Debe seleccionar destinatario(s) y mensaje no puede ser vacio.";

        }

        protected void cbHoraPunta_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                txtTitulo.Text = "Inicio Horario Punta";
                txtMensaje.Text = "Se ha iniciado Horario Punta";
                txtURL.Text = ConfigurationManager.AppSettings["URLHoraPunta"];
                txtTitulo.ReadOnly = true;
                txtMensaje.ReadOnly = true;
                txtURL.ReadOnly = true;
                cbCorteProgramado.Checked = false;
            }
            else
            {
                txtTitulo.Text = string.Empty;
                txtMensaje.Text = string.Empty;
                txtURL.Text = string.Empty;
                txtTitulo.ReadOnly = false;
                txtMensaje.ReadOnly = false;
                txtURL.ReadOnly = false;
            }
        }

        protected void cbCorteProgramado_CheckedChanged(object sender, EventArgs e)
        {
            if (((CheckBox)sender).Checked)
            {
                txtTitulo.Text = "Aviso Corte Programado";
                txtMensaje.Text = "Se realizará un corte programado para su sector entre las XX:XX y las XX:XX";
                txtURL.Text = ConfigurationManager.AppSettings["URLCorteProgramado"];
                txtTitulo.ReadOnly = true;
                txtMensaje.ReadOnly = false;
                txtURL.ReadOnly = true;
                cbHoraPunta.Checked = false;
            }
            else
            {
                txtTitulo.Text = string.Empty;
                txtMensaje.Text = string.Empty;
                txtURL.Text = string.Empty;
                txtTitulo.ReadOnly = false;
                txtMensaje.ReadOnly = false;
                txtURL.ReadOnly = false;
            }
        }
    }
}