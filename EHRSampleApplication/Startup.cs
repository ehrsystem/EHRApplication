using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(EHRSampleApplication.Startup))]
namespace EHRSampleApplication
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
