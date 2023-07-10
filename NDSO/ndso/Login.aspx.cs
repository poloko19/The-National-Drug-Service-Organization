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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-ESCF32O\SQLEXPRESS;Initial Catalog=Health;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Emails.Text != "" || Password.Text != "")
            {
                conn.Open();
                cmd.CommandText = "select * from Registration where Username='" + Emails.Text + "' and Password='" + Passwords.Text + "'";
                cmd.Connection = conn;
                sda.SelectCommand = cmd;
                SqlDataReader dr = cmd.ExecuteReader();

                // sda.Fill(ds, "Companies");
                //if (ds.Tables[0].Rows.Count == 1)
                if (dr.HasRows)
                {
                    if (dr.Read())
                    {
                        if (dr[4].Equals("Pharmacist"))
                        {
                            //Session["Email"] = Emails.Text;
                            Session["Name"] = dr[0];
                            Session["Surname"] = dr[1];
                            Session["Pass"] = dr[6];
                            Response.Write("<script>alert('logged successfully');</script>");
                            Server.Transfer("Admin.aspx");
                        }
                        else if (dr[4].Equals("Admin"))
                        {
                            Session["Name"] = dr[0];
                            Session["Surname"] = dr[1];
                            Session["Pass"] = dr[6];
                            Response.Write("<script>alert('logged successfully');</script>");
                            Server.Transfer("Administration.aspx");
                            dr.Close();
                        }
                        
                            else
                            {
                                Response.Write("<script>alert('Ha hona le letho');</script>");
                            }
                        }
                    }
                    else
                    {
                        dr.Close();
                        cmd.CommandText = "select * from Companies where Email='" + Emails.Text + "' and Password='" + Passwords.Text + "'";
                        cmd.Connection = conn;
                        sda.SelectCommand = cmd;
                        SqlDataReader sdr = cmd.ExecuteReader();
                        if (sdr.HasRows)
                        {
                            if (sdr.Read())
                            {
                                Session["Name"] = sdr[0];
                                Session["Address"] = sdr[1];
                                Session["Pass"] = sdr[4];
                                Response.Write("<script>alert('logged successfully');</script>");
                                Server.Transfer("Hospital.aspx");
                            }
                            else
                            {
                                Response.Write("<script>alert('ha eya khona');</script>");
                            }

                            //Response.Write("<script>alert('Enter both Email and Password')</script>");
                        }
                    }
                }
                else
                {
                 

            }
        }
    }
}