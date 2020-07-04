using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HTML5Samples
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
            Label2.Text = DateTime.Now.ToString();
            if(IsPostBack)
            Button1.Visible = false;
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
            string myScript = "";
            //var ays = confirm('Are you sure?');document.getElementById('" + HiddenField1.ClientID + "').value = ays;
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "confirm('Are you sure you want to continue?')", true);
            //if ()
            //{
            //    Label2.Text = "Confirm YES:" + DateTime.Now.ToString();

            //}
            Label2.Text = "CONFIRM NO:" + DateTime.Now.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToString();
            Button1.Visible = false;
            try
            {
                //throw new Exception();
                Response.Redirect("About.aspx");
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Response.Redirect("Test.aspx");
                //throw ex;
            }

            Label1.Text = Label1.Text + "__" +DateTime.Now.ToString();
        }
    }
}