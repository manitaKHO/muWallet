using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(muWallet.Startup))]
namespace muWallet
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
