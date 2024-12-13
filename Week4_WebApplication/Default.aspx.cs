using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Week4_WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Login_OnClick(object sender, EventArgs e)
        {
            try
            {
                System.Data.DataView dv = (System.Data.DataView)UserLogin.Select(DataSourceSelectArguments.Empty);
                System.Data.DataTable dt = dv.Table;
                System.Data.DataRow dr = dt.Rows[0];

                if(dr["PlainTextPassword"].ToString() == Password.Text)
                {
                    Session["UID"] = dr["ID"];
                    Session["USERID"] = dr["User_id"];
                    Response.Redirect("~/SuccessfulLogin.aspx");
                }
                else
                {
                    Password.Focus();
                    Password.Text = "";
                    MessageLabel.Text = "Invalid Password Entered";
                }
            }
            catch (Exception)
            {
                UserName.Focus();
                Password.Text = "";
                MessageLabel.Text = "Invalid Username Entered";

            }
        }
    }
}