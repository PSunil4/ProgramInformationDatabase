using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;


public partial class ProgramMapping : System.Web.UI.Page
{
    String connectionString = "Data Source=Shakti\\SQLExpress;Initial Catalog=program_information_database;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {

 //       RegisterTrigger(modelRouteFileUpload);

        if (!IsPostBack)
        {
            bindProgramCodeDropDown();
        }
    }

    public void RegisterTrigger(Control c)
    {
        ScriptManagerProgramMapping.RegisterPostBackControl(c);
    }

    protected void bindProgramCodeDropDown()
    {
        //establish a connection based on the string
        SqlConnection connection = new SqlConnection(connectionString);
        //open the connection to the database
        connection.Open();
        //SQL query to get the program code from program information database
        SqlCommand cmdGetProgramCode = new SqlCommand("select programCode from ProgramInformation", connection);
        SqlCommand cmdGetSchoolCode = new SqlCommand("select SchoolCode from SchoolInformation", connection);

        //convert the command from string to sql query
        SqlDataAdapter adapterProgramCode = new SqlDataAdapter(cmdGetProgramCode);
        SqlDataAdapter adapterSchoolCode = new SqlDataAdapter(cmdGetSchoolCode);

        //storing the information reterived from the database
        DataSet dsProgramCode = new DataSet();
        DataSet dsSchoolCode = new DataSet();

        adapterProgramCode.Fill(dsProgramCode);
        adapterSchoolCode.Fill(dsSchoolCode);

        connection.Close();

        //setting up the datasource for the "program code dropdown list"
        programCodeDropDown.DataSource = dsProgramCode;
        schoolCodeDropDown.DataSource = dsSchoolCode;

        //setting up the text atttribute for the dropdown list
        programCodeDropDown.DataTextField = "ProgramCode";
        schoolCodeDropDown.DataTextField = "schoolcode";
        //setting up the value atttribute for the dropdown list
        programCodeDropDown.DataValueField = "ProgramCode";
        schoolCodeDropDown.DataValueField = "schoolcode";
        //bind the data to the dropdown list
        programCodeDropDown.DataBind();
        schoolCodeDropDown.DataBind();

        //initialize the first value of the dropdown for program code
        programCodeDropDown.Items.Insert(0, new ListItem("Select Program Code", "0"));
        programNameDropDown.Items.Insert(0, new ListItem("Select Program Name", "0"));
        programClusterDropDown.Items.Insert(0, new ListItem("Select A Cluster", "0"));
        schoolCodeDropDown.Items.Insert(0, new ListItem("Select School Code", "0"));
        departmentCodeDropDown.Items.Insert(0, new ListItem("Select Deparment Name", "0"));

    }

    protected void selectedProgramCodeChange(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();

        String getProgramCodeVlu = programCodeDropDown.SelectedValue;
        SqlCommand cmdGetClusterAndProgramName = new SqlCommand("select ProgramName, cluster from ProgramInformation where ProgramCode=" + getProgramCodeVlu, connection);
        SqlDataAdapter daClusterAndProgramName = new SqlDataAdapter(cmdGetClusterAndProgramName);
       
        DataSet dsClusterAndProgramName = new DataSet();
        daClusterAndProgramName.Fill(dsClusterAndProgramName);
        connection.Close();

        programNameDropDown.DataSource = dsClusterAndProgramName;
        programClusterDropDown.DataSource = dsClusterAndProgramName;

        programNameDropDown.DataTextField = "ProgramName";
        programNameDropDown.DataValueField = "ProgramName";
        programClusterDropDown.DataTextField = "cluster";
        programClusterDropDown.DataValueField = "cluster";

        programNameDropDown.DataBind();
        programClusterDropDown.DataBind();

        //programNameTxtbox.Items.Insert(0, new ListItem("Select Program Name", "0"));
        //programClusterDropDown.Items.Insert(0, new ListItem("Select A Cluster", "0"));
    }

    protected void SelectedSchoolCodeChange(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();

        String getScholCodeVlu = schoolCodeDropDown.SelectedValue;
        SqlCommand cmdGetDepartmentCode = new SqlCommand("select departmentcode from DepartmentInformation where SchoolCode='" + getScholCodeVlu + "'", connection);
        SqlDataAdapter daDepartmentCode = new SqlDataAdapter(cmdGetDepartmentCode);

        DataSet dsDepartmentCode = new DataSet();
        daDepartmentCode.Fill(dsDepartmentCode);
        connection.Close();

        departmentCodeDropDown.DataSource = dsDepartmentCode;

        departmentCodeDropDown.DataTextField = "departmentCode";
        departmentCodeDropDown.DataValueField = "departmentCode";

        departmentCodeDropDown.DataBind();

        //departmentCodeDropDown.Items.Insert(0, new ListItem("Select Deparment Name", "0"));
        //programClusterDropDown.Items.Insert(0, new ListItem("Select A Cluster", "0"));
    }

    protected void ProgramMappingSubmitBtn_Click(object sender, EventArgs e)
    {
        SqlConnection connection = new SqlConnection(connectionString);
        connection.Open();

        int CAQLeadIDTxt = Convert.ToInt32(CAQLeadIDTxtBox.Text);
        //String query = "INSERT INTO ProgramMapping VALUES ('" +1+ "', '" + schoolCodeDropDown.SelectedValue + "', '" + departmentCodeDropDown.SelectedValue + "', '" +
        //                                                        programCodeDropDown.SelectedValue + "', '" + PrimaryProgramContactTxtBox.Text + "', '" +
        //                                                        CAQLeadIDTxt + "', '" + ProgramMapDescripTxtBox.Text + "')";

        SqlCommand cmdStoreProgramMapping = new SqlCommand("INSERT INTO ProgramMapping (SchoolCode, DepartmentCode, ProgramCode, PrimaryProgramContact, CAQLeadID, MapDescription)" + 
                                                                "VALUES (@schoolcode, @deparmentcode, @programcode, @primarycontact, @caqlead, @mapdescription)", connection);

        cmdStoreProgramMapping.Parameters.AddWithValue("@schoolcode", schoolCodeDropDown.SelectedValue);
        cmdStoreProgramMapping.Parameters.AddWithValue("@deparmentcode", departmentCodeDropDown.SelectedValue);
        cmdStoreProgramMapping.Parameters.AddWithValue("@programcode", programCodeDropDown.SelectedValue);
        cmdStoreProgramMapping.Parameters.AddWithValue("@primarycontact", PrimaryProgramContactTxtBox.Text);
        cmdStoreProgramMapping.Parameters.AddWithValue("@caqlead", CAQLeadIDTxt);
        cmdStoreProgramMapping.Parameters.AddWithValue("@mapdescription", ProgramMapDescripTxtBox.Text);

        cmdStoreProgramMapping.ExecuteNonQuery();


      
        
        if (modelRouteFileUpload.PostedFile != null && MappingDocumentFile.PostedFile != null && mappingAnalysisFileUpload.PostedFile != null)
        {
            string fileNameModelRoute = System.IO.Path.GetFileName(modelRouteFileUpload.PostedFile.FileName);
            string fileNameMappingDocument = System.IO.Path.GetFileName(MappingDocumentFile.PostedFile.FileName);
            string fileNameMappingAnalysis = System.IO.Path.GetFileName(mappingAnalysisFileUpload.PostedFile.FileName);

            String ModelRouteFileType = "ModelRoute";
            String MappingDocumentFileType = "MappingDocument";
            String MappingAnalysisFileType = " MappingAnalysis";

            string SaveLocationMR = Server.MapPath("~/UploadedFiles") + "\\" + "(" + ModelRouteFileType + ") " + fileNameModelRoute;
            string SaveLocationMD = Server.MapPath("~/UploadedFiles") + "\\" + "(" + fileNameMappingDocument + ") " + MappingDocumentFileType;
            string SaveLocationMA = Server.MapPath("~/UploadedFiles") + "\\" + "(" + MappingAnalysisFileType + ") " + fileNameMappingAnalysis;

            try
            {
                modelRouteFileUpload.PostedFile.SaveAs(SaveLocationMR);
                MappingDocumentFile.PostedFile.SaveAs(SaveLocationMD);
                mappingAnalysisFileUpload.PostedFile.SaveAs(SaveLocationMA);

                Response.Write("The file has been uploaded.");
            }

            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message);
                //Note: Exception.Message returns detailed message that describes the current exception. 
                //For security reasons, we do not recommend you return Exception.Message to end users in 
                //production environments. It would be better just to put a generic error message. 
            }

            // Track Mapping

            SqlCommand cmdStoreTrackMapping = new SqlCommand(@"INSERT INTO TrackMapping (Purpose , ModelRouteFileName, ModelRouteFileType, ModelRoute, AcademicYear, MappingDocumentFileName, MappingDocumentFileType, MappingDocuments, TypesOfMap, Source, MappingDocumentDate, MappingAnalysisFileName, MappingAnalysisFileType, ProgramMappingAnalysis, MappingAnalysisDate, MappingOutcome )" +
                                                                    "VALUES (@purpose , @ModelRouteFileName, @modelRouteFileType, @modelRouteFileUpload, @ModelRouteAcadYear, @MappingDocumentFileName, @MappingDocumentFileType, @MappingDocumentDoc, @typeOfMap, @ProgramOutcomeSource, @MappingCompleteDate, @MappingAnalysisFileName, @MappingAnalysisFileType, @programMappingAnalysisDoc, @analysisDateComplete, @mappingOutcome)", connection);

            cmdStoreTrackMapping.Parameters.AddWithValue("@purpose", PurposeDrpdown.SelectedValue);

            cmdStoreTrackMapping.Parameters.AddWithValue("@ModelRouteFileName", fileNameModelRoute);
            cmdStoreTrackMapping.Parameters.AddWithValue("@modelRouteFileUpload", SaveLocationMR);
            cmdStoreTrackMapping.Parameters.AddWithValue("@modelRouteFileType", ModelRouteFileType);

            cmdStoreTrackMapping.Parameters.AddWithValue("@ModelRouteAcadYear", AcademicYearTxtBox.Text);


            cmdStoreTrackMapping.Parameters.AddWithValue("@MappingDocumentFileName", fileNameMappingDocument);
            cmdStoreTrackMapping.Parameters.AddWithValue("@MappingDocumentDoc", SaveLocationMD);
            cmdStoreTrackMapping.Parameters.AddWithValue("@MappingDocumentFileType", MappingDocumentFileType);

            cmdStoreTrackMapping.Parameters.AddWithValue("@typeOfMap", typeOfMapDropBox.SelectedValue);
            cmdStoreTrackMapping.Parameters.AddWithValue("@ProgramOutcomeSource", programOutcomeSourceDropdown.SelectedValue);
            cmdStoreTrackMapping.Parameters.AddWithValue("@MappingCompleteDate", MappinfDateComepleted.Text);


            cmdStoreTrackMapping.Parameters.AddWithValue("@MappingAnalysisFileName", fileNameMappingAnalysis);
            cmdStoreTrackMapping.Parameters.AddWithValue("@programMappingAnalysisDoc", SaveLocationMA);
            cmdStoreTrackMapping.Parameters.AddWithValue("@MappingAnalysisFileType", MappingAnalysisFileType);


            cmdStoreTrackMapping.Parameters.AddWithValue("@analysisDateComplete", DateComepletedAnalysis.Text);
            cmdStoreTrackMapping.Parameters.AddWithValue("@mappingOutcome", mappingOutcomeTxtbox.Text);

            cmdStoreTrackMapping.ExecuteNonQuery();
        }
    }
}
