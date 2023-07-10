using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.SessionState;


namespace NDSO.ndso
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ESCF32O\SQLEXPRESS;Initial Catalog=Health;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null && Session["Surname"]!=null)
            {
              Namesi.Text=Session["Name"].ToString();
              Sur.Text = Session["Surname"].ToString();
            }
            else 
            {
                Response.Write("<script>alert('session is empty')</script>");
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Medication.Text == "" || Quantity.Text == "" || Price.Text == "" || Expiry_Date.Text == "")
            {
                Response.Write("<script>alert('Please fill all the fields')</script>");
                //Password.Text = "";
            }
            else
            {
                if(Session["Pass"]!=null)
                {
                    Random random = new Random();
                    string rand = random.Next(100,999).ToString();
                string id = Session["Pass"].ToString();
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into Medications values('" + id + "','" + Medication.Text + "','" + Quantity.Text + "','" + Price.Text + "','" + Expiry_Date.Text + "','" + rand + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registered Successfully')</script>");
                Medication.Text ="";
                Quantity.Text = "";
                Price.Text = "";
                Expiry_Date.Text = "";
                }
                else
                {
                   Response.Write("eha");
                }
            }
        }
        }
}