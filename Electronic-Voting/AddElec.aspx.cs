using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Voting
{
    public partial class AddElec : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into election values(" + TextBox1.Text + ",'" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "',' ')", cn);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
                Response.Write("Details INserted");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDash.aspx");
        }
    }
}