using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServiceProviderDesk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            if (Session["ServiceUserName"] != null)
            {
                lblProfile.Text = "WELCOME " + Session["ServiceUserName"].ToString();
                btnServiceProviderDesk.Visible = true;
                btnLogout.Visible = true;


            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >if(confirm('login first')){ window.location ='ServiceProviderLogin.aspx' ;} else{ window.location ='First.aspx';}</script>");

            }

        }
    }
        protected void btnServiceProviderDesk_Click(object sender, EventArgs e)
    {

        if (Session["ServiceUserName"] != null)
            Response.Redirect("ServiceProviderDesk.aspx");
        else
            Response.Redirect("First.aspx");

    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        btnServiceProviderDesk.Visible = false;
        btnLogout.Visible = false;
        Response.Write("<script LANGUAGE='JavaScript' >alert('logout successful')</script>");
        Response.Redirect("First.aspx");

    }



   
}