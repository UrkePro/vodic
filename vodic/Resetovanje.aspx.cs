using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vodic
{
    public partial class Generisanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void PasswordRecovery1_SendingMail(object sender, MailMessageEventArgs e)
        {
            e.Cancel = true;
            Literal passwordLiteral = (Literal)PasswordRecovery1.SuccessTemplateContainer.FindControl("PasswordLiteral");

            if (passwordLiteral != null)
            {
                string password = e.Message.Body;

                passwordLiteral.Text = password;

                PasswordRecovery1.SuccessTemplateContainer.Visible = true;
                PasswordRecovery1.UserNameTemplateContainer.Visible = false;
                PasswordRecovery1.QuestionTemplateContainer.Visible = false;
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {

        }
    }
}