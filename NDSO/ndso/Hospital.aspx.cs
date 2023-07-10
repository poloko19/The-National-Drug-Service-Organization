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
    public partial class Hospital : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ESCF32O\SQLEXPRESS;Initial Catalog=Health;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        int Distance, Total;
        int Total_amount = 0;
        DataTable table = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {
                Namesi.Text = Session["Name"].ToString();
               // Sur.Text = Session["Surname"].ToString();
            }
            else
            {
                Response.Write("<script>alert('session is empty')</script>");
            }

            conn.Open();
            cmd.CommandText = "select * from Medications";
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.HasRows)
            {
            while(dr.Read())
            {
                Med.Items.Add(dr[1].ToString());
                //Medis.Text = dr[1].ToString();
            }
            }
                else
            {
            Response.Write("<script>alert('there are no rows')<script>");
            }
            if (!Page.IsPostBack)
            {
                if(ViewState["Records"]==null)
                {
                table.Columns.Add("Medication      ", typeof(string));
                table.Columns.Add("Quantity        ", typeof(string));
                table.Columns.Add("Medication Costs", typeof(string));
                table.Columns.Add("Distance        ", typeof(string));
                table.Columns.Add("Delivery Costs  ", typeof(string));
                table.Columns.Add("Total Cost      ", typeof(string));
                table.Columns.Add("Name            ", typeof(string));
                table.Columns.Add("Status        ", typeof(string));
                ViewState["Records"] = table;

                //table.Columns.Add("Medication      ", typeof(string));*/
            }
            }
            dr.Close();
        }



        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            int Qta = int.Parse(TextBox2.Text);
            int amou = int.Parse(Med_Cost.Text);
            int totals = 0;
             totals = Qta * amou;
            Med_Cost.Text = "";
            Med_Cost.Text = totals.ToString();
            
        }

        protected void Med_Cost_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
           
             Distance = int.Parse(TextBox4.Text);
             Total = int.Parse(Med_Cost.Text);
             int D_Cost = Distance * 5;
             int T_Cost = Total + D_Cost;
             TextBox5.Text = D_Cost.ToString();
             Total_Cost.Text = T_Cost.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == null || Med_Cost.Text == null || TextBox4.Text == null || TextBox5.Text == null || Total_Cost.Text == null)
            {
                Response.Write("<script>alert('Please fill all the fields')</script>");
                //Password.Text = "";
            }
            else
            {
                if (Session["Name"] != null)
                {
                    String Status = "Pending";
                    String Name = Session["Name"].ToString();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "insert into Orders values('" + Med.SelectedItem.Value + "','" + TextBox2.Text + "','" + Med_Cost.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + Total_Cost.Text + "','" + Status + "','" + Name + "')";
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Registered Successfully')</script>");
                    TextBox2.Text = "";
                    Med_Cost.Text = "";
                    TextBox4.Text = "";
                    TextBox5.Text = "";
                    Total_Cost.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Session is empty')</script>");
                }

            }
        }





        protected void Med_list_SelectedIndexChanged1(object sender, EventArgs e)
        {
            TextBox2.Text = "";
            
            Response.Write("<script>alert('Please enter quantity of a product')</script>");
            

        }

        protected void Med_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            cmd.CommandText = "select * from Medications where Medication='" + Med.SelectedItem.Value + "'";
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                { 
                Med_Cost.Text=dr[3].ToString();
                }
            }
            dr.Close();
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            String Status = "Pending";
            String Name = "Ramakamole";
            table=(DataTable)ViewState["Records"];
            table.Rows.Add(Med.SelectedItem.Value,TextBox2.Text,Med_Cost.Text,TextBox4.Text,TextBox5.Text,Total_Cost.Text,Name,Status);
            GridView1.DataSource = table;
            GridView1.DataBind();
            TextBox2.Text = "";
            Med_Cost.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            Total_Cost.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            foreach (GridViewRow GV in GridView1.Rows)
            {
                cmd.CommandText = "insert into Orders values('" + GV.Cells[0].Text + "','" + GV.Cells[1].Text + "','" + GV.Cells[2].Text + "','" + GV.Cells[3].Text + "','" + GV.Cells[4].Text +"','" + GV.Cells[5].Text + "','" + GV.Cells[6].Text + "','" + GV.Cells[7].Text + "')";
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Registered Successfully')</script>");
            }
            }
    }
        }
        

