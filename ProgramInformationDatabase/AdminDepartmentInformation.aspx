<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="AdminDepartmentInformation.aspx.cs" Inherits="ProgramInformationDatabase.AdminDepartmentInformation" %>
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
                            <legend>Alter Deparment Information</legend>
                            <p><span style="color: red; font-size: 18px">*</span>Indicates Required Fields</p>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Department Code</label>
                                <asp:TextBox ID="DepartmentCodeTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Deparment Name</label>
                                <asp:TextBox ID="DepartmentNameTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Chair Member ID</label>
                                <asp:TextBox ID="ChairMemberIDTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>School Code</label>
                                <asp:TextBox ID="SchoolCodeTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-7 control-label">
                                <asp:Button ID="DepartmentInformationSubmitBtn" runat="server" Text="Submit" style="height:40px; width:150px; padding:0px" OnClick="DepartmentInformationSubmitBtn_Click" />
                             </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
