using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;

namespace PacificSchoolOfLow.Template
{
    public partial class Mailform : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-JL5VT9E\SQLEXPRESS;Initial Catalog=semo;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           con.Open();
        }

        public void data_ins()
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            try
            {
                cmd.CommandText = "Insert into cinfo values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
                cmd.ExecuteNonQuery();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Mail Has Been Sent Succesfully ✔')", true);
                empty();
            }
            catch (Exception ex)
            {               
                Label6.Text = "Please Enter Valid Information 👾 ";
                Label6.ForeColor = System.Drawing.Color.Red;
                Label6.Focus();
                Console.WriteLine(ex.Message);
                return;
            }
            con.Close();
        }
        public void empty()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Label6.Text = "";
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
                if (Page.IsValid)
                {
                    data_ins();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "alert('Mail Has Not Been Sent ❌')", true);
                }
            }
           
        }       
   
}