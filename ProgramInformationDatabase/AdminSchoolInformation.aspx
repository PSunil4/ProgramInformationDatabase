<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="AdminSchoolInformation.aspx.cs" Inherits="ProgramInformationDatabase.AdminSchoolInformation" %>
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
                            <legend>Alter School Information</legend>
                            <p><span style="color: red; font-size: 18px">*</span>Indicates Required Fields</p>
                            <br />
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>School Code</label>
                                <asp:TextBox ID="SchoolCodeTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>School Name</label>
                                <asp:TextBox ID="SchoolNameTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Description</label>
                                <asp:TextBox ID="DescriptionTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Dean Faculty ID</label>
                                <asp:TextBox ID="DeanIdTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span style="color: red; font-size: 18px">*</span>Start Date</label>
                                <asp:TextBox ID="StartDateTxtbox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">End Date</label>
                                <asp:TextBox ID="EndDateTxtBox" class="form-control" Width="300px" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-sm-7 control-label">
                                <asp:Button ID="AdminSchoolInfobtnSubmit" runat="server" Text="Submit" style="height:40px; width:150px; padding:0px" OnClick="AdminSchoolInfobtnSubmit_Click" />
                             </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
