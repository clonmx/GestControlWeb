using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using Entidades;
using GestControlBusiness;

/// <summary>
/// Summary description for Servicio_WebMonitoreo
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Servicio_WebMonitoreo : System.Web.Services.WebService
{

    public Servicio_WebMonitoreo()
    {

        IntSock.Connecta_WinSock();
    }
    PlataformaSQL PSQL = new PlataformaSQL();
    Interfaz_Socket IntSock = new Interfaz_Socket();
    [WebMethod]
    public string Inicia()
    {
        return IntSock.Connecta_WinSock();
    }
    [WebMethod]
    public string Conecta()
    {
        return IntSock.Connecta_WinSock();
    }

    [WebMethod]
    public string SendOutDevicetoDevice(string IdTerminal, string Estado)
    {
        string terminal = IdTerminal.Replace("Terminal_", "");
        return IntSock.SendOutDevicetoDevice(terminal, Estado);

    }


    #region [ ANDROID ]

    [WebMethod]
    public List<Dispositivos> Get_Estado_Dispositivos()
    {
        DataTable dt = PSQL.GETEstado_Dispositivos();
        return NotificacionesAndroid.DespliegueDatos(dt);

    }

    [WebMethod]
    public bool Login(string user, string pass)
    {
        Login login = new Entidades.Login();
        login.Usuario = user;
        login.Password = pass;
        return PSQL.GETLogin(login);
    }

    [WebMethod]
    public bool Registro(string imei, string token, string user)
    {
        RegistroDispositivo dispositivo = new RegistroDispositivo();
        dispositivo.Imei = imei;
        dispositivo.Token = token;
        dispositivo.UsuarioId = user;

        return PSQL.INSDispositivo(dispositivo);
    }

    [WebMethod]
    public void EnvioMensajes(string mensaje)
    {
        PSQL.SENDMesaje(mensaje);
    }


    [WebMethod]
    public List<Mensajes> ObtenerMensajes(string IdUsuario)
    {
        return PSQL.GET_MENSAJES_USUARIO(IdUsuario);
    }

    [WebMethod]
    public bool InsertarMensajes(string IdUsuario, string mensaje, string TituloMensaje)
    {
        Mensajes mensajeIns = new Mensajes();
        mensajeIns.UsuarioId = IdUsuario;
        mensajeIns.Mensaje = mensaje;
        mensajeIns.TituloMensaje = TituloMensaje;
        mensajeIns.EntidadMensaje = IdUsuario;

        return PSQL.INS_MENSAJES_USUARIO(mensajeIns);
    }
    #endregion
}
