using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ExportPDF2.Startup))]
namespace ExportPDF2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
