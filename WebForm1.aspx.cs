using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DataOperations
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-1AT9VT2\SQLEXPRESS;Initial Catalog=Webform1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            data_ins();
            disp_data();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            update_data();
            disp_data();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            delete_data();
            disp_data();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {  
            disp_data();
        } 
        public void empty()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            RadioButtonList1.Items[0].Selected = false;
            RadioButtonList1.Items[1].Selected = false;
            RadioButtonList1.Items[2].Selected = false;
        }
        public void disp_data()
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from information";
            cmd.ExecuteNonQuery();
            con.Close();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }
        public void data_ins()
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }

            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Insert into information values('" + TextBox1.Text + "','" + TextBox2.Text + "','"+ TextBox3.Text +"','" + TextBox4.Text + "','" + RadioButtonList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            empty();
        }
        public void update_data()
        {   
            if (con.State == ConnectionState.Open)
            {  con.Close(); }
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update information set [firstname]='"+ TextBox1.Text + "',[lastname]='" + TextBox2.Text +"',[mobile]='" + TextBox3.Text + "',[dob]='" + TextBox4.Text + "',[gender]='" + RadioButtonList1.Text + "',[email]= '" + TextBox5.Text + "',[username]='" + TextBox6.Text + "',[password]='" + TextBox7.Text + "' where [mobile] ='"+TextBox8.Text+"' ";
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox8.Text = "";  
        }
        public void delete_data()
        {
            if (con.State == ConnectionState.Open)
            { con.Close(); }
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from information where [firstname]='"+TextBox9.Text+"' ";
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox9.Text = "";
        }

      
    }
}