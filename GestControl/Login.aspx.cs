using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using GestControlWeb.Models;
using GestControlBusiness;

namespace GestControlWeb.Account
{
    public partial class Login : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Entidades.Login userLogin = new Entidades.Login();
                userLogin.Usuario = User.Text;
                userLogin.Password = Password.Text;
                if (User.Text.ToLower() == "admin")
                    Response.Redirect("/GestControl/Admin/Administracion");
                else
                {
                    //if (new PlataformaSQL().GETLogin(userLogin))
                    //{
                    Session["Usuario"] = User.Text;
                    Response.Redirect("DatosUsuario");
                    //Server.Transfer("DatosUsuario.aspx");
                    //}
                    //else
                    //{
                    //    FailureText.Text = "*Ingreso Invalido";
                    //    ErrorMessage.Visible = true;
                    //}
                }
            }
        }
    }
}