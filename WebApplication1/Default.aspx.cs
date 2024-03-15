using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Net;
using System.Security.Policy;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Xml.Linq;




namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                GetPatientList(); 
                GetPatienMedicaltList2();
                GetPatienDentalltList3();
                GetPatientClincal4();
            }
        }

        protected void TextBox17_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox22_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
  
        SqlConnection connection = new SqlConnection("Data Source=MO7AMED7OSSAM;Initial Catalog=Arak_Dental_Clinic;Integrated Security=True;Encrypt=True;trustservercertificate=true");
        





        // -----------------------------  Personal Data  ----------------------------- //

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ID = int.Parse(TextBox1.Text);
            string NAME = TextBox2.Text;
            string PHONE = TextBox3.Text;
            string ADDRESS = TextBox4.Text;
            string OCCUPATION = TextBox5.Text;
            double AGE = double.Parse(TextBox6.Text);
            string JOINING_DATE = TextBox10.Text;
            string DATE = TextBox9.Text;
            double TIME = double.Parse(TextBox42.Text);
            string GENDER = RadioButtonList1.SelectedValue;
            int DINTEST_ID = int.Parse(TextBox8.Text);
            connection.Open();
            SqlCommand commendtocheak = new SqlCommand("Select ID from Patient_Personal_Data where ID = '"+ID+"'" , connection); 
            SqlDataAdapter sd = new SqlDataAdapter(commendtocheak);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            if (dt.Rows.Count >  0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('ID is already exist');", true);
            }
            else
            {
                SqlCommand commend = new SqlCommand("Insert into Patient_Personal_Data values ('" + ID + "','" + NAME + "','" + PHONE + "','" + ADDRESS + "','" + OCCUPATION + "','" + AGE + "','" + JOINING_DATE + "','" + DATE + "','" + TIME + "','" + GENDER + "','" + DINTEST_ID + "')", connection);
                commend.ExecuteNonQuery();
                connection.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly saved');", true);
                GetPatientList();
            }
            
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int ID = int.Parse(TextBox1.Text);
            string NAME = TextBox2.Text;
            string PHONE = TextBox3.Text;
            string ADDRESS = TextBox4.Text;
            string OCCUPATION = TextBox5.Text;
            double AGE = double.Parse(TextBox6.Text);
            string GENDER = RadioButtonList1.SelectedValue;
            int DINTEST_ID = int.Parse(TextBox8.Text);
            double TIME = double.Parse(TextBox42.Text);
            string DATE = TextBox9.Text;
            string JOINING_DATE = TextBox10.Text;
            connection.Open();
            SqlCommand commend = new SqlCommand("Update Patient_Personal_Data set ID = '" + ID + "', NAME = '" + NAME + "', PHONE = '" + PHONE + "', ADDRESS = '" + ADDRESS + "', OCCUPATION = '" + OCCUPATION + "', AGE = '" + AGE + "', JOINING_DATE = '" + JOINING_DATE + "', Date = '" + DATE + "', TIME = '" + TIME + "', GENDER = '" + GENDER + "', DINTEST_ID = '"+ DINTEST_ID + "' where NAME = '" +NAME+"'", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Updated');", true);
            GetPatientList();
        }
        void GetPatientList()
        {
            SqlCommand commend = new SqlCommand("Select ID , NAME , PHONE , ADDRESS , OCCUPATION , AGE , GENDER , DINTEST_ID , JOINING_DATE , DATE , TIME from Patient_Personal_Data order by Id", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //int ID = int.Parse(TextBox1.Text);
            string NAME = TextBox2.Text;
            connection.Open();
            SqlCommand commend = new SqlCommand("Delete from Patient_Personal_Data where NAME = '" + NAME +"'", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Deleted');", true);
            GetPatientList();
        }
        // -------------  Search Button ------------------ //
        protected void Button4_Click(object sender, EventArgs e)
        {
            //int ID = int.Parse(TextBox1.Text);
            string NAME = TextBox2.Text;
            SqlCommand commend = new SqlCommand("Select ID , NAME , PHONE , ADDRESS , OCCUPATION , AGE , GENDER , DINTEST_ID , JOINING_DATE , DATE , TIME from Patient_Personal_Data where NAME = '" + NAME+ "' order by ID", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        // ------------------ Cases ------------------ //
        protected void Button7_Click(object sender, EventArgs e)
        {
            int DINTEST_ID = int.Parse(TextBox8.Text);
            SqlCommand commend = new SqlCommand("Select ID , NAME , PHONE , ADDRESS , OCCUPATION , AGE , GENDER , DINTEST_ID , JOINING_DATE , DATE , TIME from Patient_Personal_Data where DINTEST_ID = '" + DINTEST_ID + "' order by Id", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        // --------------- LOAD ------------------- //
        protected void Button5_Click(object sender, EventArgs e)
        {
            GetPatientList();
        }












        //  --------------------------  Medical History  ---------------------------  //



        // ---------- INSERT MEDICAL HISTORY --------- //
        protected void Button8_Click(object sender, EventArgs e)
        {
            string Previous_Surgeries = TextBox11.Text;
            string operation_TY = TextBox12.Text;
            string operation_date = TextBox13.Text;
            string Operator_Name = TextBox14.Text;
            string Medications = TextBox15.Text;
            string Medications_TY = TextBox27.Text;
            string Patient_Name = TextBox26.Text;
            string Chronic_Diseases = TextBox17.Text;
            string Diseases_TY = TextBox18.Text;
            string Medication_for_it = TextBox28.Text;
            string BreakFast = TextBox19.Text;
            string Meuserments = TextBox29.Text;
            string Accidents = TextBox20.Text;
            string DateofAcceidents = TextBox21.Text;
            string RecentHistory = TextBox30.Text;
            string Smoker = RadioButtonList2.SelectedValue;
            connection.Open();
            SqlCommand commend = new SqlCommand("Insert into Patient_Medical_History values ('" + Previous_Surgeries + "','" + operation_TY + "','" + operation_date + "','" + Operator_Name + "','" + Medications + "','" + Medications_TY + "','" + Patient_Name + "','" + Chronic_Diseases + "','" + Diseases_TY + "','" + Medication_for_it + "','" + BreakFast + "','" + Meuserments + "','" + Accidents + "','" + DateofAcceidents + "','" + RecentHistory + "' , '"+Smoker+"')", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly saved in Medical History');", true);
            GetPatienMedicaltList2();
        }

        // --------------------------- UPDATE MEDICAL HISTORY --------------------------- // 
        protected void Button9_Click(object sender, EventArgs e)
        {
            string Previous_Surgeries = TextBox11.Text;
            string operation_TY = TextBox12.Text;
            string operation_date = TextBox13.Text;
            string Operator_Name = TextBox14.Text;
            string Medications = TextBox15.Text;
            string Medications_TY = TextBox27.Text;
            string Patient_Name = TextBox26.Text;
            string Chronic_Diseases = TextBox17.Text;
            string Diseases_TY = TextBox18.Text;
            string Medication_for_it = TextBox28.Text;
            string BreakFast = TextBox19.Text;
            string Meuserments = TextBox29.Text;
            string Accidents = TextBox20.Text;
            string DateofAcceidents = TextBox21.Text;
            string RecentHistory = TextBox30.Text;
            string Smoker = RadioButtonList2.SelectedValue;
            connection.Open();
            SqlCommand commend = new SqlCommand("Update Patient_Medical_History set Previous_Surgeries = '" + Previous_Surgeries + "', operation_TY = '" + operation_TY + "', operation_date = '" + operation_date + "', Operator_Name = '" + Operator_Name + "', Medications = '" + Medications + "', Medications_TY = '" + Medications_TY + "', Patient_Name = '" + Patient_Name + "', Chronic_Diseases = '" + Chronic_Diseases + "', Diseases_TY = '" + Diseases_TY + "', Medication_for_it = '" + Medication_for_it + "', BreakFast = '" + BreakFast + "', Meuserments = '" + Meuserments + "', Accidents = '" + Accidents + "', DateofAcceidents = '" + DateofAcceidents + "' , RecentHistoru = '" + RecentHistory + "' , Smoker = '"+Smoker+"' where Patient_Name = '" + Patient_Name + "'", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Updated');", true);
            GetPatienMedicaltList2();
        }
        void GetPatienMedicaltList2()
        {
            SqlCommand commend = new SqlCommand("Select Patient_Name,Previous_Surgeries,Chronic_Diseases,Medications,Accidents,Meuserments,Smoker from Patient_Medical_History order by Patient_Name", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Button10_Click(object sender, EventArgs e)
        {
            string Patient_Name = TextBox26.Text;
            SqlCommand commend = new SqlCommand("Select Patient_Name,Previous_Surgeries,Chronic_Diseases,Medications,Accidents,Meuserments,Smoker from Patient_Medical_History where Patient_Name = '" + Patient_Name + "' order by Patient_Name", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Button11_Click(object sender, EventArgs e)
        {
            string Patient_Name = TextBox26.Text;
            connection.Open();
            SqlCommand commend = new SqlCommand("Delete from Patient_Medical_History where Patient_Name = '" + Patient_Name + "'" , connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Deleted');", true);
            GetPatienMedicaltList2();
        }
        protected void Button12_Click(object sender, EventArgs e)
        {
            GetPatienMedicaltList2();
        }













        // ------------------------------------    DENTAL HISTORY   ------------------------------- //



        void GetPatienDentalltList3()
        {
            SqlCommand commend = new SqlCommand("Select Patient_Name , First_Visit , Last_operation , Allergies , Brush_Teeth , ABOUT , Notes from Patient_Dental_History order by Patient_Name", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            string First_Visit = TextBox22.Text;
            string Last_operation = TextBox31.Text;
            string Allergies = TextBox23.Text;
            string Brush_Teeth = TextBox24.Text;
            string Notes = TextBox32.Text;
            string ABOUT = TextBox25.Text;
            string Patient_Name = TextBox33.Text;
            connection.Open();
            SqlCommand commend = new SqlCommand("Insert into Patient_Dental_History values ('" + First_Visit + "','" + Last_operation + "','" + Allergies + "','" + Brush_Teeth + "','" + Notes + "','" + ABOUT + "','" + Patient_Name + "')", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly saved in Dental History');", true);
            GetPatienDentalltList3();
        }
        protected void Button17_Click(object sender, EventArgs e)
        {
            GetPatienDentalltList3();
        }

        
        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox13_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox26_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            string First_Visit = TextBox22.Text;
            string Last_operation = TextBox31.Text;
            string Allergies = TextBox23.Text;
            string Brush_Teeth = TextBox24.Text;
            string Notes = TextBox32.Text;
            string ABOUT = TextBox25.Text;
            string Patient_Name = TextBox33.Text;
            connection.Open();
            SqlCommand commend = new SqlCommand("Update Patient_Dental_History set First_Visit = '" + First_Visit + "',Last_operation = '" + Last_operation + "',Allergies = '" + Allergies + "',Brush_Teeth = '" + Brush_Teeth + "',Notes = '" + Notes + "',ABOUT = '" + ABOUT + "',Patient_Name = '" + Patient_Name + "' where Patient_Name = '" + Patient_Name + "'", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Updated in Dental History');", true);
            GetPatienDentalltList3();
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            string Patient_Name = TextBox33.Text;
            SqlCommand commend = new SqlCommand("Select Patient_Name , First_Visit , Last_operation , Allergies , Brush_Teeth  , Notes , ABOUT from Patient_Dental_History where Patient_Name = '" + Patient_Name + "'", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            string Patient_Name = TextBox33.Text;
            connection.Open();
            SqlCommand commend = new SqlCommand("Delete from Patient_Dental_History where Patient_Name = '" + Patient_Name + "'", connection);
            commend.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfuly Deleted from Dental History');", true);
            GetPatienDentalltList3();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
        }


        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
        }

        protected void Button18_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile && FileUpload2.HasFile && FileUpload3.HasFile && FileUpload4.HasFile && FileUpload6.HasFile && FileUpload7.HasFile)
            {
                string linkpath1 = "Endo_Charts_Photos/" + System.IO.Path.GetFileName(FileUpload1.FileName);
                string linkpath2 = "Diagnoses_Chart_Photos/" + System.IO.Path.GetFileName(FileUpload2.FileName);
                string linkpath3 = "X_Rays_Photos/" + System.IO.Path.GetFileName(FileUpload3.FileName);
                string linkpath4 = "Intraoral_photos/" + System.IO.Path.GetFileName(FileUpload4.FileName);
                string linkpath6 = "Prescription_photos/" + System.IO.Path.GetFileName(FileUpload6.FileName);
                string linkpath7 = "Consets_Photos/" + System.IO.Path.GetFileName(FileUpload7.FileName);
                connection.Open();
                string query = "INSERT INTO Clinical_Examnation VALUES (@Swelling_Site,@Chief_complaint,@TTT_Plan,@Patient_Name,@Endo_Chart,@Diagnosis_Chart,@X_rays,@Extra_Intraoral,@Prescription,@Consent)";
                SqlCommand command = new SqlCommand(query, connection);
                FileUpload1.SaveAs(Server.MapPath("~/Endo_Charts_Photos/") + System.IO.Path.GetFileName(FileUpload1.FileName));
                FileUpload2.SaveAs(Server.MapPath("~/Diagnoses_Chart_Photos/") + System.IO.Path.GetFileName(FileUpload2.FileName));
                FileUpload3.SaveAs(Server.MapPath("~/X_Rays_Photos/") + System.IO.Path.GetFileName(FileUpload3.FileName));
                FileUpload4.SaveAs(Server.MapPath("~/Intraoral_photos/") + System.IO.Path.GetFileName(FileUpload4.FileName));
                FileUpload6.SaveAs(Server.MapPath("~/Prescription_photos/") + System.IO.Path.GetFileName(FileUpload6.FileName));
                FileUpload7.SaveAs(Server.MapPath("~/Consets_Photos/") + System.IO.Path.GetFileName(FileUpload7.FileName));
                command.Parameters.AddWithValue("@Swelling_Site", TextBox34.Text);
                command.Parameters.AddWithValue("@Chief_complaint", TextBox36.Text);
                command.Parameters.AddWithValue("@TTT_Plan", TextBox40.Text);
                command.Parameters.AddWithValue("@Patient_Name", TextBox41.Text);
                command.Parameters.AddWithValue("@Endo_Chart", linkpath1);
                command.Parameters.AddWithValue("@Diagnosis_Chart", linkpath2);
                command.Parameters.AddWithValue("@X_rays", linkpath3);
                command.Parameters.AddWithValue("@Extra_Intraoral", linkpath4);
                command.Parameters.AddWithValue("@Prescription", linkpath6);
                command.Parameters.AddWithValue("@Consent", linkpath7);
                command.ExecuteNonQuery();
                connection.Close();
            }
            MessageBox.Show("Add Successful!");
        }
        void GetPatientClincal4()
        {
            SqlCommand commend = new SqlCommand("Select Patient_Name , Chief_complaint , TTT_Plan , Swelling_Site  from Clinical_Examnation", connection);
            SqlDataAdapter sd = new SqlDataAdapter(commend);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView6.DataSource = dt;
            GridView6.DataBind();
        }

        protected void Button19_Click(object sender, EventArgs e)
        {

        }

        protected void Button20_Click(object sender, EventArgs e)
        {

        }

        protected void Button21_Click(object sender, EventArgs e)
        {

        }

        protected void Button22_Click(object sender, EventArgs e)
        {

        }

        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView4_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }

        protected void GridView5_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView5_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}