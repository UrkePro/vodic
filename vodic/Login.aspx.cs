﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vodic
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            Session["User"] = Login1.UserName;
            Response.Redirect("~/");
        }

    }
}