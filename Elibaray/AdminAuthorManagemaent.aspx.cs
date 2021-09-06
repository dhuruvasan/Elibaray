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
    public partial class AdminAuthorManagemaent : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        //add
        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                if (IdCheckuser())
                {
                    Response.Write("<script>alert('The author id already exist. pleace try diffrent id');</script>");
                    clear();
                }
                else
                {
                    addauthor();
                    GridView1.DataBind();
                    clear();
                }
            }
            catch
            {

            }
            
        }
        //update
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (IdCheckuser())
            {
                updateauthor();
                GridView1.DataBind();
                clear();
            }
            else
            {
                Response.Write("<script>alert('The author id not exist. pleace check given author id');</script>");
                clear();
            }
        }
        //delete
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (IdCheckuser())
            {
                delauthor();
                clear();
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('The author id not exist. pleace check given author id');</script>");
                clear();
            }
        }
        //id go
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            printauthername();
        }

        void printauthername()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl Where author_id ='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString().Trim();
                }
                else
                {
                    Response.Write("<script>alert('check the id');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool IdCheckuser()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM author_master_tbl Where author_id ='" + TextBox1.Text.Trim() + "';", con);
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

        void delauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM author_master_tbl WHERE author_id ='" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Delete Author Success');</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateauthor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE author_master_tbl SET author_name = @au_name WHERE author_id = '" + TextBox1.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@au_name", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Update Author Success');</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        void addauthor()
        {
           try
           {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                  con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO author_master_tbl (author_id,author_name)VALUES(@au_id,@au_name)", con);
                    
                //(@name, @DOB, @contact_no, @email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)
                cmd.Parameters.AddWithValue("@au_id", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@au_name", TextBox2.Text.Trim());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Added New Author Success');</script>");
           }
           catch(Exception ex)
           {
             Response.Write("<script>alert('" + ex.Message + "');</script>");
           }
        }
        void clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}