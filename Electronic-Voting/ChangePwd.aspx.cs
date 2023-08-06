using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Voting
{
    public partial class ChangePwd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VoterDash.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
            cn.Open();
            SqlCommand cmd = new SqlCommand("update voter set vpwd = " + TextBox2.Text + " where vid=" + TextBox1.Text, cn);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
                Response.Write("Password Changed");
        }
    }
}