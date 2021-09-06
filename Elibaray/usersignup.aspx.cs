﻿using System;
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
    public partial class usersignup : System.Web.UI.Page
    {
        //class connect
        //con web.api
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //check already ex else sign up
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }
        }

        bool checkMemberExists()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from member_master_tbl where member_id='" + TextBox8.Text.Trim() + "';", con);
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

        //signup query
        void signUpNewMember()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
               
                SqlCommand cmd = new SqlCommand("INSERT INTO member_master_tbl(name,DOB,contact_no,email,state,city,pincode,full_address,member_id,password,account_status) VALUES (@name,@DOB,@contact_no,@email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)", con);

                //(@name, @DOB, @contact_no, @email,@state,@city,@pincode,@full_address,@member_id,@password,@account_status)
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@DOB", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");
                Response.Redirect("userlogin.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        // check member exists
       
    }
}



