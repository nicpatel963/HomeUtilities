using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonHome_Click(object sender, EventArgs e)
    {
        Response.Redirect("First.aspx");
    }

    protected void ButtonUserlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");

    }

    protected void ButtonServiceProvider_Click(object sender, EventArgs e)
    {
        Response.Redirect("ServiceProviderLogin.aspx");

    }
}
