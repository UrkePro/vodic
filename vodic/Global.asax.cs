using System;
using System.Web;
using System.Web.Routing;

namespace Vodic
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.Ignore("{resource}.axd/{*pathInfo}");
            routes.MapPageRoute("DefaultRoute", "", "~/Default.aspx");
            routes.MapPageRoute("LoginRoute", "login", "~/Login.aspx");
            routes.MapPageRoute("RegistracijaRoute", "register", "~/Registracija.aspx");
            routes.MapPageRoute("ResetovanjeRoute", "reset", "~/Resetovanje.aspx");
            routes.MapPageRoute("ProfilRoute", "profile", "~/Profil.aspx");
        }
    }
}
