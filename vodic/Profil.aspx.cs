using System;
using System.Web;
using System.Web.Security;

namespace Vodic
{
    public partial class Promena : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/login");
            }

            lblUsername.Text = User.Identity.Name;
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            // Brise cookie
            FormsAuthentication.SignOut();

            // Brise sesiju
            Session.Clear();
            Session.Abandon();

            // Brise kes browsera
            Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetNoStore();
            Response.Redirect("~/login");
        }
    }
}