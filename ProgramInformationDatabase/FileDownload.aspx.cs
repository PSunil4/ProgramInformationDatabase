using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace ProgramInformationDatabase
{
    public partial class FileDownload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

            foreach (string strFile in Directory.GetFiles(Server.MapPath("~/UploadedFiles")))
            {
                FileInfo fileInformation = new FileInfo(strFile);

                dt.Rows.Add(fileInformation.Name, fileInformation.Length, fileInformation.Extension);
            }

            GridViewFileDownload.DataSource = dt;
            GridViewFileDownload.DataBind();

        }



        protected void SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("Size", typeof(string));
            dt.Columns.Add("Type", typeof(string));

           foreach(string strFile in Directory.GetFiles(Server.MapPath("~/UploadedFiles/"))) 
           {

               FileInfo fileInformation = new FileInfo(strFile);

               if (fileInformation.Name.Contains(DropDownList2.SelectedValue))
               {
                   dt.Rows.Add(fileInformation.Name, fileInformation.Length, fileInformation.Extension);
               }

               
           }

           GridViewFileDownload.DataSource = dt;
           GridViewFileDownload.DataBind();
        }

        static double ConvertBytesToMegabytes(long bytes)
        {
            return (bytes / 1024) / 1024;
        }


        protected void GridViewFileDownload_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                Response.AppendHeader("content-disposition", "attachment;filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/UploadedFiles/") + e.CommandArgument);
                Response.End();
            }
        }


    }
}