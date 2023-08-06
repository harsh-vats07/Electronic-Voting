using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Voting
{
    public partial class WWCD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select cname from candidate where votes= (select max(votes) from candidate where eid='" + DropDownList1.SelectedItem.Text + "')", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            Label3.Text = ds.Tables[0].Rows[0][0].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VoterDash.aspx");
        }
    }
}