using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class First : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
            if (Session["UserName"] != null)
            {
                lblProfile.Text = "WELCOME " + Session["UserName"].ToString();
                btnLogout.Visible = true;
                btnUserDeskDesk.Visible = true;
            }
            else if(Session["ServiceUserName"] !=null)
            {
                lblProfile.Text = "WELCOME " + Session["ServiceUserName"].ToString();
                btnServiceProviderDesk.Visible = true;
                btnLogout.Visible = true;


            }

        }
        else
        {

        }
    }

    protected void ImageButtonPlumber_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UserName"] != null)
        {
            lblProfile.Text = "WELCOME " + Session["UserName"].ToString();
            Session["ServiceName"] = "plumber";
            Response.Redirect("Service.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('login first')){ window.location ='Login.aspx' ;} else{ window.location ='First.aspx';}</script>");

            

        }
    }

   protected void ImageButtonPainter_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UserName"] != null)
        {
            lblProfile.Text = "WELCOME " + Session["UserName"].ToString();
            Session["ServiceName"] = "painter";
            Response.Redirect("Service.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('login first')){ window.location ='Login.aspx' ;} else{ window.location ='First.aspx';}</script>");
        }
    }

    protected void ImageButtonCarpenter_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UserName"] != null)
        {
            lblProfile.Text = "WELCOME " + Session["UserName"].ToString();
            Session["ServiceName"] = "carpenter";
            Response.Redirect("Service.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('login first')){ window.location ='Login.aspx' ;} else{ window.location ='First.aspx';}</script>");
        }
    }

    protected void ImageButtonChef_Click(object sender, ImageClickEventArgs e)
    {
        if (Session["UserName"] != null)
        {
            lblProfile.Text = "WELCOME " + Session["UserName"].ToString();
            Session["ServiceName"] = "chef";
            Response.Redirect("Service.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('login first')){ window.location ='Login.aspx' ;} else{ window.location ='First.aspx';}</script>");
        }
    }
   

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
        btnServiceProviderDesk.Visible = false;
        btnLogout.Visible = false;
        btnUserDeskDesk.Visible = false;
        Response.Write("<script LANGUAGE='JavaScript' >if(confirm('log out successful')){ window.location ='First.aspx' ;} else{ window.location ='First.aspx';}</script>");
        
    }

    protected void btnServiceProviderDesk_Click(object sender, EventArgs e)
    {
        if (Session["ServiceUserName"] != null)
            Response.Redirect("ServiceProviderDesk.aspx");
        else
            Response.Redirect("First.aspx");

    }

    protected void btnUserDeskDesk_Click(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
            Response.Redirect("UserDesk.aspx");
        else
            Response.Redirect("First.aspx");
    }
}