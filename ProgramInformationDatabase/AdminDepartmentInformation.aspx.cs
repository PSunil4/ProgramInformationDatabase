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
    public partial class AdminDepartmentInformation : System.Web.UI.Page
    {
        String connectionString = "Data Source=Panchal\\SQLExpress;Initial Catalog=program_information_database;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DepartmentInformationSubmitBtn_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(connectionString);
            connection.Open();

            int ChairMemberIDTxt = Convert.ToInt32(ChairMemberIDTxtBox.Text);

            SqlCommand cmdAdminDepartmentInfo = new SqlCommand("INSERT INTO DepartmentInformation (DepartmentCode, DepartmentName, Chair_FCI_MemberID, SchoolCode)" +
                                                                    "VALUES (@departmentcode, @departmentname, @chairmemberID, @schoolcode)", connection);

            cmdAdminDepartmentInfo.Parameters.AddWithValue("@departmentcode", DepartmentCodeTxtBox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@departmentname", DepartmentNameTxtBox.Text);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@chairmemberID", ChairMemberIDTxt);
            cmdAdminDepartmentInfo.Parameters.AddWithValue("@schoolcode", SchoolCodeTxtBox.Text);

            cmdAdminDepartmentInfo.ExecuteNonQuery();
        }
    }
}