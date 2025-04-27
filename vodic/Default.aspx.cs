using System;
using System.Web;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace Vodic
{
    public partial class Home : System.Web.UI.Page
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

        protected void ddlGrad_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Resetuj destinacije
            ddlZnamenitost.Items.Clear();
            ddlZnamenitost.Items.Add(new ListItem("-- Izaberi znamenitost --", ""));

            // Resetuj hotele
            ddlHotel.Items.Clear();
            ddlHotel.Items.Add(new ListItem("-- Izaberi hotel --", ""));

            // Resetuj restorane
            ddlRestoran.Items.Clear();
            ddlRestoran.Items.Add(new ListItem("-- Izaberi restoran --", ""));
        }

        protected void ddlDrzava_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Resetuj gradove
            ddlGrad.Items.Clear();
            ddlGrad.Items.Add(new ListItem("-- Izaberi grad --", ""));

            // Resetuj sve što zavisi od grada
            ddlZnamenitost.Items.Clear();
            ddlZnamenitost.Items.Add(new ListItem("-- Izaberi znamenitost --", ""));

            ddlHotel.Items.Clear();
            ddlHotel.Items.Add(new ListItem("-- Izaberi hotel --", ""));

            ddlRestoran.Items.Clear();
            ddlRestoran.Items.Add(new ListItem("-- Izaberi restoran --", ""));
        }
    }
}