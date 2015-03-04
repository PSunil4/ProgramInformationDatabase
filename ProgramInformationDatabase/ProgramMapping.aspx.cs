using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class ProgramMapping : System.Web.UI.Page
{
    
    String connectionString = "Data Source=SHAKTI\\SQLEXPRESS;Initial Catalog=program_information_database;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();
        SqlCommand cmd = new SqlCommand("select programCode from ProgramInformation", connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        connection.Close();

        programCodeDropDown.DataSource = ds;
        programCodeDropDown.DataTextField = "ProgramCode";
        programCodeDropDown.DataValueField = "ProgramCode";
        programCodeDropDown.DataBind();
        programCodeDropDown.Items.Insert(0, new ListItem("--Select--", "0"));

        programNameTxtbox.Items.Insert(0, new ListItem("--Select--", "0"));

        programNameTxtbox.Text = "working?";
//        ddlRegion.Items.Insert(0, new ListItem("--Select--", "0"));        
    }

    protected void selectedProgramCodeChange(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();
        String programCodeDD = programCodeDropDown.SelectedValue;
        SqlCommand cmd = new SqlCommand("select ProgramName from ProgramInformation where programcode='" + programCodeDD + "'", connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        connection.Close();

        programNameTxtbox.DataSource = ds;
        programNameTxtbox.DataTextField = "ProgramName";
        programNameTxtbox.DataValueField = "ProgramName";
        programNameTxtbox.DataBind();
        programNameTxtbox.Items.Insert(0, new ListItem("--Select--", "0"));
    }
}