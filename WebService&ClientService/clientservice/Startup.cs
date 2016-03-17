using Microsoft.Owin;
using Owin;
using WebMatrix.WebData;
using WebMatrix.Data;

[assembly: OwinStartupAttribute(typeof(SF.Startup))]
namespace SF
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
