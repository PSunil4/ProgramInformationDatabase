<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ProgramOutcome_Standards.aspx.cs" Inherits="ProgramOutcome_Standards" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
     <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

     <div class="container">
       <div class="row">
           
                <fieldset>
                    <legend>Program Outcome Form</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Program Code</label>
                             <asp:DropDownList ID="ProgramCodeDrpdown" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                 </div>

                      <div class="form-group">
                        <label class="col-sm-2 control-label">Type</label>
                             <asp:DropDownList ID="typeDropDown" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                 </div>

                     <div class="form-group">
                        <label class="col-sm-2 control-label">Source</label>
                        <input type="password" class="form-control" id="exampleInputwebsite" placeholder="Source" style="width: 300px" />
                                </div>

                      <div class="form-group">
                        <label class="col-sm-2 control-label">Date Published</label>
                        <input type="password" class="form-control" id="exampleInputdate" placeholder="Date Published" style="width: 300px" />
                            </div>


                         <div class="form-group">
                            <label class="col-sm-2 control-label">Date Approved</label>
                            <input type="password" class="form-control" id="exampleInputdate1" placeholder="Date Approved" style="width: 300px" />
                                </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label">File Upload</label>
                                <input type="file" id="exampleInputFile4" style="width: 300px;" />
                                <p class="col-sm-2 control-label" class="help-block">Upload Your File Here</p>
                            </div>
                     <div class="col-sm-7 control-label">
                                <button type="submit" class="btn btn-danger" style="width: 150px">Submit</button>
                            </div>


                </fieldset>
                   </div>
               </div> 
           </ContentTemplate>
      </asp:UpdatePanel>
</asp:Content>

