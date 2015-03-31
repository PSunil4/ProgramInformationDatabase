using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ProgramInformationDatabase
{
    public partial class AdminSchoolInformation : System.Web.UI.Page
    {
        String connectionString = "Data Source=Shakti\\SQLExpress;Initial Catalog=program_information_database;Integrated Security=True";

       // String connectionString = GetDatabaseConnectionString();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string GetDatabaseConnectionString()
        {
            System.Data.SqlClient.SqlConnectionStringBuilder builder = new System.Data.SqlClient.SqlConnectionStringBuilder();
            builder.DataSource = "localhost";
            builder.InitialCatalog = "program_information_database";
            builder.IntegratedSecurity = true;
            builder.AsynchronousProcessing = true;

            string ConnectionString = builder.ConnectionString;
            builder = null;

            return ConnectionString;
        }

        protected void AdminSchoolInfobtnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            int DeanIdTxt = Convert.ToInt32(DeanIdTxtbox.Text);

            SqlCommand cmdSchoolInformation = new SqlCommand("INSERT INTO SchoolInformation (SchoolCode, SchoolName, Description, Dean_FCI_MemberID, StartDate, EndDate)" +
                                                                    "VALUES (@SchoolCode, @SchoolName, @Description, @Dean_FCI_MemberID, @StartDate, @EndDate)", connection);

            cmdSchoolInformation.Parameters.AddWithValue("@SchoolCode", SchoolCodeTxtbox.Text);
            cmdSchoolInformation.Parameters.AddWithValue("@SchoolName", SchoolNameTxtbox.Text);
            cmdSchoolInformation.Parameters.AddWithValue("@Description", DescriptionTxtbox.Text);
            cmdSchoolInformation.Parameters.AddWithValue("@Dean_FCI_MemberID", DeanIdTxt);
            cmdSchoolInformation.Parameters.AddWithValue("@StartDate", StartDateTxtbox.Text);
            cmdSchoolInformation.Parameters.AddWithValue("@EndDate", EndDateTxtBox.Text);

            cmdSchoolInformation.ExecuteNonQuery();
        }
    }
}