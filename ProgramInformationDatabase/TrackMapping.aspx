<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="TrackMapping.aspx.cs" Inherits="TrackMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

     <div class="container">
        <div class="row">
           
                <fieldset>
                    <legend>Track Mapping</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">School</label>
                           <asp:DropDownList ID="SchoolDrpdown" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                </div>

                      <div class="form-group">
                        <label class="col-sm-2 control-label">Department</label>
                           <asp:DropDownList ID="DepartmentDrpdown" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Program/Cluster</label>
                           <asp:DropDownList ID="ProgramDrpdown" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                </div>
                     <div class="form-group">
                        <label class="col-sm-2 control-label">Purpose</label>
                           <asp:DropDownList ID="PurposeDrpdown" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                </div>
                      <div class="form-group">
                        <label class="col-sm-2 control-label">Primary Program Contact</label>
                            <input type="text" class="form-control" id="ProgramContact" placeholder="Primary Program Contact" style="width: 300px" />
                                </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">CAQ Lead</label>
                            <input type="text" class="form-control" id="CAQLead" placeholder="CAQ Lead" style="width: 300px" />
                                </div>
                  
                                
                            <div class="form-group">
                                 <legend>Model Route</legend>
                                 <label class="col-sm-7 control-label">&nbsp;</label>
                                     <input type="file" id="exampleInputFile" style="width: 300px;"/>
                                      <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>
                                
                               <label class="col-sm-2 control-label">Academic Year</label>
                                    <input type="text" class="form-control" id="AcademicYear" placeholder="Academic Year" style="width: 300px" />
                                                </div> 

                                <div class="form-group">
                                 <label class="col-sm-7 control-label">&nbsp;</label>
                                     <input type="file" id="exampleInputFile1" style="width: 300px;"/>
                                      <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>
                                
                                <label class="col-sm-2 control-label">Academic Year</label>
                                    <input type="text" class="form-control" id="AcademicYear1" placeholder="Academic Year" style="width: 300px" />

                                        </div>  
                                   <div class="form-group">
                                 <label class="col-sm-7 control-label">&nbsp;</label>
                                     <input type="file" id="exampleInputFile2" style="width: 300px;"/>
                                      <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>
                                
                                 <label class="col-sm-2 control-label">Academic Year</label>
                                   <input type="text" class="form-control" id="AcademicYear2" placeholder="Academic Year" style="width: 300px" />
                                           </div>  


                                 <div class="form-group">
                                 <legend>Mapping Documents</legend>
                                 <label class="col-sm-7 control-label">&nbsp;</label>
                                     <input type="file" id="exampleInputFile4" style="width: 300px;"/>
                                      <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>
                                
                            <div class="form-group">
                        <label class="col-sm-2 control-label">Type of Map</label>
                           <asp:DropDownList ID="DropDownList1" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                </div>


                       <div class="form-group">
                        <label class="col-sm-2 control-label">Program Outcome Source</label>
                           <asp:DropDownList ID="DropDownList2" runat="server" class="form-control"   style="width: 300px;" >
                             </asp:DropDownList>    
                                </div>

                      <div class="form-group">
                        <label class="col-sm-2 control-label">Date Comepleted</label>
                            <input type="text" class="form-control" id="DateComepleted" placeholder="Date Comepleted" style="width: 300px" />
                                </div>

                         <div class="form-group">
                                 <legend>Program Mapping Analysis</legend>
                                 <label class="col-sm-7 control-label">&nbsp;</label>
                                     <input type="file" id="exampleInputFile4" style="width: 300px;"/>
                                      <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>
                        <div class="form-group">
                        <label class="col-sm-2 control-label">Date Comepleted</label>
                            <input type="text" class="form-control" id="DateComepletedPMA" placeholder="Date Comepleted" style="width: 300px" />
                                </div>
                              <div class="form-group">
                                  <legend> Mapping Outcome</legend>
                        <label class="col-sm-2 control-label">&nbsp;</label>
                            <input type="text" class="form-control" id="DateComepletedMO" placeholder="Mapping Outcome" style="width: 300px" />
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

