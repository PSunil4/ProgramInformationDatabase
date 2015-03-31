<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="AdminFacultyContactForm.aspx.cs" Inherits="AdminFacultyContactForm" %>
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
                            <legend>Alter Faculty Contact</legend>
                            <p><span style="color: red; font-size: 18px">*</span>Indicates Required Fields</p>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Faculty Member ID</label>
                                <asp:TextBox ID="FacultyMemberTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>First Name</label>
                                <asp:TextBox ID="FirstNameTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Last Name</label>
                                <asp:TextBox ID="LastNameTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Email</label>
                                <asp:TextBox ID="EmailTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Phone Number</label>
                                <asp:TextBox ID="PhoneNumberTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Extension</label>
                                <asp:TextBox ID="ExtensionTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Role</label>
                                <asp:TextBox ID="RoleTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-7 control-label">
                                <asp:Button ID="AdminFacultySubmitBtn" runat="server" Text="Submit" style="height:40px; width:150px; padding:0px" OnClick="AdminFacultySubmitBtn_Click" />
                             </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
