using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace NDSO.ndso
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ESCF32O\SQLEXPRESS;Initial Catalog=Health;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Name.Text==null||Address.Text==null||Email.Text==null||License.Text==null||Password.Text==null)
            {
                Response.Write("<script>alert('Please fill all the fields')</script>");
            //Password.Text = "";
            }
            else
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Companies values('" + Name.Text + "','" + Address.Text + "','" + Email.Text + "','" + License.Text + "','" + Password.Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registered Successfully')</script>");
                Name.Text = "";
                Address.Text = "";
                Email.Text = "";
                License.Text = "";
            
            }

        }
    }
}