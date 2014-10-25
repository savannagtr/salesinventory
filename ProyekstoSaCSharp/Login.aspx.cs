using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyekstoSaCSharp
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Boolean blnresult;
            blnresult = false;
            blnresult = Authentication(Login1.UserName, Login1.Password);

            
            if (blnresult == true)
            {
                
                e.Authenticated = true;
                Session["Check"] = true;
                Session["Username"] = Login1.UserName;
            }
            else
                
                e.Authenticated = false;
        }
        protected static Boolean Authentication(string username, string password)
        {

            // check if reader hase any value then return true otherwise return false
            if (username == "admin" && password == "pa$$w0rd")
                return true;
            else
                return false;
        }
    }
}