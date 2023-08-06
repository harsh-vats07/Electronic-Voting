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
    public partial class Vote : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
                cn.Open();
                SqlDataAdapter da = new SqlDataAdapter("select cid,cname,cage,eid from candidate ", cn);
                DataSet ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            fillgrid();
        }

        public void fillgrid() {

            SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
            cn.Open();
            SqlDataAdapter da = new SqlDataAdapter("select cid,cname,cage,eid from candidate where eid= (select eid from election where ename='" + DropDownList1.SelectedItem.Text + "')", cn);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

       

    protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
            cn.Open();
            SqlCommand cmd = new SqlCommand("update candidate set votes =(select votes from candidate where cname='"+TextBox1.Text+"')+1 where cname='"+TextBox1.Text+"'" , cn);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
                Response.Write("VOTE SUBMITTED");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("VoterDash.aspx");
        }

        protected void DropDownList1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}