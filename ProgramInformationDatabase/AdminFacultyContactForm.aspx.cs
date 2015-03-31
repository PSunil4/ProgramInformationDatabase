using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

    public partial class AdminFacultyContactForm : System.Web.UI.Page
    {
        String connectionString = "Data Source=Panchal\\SQLExpress;Initial Catalog=program_information_database;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdminFacultySubmitBtn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            int ExtensionTxt = 0;

            if (!ExtensionTxtbox.Text.Equals(""))
            {
                ExtensionTxt = Convert.ToInt32(ExtensionTxtbox.Text);
            }

            SqlCommand cmdAdminDepartmentInfo = new SqlCommand("INSERT INTO FacultyContactInformation (FCI_MemberID,FirstName, LastName, Email, PhoneNumber, Extension, Role)" +
                                                                    "VALUES (@FCI_MemberID, @firstname, @lastname, @email, @phonenumber, @extension, @role)", connection);

            cmdAdminDepartmentInfo.Parameters.AddWithValue("@FCI_MemberID", FacultyMemberTxtBox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@firstname", FirstNameTxtBox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@lastname", LastNameTxtBox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@email", EmailTxtBox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@phonenumber", PhoneNumberTxtbox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@extension", ExtensionTxt);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@role", RoleTxtBox.Text);

            cmdAdminDepartmentInfo.ExecuteNonQuery();

        }
    }
