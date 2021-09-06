using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Elibaray
{
    public partial class membermanagement : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //go button
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (idcheck())
            {
                go();
            }
            else
            {
                Response.Write("<script>alert('No id found');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            activeacc("active");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            activeacc("pending");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            activeacc("deactive");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (idcheck())
            {
                deleteuser();
            }
            else
            {
                Response.Write("<script>alert('No id found');</script>");
            }
        }
        //id check
        bool idcheck()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl Where member_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        //fill data to website
        void go()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM member_master_tbl Where member_id='" + TextBox1.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        TextBox2.Text = dr.GetValue(0).ToString();
                        TextBox3.Text = dr.GetValue(2).ToString();
                        TextBox4.Text = dr.GetValue(3).ToString();
                        TextBox6.Text = dr.GetValue(7).ToString();
                        TextBox7.Text = dr.GetValue(10).ToString();
                        TextBox8.Text = dr.GetValue(1).ToString();
                        TextBox9.Text = dr.GetValue(4).ToString();
                        TextBox10.Text = dr.GetValue(5).ToString();
                        TextBox11.Text = dr.GetValue(6).ToString();
                    }

                }
            }
            catch
            {

            }
        }

        //for update status
        void activeacc(String status)
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('member id is must');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("Update member_master_tbl Set account_status='" + status + "' Where member_id ='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    GridView1.DataBind();
                    go();
                    Response.Write("<script>alert('Member status updated');</script>");
                }
                catch
                {

                }
            }
        }

        //for delect user
        void deleteuser()
        {
            if (TextBox1.Text.Trim().Equals(""))
            {
                Response.Write("<script>alert('member id is must');</script>");
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("Delete member_master_tbl Where member_id='" + TextBox1.Text.Trim() + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    cleardata();
                    GridView1.DataBind();
                    Response.Write("<script>alert('user delete');</script>");
                }
                catch
                {

                }
            }
        }

        //clear data
        void cleardata()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
        }
    }
}