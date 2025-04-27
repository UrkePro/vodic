<%@ Application Language="C#" %>

<script runat="server">

using System.Web.Routing;

void Application_Start(object sender, EventArgs e)
{
    // Code that runs on application startup
    RegisterRoutes(RouteTable.Routes);
}

void Session_Start(object sender, EventArgs e)
{
    // Code that runs when a new session is started
}


public static void RegisterRoutes(RouteCollection routes)
{
    routes.Ignore("{resource}.axd/{*pathInfo}");
    
    routes.MapPageRoute(
        "LoginRoute",           // Ime rute
        "login",                // URL bez .aspx
        "~/Login.aspx"          // Fizički fajl
    );
}
</script>
