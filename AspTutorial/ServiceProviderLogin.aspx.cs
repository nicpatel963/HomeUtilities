using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServiceProviderLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserName"] != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('already login')){ window.location ='First.aspx' ;} else{ window.location ='First.aspx';}</script>");

        }
        else if (Session["ServiceUserName"] != null)
        {
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('already login')){ window.location ='First.aspx' ;} else{ window.location ='First.aspx';}</script>");

        }

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["DBLOGIN"].ConnectionString;

        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select Username from ServiceProviderLogin where Username=@u and Password=@p ", conn);
        cmd.Parameters.AddWithValue("@u", TextBoxUsername.Text);
        cmd.Parameters.AddWithValue("@p", TextBoxPassword.Text);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Session["ServiceUserName"] = TextBoxUsername.Text;
            Response.Redirect("~/First.aspx");
        }
        else
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('invalid user')</script>");
            TextBoxPassword.Text = "";
        }
        conn.Close();

    }
}