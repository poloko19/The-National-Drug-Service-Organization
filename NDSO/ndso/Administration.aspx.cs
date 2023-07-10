using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace NDSO.ndso
{
    public partial class Administration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ESCF32O\SQLEXPRESS;Initial Catalog=Health;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null && Session["Surname"] != null)
            {
                Namesi.Text = Session["Name"].ToString();
                Sur.Text = Session["Surname"].ToString();
            }
            else
            {
                Response.Write("<script>alert('session is empty')</script>");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Password.Text == Confirm.Text)
            {
                string Regi = Name.Text + Surname.Text;
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Registration values('" + Name.Text + "','" + Surname.Text + "','" + Gender.SelectedItem.Value + "','" + Email.Text + "','" + Role.SelectedItem + "','" + Username.Text + "','" + Password.Text + "','" + Regi + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registered Successfully')</script>");
                Name.Text = "";
                Surname.Text = "";
                Email.Text = "";
                Username.Text = "";
                Password.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Enter the same password as the previous one')</script>");
            }
        }
    }
}