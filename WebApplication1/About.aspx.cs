using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Windows.Controls;

namespace WebApplication1
{
    public partial class About : System.Web.UI.Page
    {

        // conn1 As New OleDbConnection("");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetScudleDates();
            }
        }
        SqlConnection connection = new SqlConnection("Data Source=MO7AMED7OSSAM;Initial Catalog=Arak_Dental_Clinic;Integrated Security=True;Encrypt=True;trustservercertificate=true");

        void GetScudleDates()
        {
            SqlCommand commend = new SqlCommand("Select ID , NAME, DATE , TIME from Patient_Personal_Data order by ID ASC", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button23_Click(object sender, EventArgs e)
        {
            SqlCommand commend = new SqlCommand("Select ID , NAME , DATE , TIME from Patient_Personal_Data order by ID ASC", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button25_Click(object sender, EventArgs e)
        {
            string DATE = TextBox3.Text;
            SqlCommand commend = new SqlCommand("Select NAME , DATE , TIME from Patient_Personal_Data where DATE = '" + DATE + "' order by ID ASC", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button26_Click(object sender, EventArgs e)
        {
            string DATE = TextBox3.Text;
            float TIME = float.Parse(TextBox2.Text);
            SqlCommand commend = new SqlCommand("Select NAME , DATE , TIME from Patient_Personal_Data where DATE = '" + DATE + "' AND TIME = '" + TIME + "' order by ID ASC", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button22_Click(object sender, EventArgs e)
        {
            SqlCommand commend = new SqlCommand("Select NAME , DATE , TIME from Patient_Personal_Data", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {

        }


        protected void Button24_Click(object sender, EventArgs e)
        {
           

            //SqlCommand commend = new SqlCommand("Select NAME , DATE , TIME from Patient_Personal_Data", connection);
            //SqlDataAdapter sd = new SqlDataAdapter(commend);
            //DataTable dt = new DataTable();
            //sd.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
        }



        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}