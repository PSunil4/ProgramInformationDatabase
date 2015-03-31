<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ProgramMapping.aspx.cs" Inherits="ProgramMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <asp:ScriptManager ID="ScriptManagerProgramMapping" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanelProgramMapping" runat="server">
        <ContentTemplate>
            <div class="container">
                <div class="row">
                    <div class="form-horizontal">
                        <fieldset>
                            <legend>Program Mapping Form</legend>
                            <p><span style="color: red; font-size: 18px">*</span>Indicates Required Fields</p>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Code</label>
                                <asp:DropDownList ID="programCodeDropDown" AutoPostBack="true" OnSelectedIndexChanged="selectedProgramCodeChange" class="form-control" runat="server" Width="300px">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Name</label>
                                <asp:DropDownList ID="programNameDropDown" class="form-control" runat="server" Width="300px"></asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Cluster</label>
                                <asp:DropDownList ID="programClusterDropDown" class="form-control" runat="server" Width="300px">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>School Code</label>
                                <asp:DropDownList ID="schoolCodeDropDown" AutoPostBack="true" OnSelectedIndexChanged="SelectedSchoolCodeChange" class="form-control" runat="server" Width="300px">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Department Code</label>
                                <asp:DropDownList ID="departmentCodeDropDown" class="form-control" runat="server" Width="300px">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Primary Program Contact</label>
                                <asp:TextBox ID="PrimaryProgramContactTxtBox" class="form-control" placeholder="(XXX) XXX-XXXX" style="width: 300px; height: 40px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">CAQ Lead ID</label>
                                <asp:TextBox ID="CAQLeadIDTxtBox" class="form-control" placeholder="CAQ Lead ID" style="width: 300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Map Description</label>
                                <asp:TextBox runat="server" class="form-control" ID="ProgramMapDescripTxtBox" placeholder="Program Map Description" TextMode="multiline" Columns="3" Rows="3" Style="width: 300px"></asp:TextBox>
                            </div>

                            <!-- TRACK MAPPING-->
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Purpose</label>
                                <asp:DropDownList ID="PurposeDrpdown" runat="server" class="form-control" Style="width: 300px;">
                                    <asp:ListItem>Select a purpose</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Model Route File Upload</label>
                                <asp:FileUpload id="modelRouteFileUpload" runat="server" />
                            </div>
                           

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Model Route Academic Year</label>
                                <asp:TextBox class="col-sm-2 form-control" id="AcademicYearTxtBox" placeholder="Academic Year (YYYY)" style="width: 300px" runat="server"></asp:TextBox>
                                <!--                                <label class="col-sm-1 control-label"><span style="color: red; font-size: 18px">*</span>Model Route</label> -->
                                <!--  <input id="ModelRouteFileUpload" type="file" class="col-sm-4 file" data-show-preview="false">-->
                            </div>

                            <%--   <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;</label>

                               <input type="file" id="exampleInputFile1" style="width: 300px;" />
                                <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>--%>

                            <%--                                <label class="col-sm-2 control-label">Academic Year</label>
                                <input type="text" class="form-control" id="AcademicYear1" placeholder="Academic Year" style="width: 300px" />--%>

                            <%--   </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">&nbsp;</label>

                             <input type="file" id="exampleInputFile2" style="width: 300px;" />
                                <p class="col-sm- control-label" class="help-block">Upload Your File Here</p>--%>

                            <%--          <label class="col-sm-2 control-label">Academic Year</label>
                                <input type="text" class="form-control" id="AcademicYear2" placeholder="Academic Year" style="width: 300px" />
                            </div>--%>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Mapping Documents</label>
                                <asp:FileUpload id="MappingDocumentFile" runat="server" />
                   
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Type of Map</label>
                                <asp:DropDownList ID="typeOfMapDropBox" runat="server" class="form-control" Style="width: 300px;">
                                    <asp:ListItem> Overview map </asp:ListItem>
                                    <asp:ListItem> Course map </asp:ListItem>
                                    <asp:ListItem> Assessment map </asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                 <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Outcome Source</label>
                                 <asp:DropDownList ID="programOutcomeSourceDropdown" runat="server" class="form-control" Style="width: 300px;">
                                     <asp:ListItem>Source One</asp:ListItem>
                                 </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                 <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Mapping Comepleted Date</label>
                                 <asp:TextBox class="form-control" id="MappinfDateComepleted" placeholder="Date Comepleted (YYYY-MM-DD)" style="width: 300px" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                 <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Mapping Analysis</label>
                                <asp:FileUpload id="mappingAnalysisFileUpload" style="width: 300px;" runat="server" />
                            </div>

                            <div class="form-group">
                                 <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Analysis Date Completed</label>
                                <asp:TextBox class="form-control" id="DateComepletedAnalysis" placeholder="Analysis Date Completed (YYYY-MM-DD)" style="width: 300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Mapping Outcome</label>
                                <asp:TextBox class="form-control" id="mappingOutcomeTxtbox" placeholder="Mapping Outcome" style="width: 300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-7 control-label">
                                <asp:Button ID="ProgramMappingSubmitBtn" runat="server" Text="Submit" style="height:40px; width:150px; padding:0px" OnClick="ProgramMappingSubmitBtn_Click" />
                                <%--<button type="submit" class="btn btn-danger" style="width: 150px">Submit</button>--%>
                             </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="ProgramMappingSubmitBtn" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
