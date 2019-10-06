using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Services : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["ServiceName"] != null)
            {
                String cs = ConfigurationManager.ConnectionStrings["DBLOGIN"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                conn.Open();
                SqlCommand cmd = new SqlCommand("select * from UserLogin where Username=@u ", conn);
                cmd.Parameters.AddWithValue("@u", Session["UserName"]);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    lblCustomerId.Text = dr.GetValue(0).ToString();
                    TextBoxFullName.Text = dr.GetValue(1).ToString();
                    TextBoxContect.Text = dr.GetValue(3).ToString();
                    TextBoxAddress.Text = dr.GetValue(4).ToString();
                    TextBoxEmail.Text = dr.GetValue(5).ToString();

                }
                else
                {

                }
                conn.Close();
                                                                                           
                lblServiceValue.Text = Session["ServiceName"].ToString();
                
                lblProfile.Text = "WELCOME " + Session["UserName"].ToString();
                btnLogout.Visible = true;
            }
            else
            {

                Response.Write("<script LANGUAGE='JavaScript' >if(confirm('login first')){ window.location ='Login.aspx' ;} else{ window.location ='First.aspx';}</script>");
            }
        }
        
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Contents.RemoveAll();
      
        btnLogout.Visible = false;
        Response.Write("<script LANGUAGE='JavaScript' >alert('logout successful')</script>");
        Response.Redirect("First.aspx");

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String cs = ConfigurationManager.ConnectionStrings["DBLOGIN"].ConnectionString;
        SqlConnection conn = new SqlConnection(cs);
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into OrderPlace (Id,UserName,ContectNumber,Address,Email,Service,Issue,ServiceProvider,ServiceProvided) values('"+ lblCustomerId.Text+"','" + TextBoxFullName.Text + "','" + TextBoxContect.Text + "','" + TextBoxAddress.Text + "','" + TextBoxEmail.Text + "','" +lblServiceValue.Text + "','" + CheckBoxListIssue.SelectedItem.ToString() + "','"+DropDownListServiceProvider.SelectedValue +"','no' )", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        Response.Write("<script LANGUAGE='JavaScript' >alert('order placed .....')</script>");
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
