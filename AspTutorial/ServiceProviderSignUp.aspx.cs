using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ServiceProviderSignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (CheckBoxWorker.Checked)
        {
            lblWorkerError.Text ="";
            String cs = ConfigurationManager.ConnectionStrings["DBLOGIN"].ConnectionString;
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into ServiceProviderLogin (UserName,Password,ContectNumber,Address,Email,Service) values('" + TextBoxUsername.Text + "','" + TextBoxPassword.Text + "','" + TextBoxContectNumber.Text + "','" + TextBoxAddress.Text + "','" + TextBoxEmail.Text + "','" +DropDownListService.SelectedValue+"' ) ", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script LANGUAGE='JavaScript' >if(confirm('already login')){ window.location ='First.aspx' ;} else{ window.location ='First.aspx';}</script>");

        
    }
        else
        {

            lblWorkerError.Text = "checkbox not filled";
        }
    }
}