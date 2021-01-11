using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GestControlWeb.Startup))]
namespace GestControlWeb
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
