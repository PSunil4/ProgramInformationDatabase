<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeBehind="AdminProgramInformation.aspx.cs" Inherits="ProgramInformationDatabase.AdminProgramInformation" %>
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
                            <legend>Alter Program Information</legend>
                            <p><span style="color: red; font-size: 18px">*</span>Indicates Required Fields</p>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Code</label>
                                <asp:TextBox ID="ProgramCodeTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Program Name</label>
                                <asp:TextBox ID="ProgramNameTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Credentials</label>
                                <asp:TextBox ID="CredentialTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Cluster</label>
                                <asp:TextBox ID="ClusterTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Coordinator Faculty ID</label>
                                <asp:TextBox ID="CoordinatorFacultyTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Department Code</label>
                                <asp:TextBox ID="DepartmentCodeTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Start Date</label>
                                <asp:TextBox ID="StartDateTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">End Date</label>
                                <asp:TextBox ID="EndDateTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Duration</label>
                                <asp:TextBox ID="DurationTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-7 control-label">
                                <asp:Button ID="ProgramInformationSubmitBtn" runat="server" Text="Submit" style="height:40px; width:150px; padding:0px" />
                             </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
