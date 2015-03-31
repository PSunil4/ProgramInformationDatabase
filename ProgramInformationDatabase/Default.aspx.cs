using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String connectionString = "Data Source=Panchal\\SQLExpress;Initial Catalog=program_information_database;Integrated Security=True";
        SqlConnection sql = new SqlConnection(connectionString);
        
    }

    public int add(int num1, int num2)
    {
        return num1 + num2;
    }
}