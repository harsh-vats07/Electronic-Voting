﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Electronic_Voting
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedItem.Text == "Admin" && TextBox2.Text == "admin" && TextBox1.Text == "admin123")
                Response.Redirect("AdminDash.aspx");
            else if (DropDownList2.SelectedItem.Text == "Voter")
            {
                SqlConnection cn = new SqlConnection("Initial catalog=Evoting; integrated security=true; server=localhost");
                cn.Open();
                SqlCommand cmd = new SqlCommand("select count(*) from Voter where Vname= '" + TextBox2.Text.Trim() + "' and Vpwd= '" + TextBox1.Text.Trim() + "'", cn);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                Response.Write(i);
                if (i == 1)
                {

                    Response.Redirect("VoterDash.aspx");
                }
            }
        }
    }
}