<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeBehind="ProgramAdvisoryCommittees.aspx.cs" Inherits="ProgramInformationDatabase.ProgramAdvisoryCommittees" %>

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
         <legend>Program Advisory Committee</legend>
<%--         <asp:Table ID="PACTable" runat="server">
             
             <asp:TableRow>
                 <asp:TableHeaderCell ID="PACTableHeader">
                    <label class="col-sm-2 control-label">Program Code</label>
                  </asp:TableHeaderCell>
                <asp:TableCell>
                    <asp:DropDownList ID="programCodeDropDown" AutoPostBack="true" class="form-control" runat="server" Width="300px"></asp:DropDownList>
                </asp:TableCell>             
             </asp:TableRow>
    --%>

         <div class="form-group">
             <label class="col-sm-2 control-label">Program Code</label>
             <asp:DropDownList ID="programCodeDropDown"  AutoPostBack="true" OnSelectedIndexChanged="selectedProgramCodeChange" class="form-control" runat="server" Width="300px">
             </asp:DropDownList>
         </div>

         <div class="form-group">
             <label class="col-sm-2 control-label">Program Name</label>
             <asp:DropDownList ID="programNameTxtbox" class="form-control" runat="server" Width="300px"></asp:DropDownList>
         </div>
             <div class="form-group">
                 <label class="col-sm-2 control-label">PAC Member ID</label>
                 <asp:DropDownList ID="PACMemberIDDropDown" class="form-control" runat="server" Width="300px"></asp:DropDownList>
             </div>
           
             
               <div class="form-group">
                 <label class="col-sm-2 control-label"> PAC Member Status</label>
                 <asp:DropDownList ID="schoolCodeDropDown" class="form-control" runat="server" Width="300px"></asp:DropDownList>
             </div>
            <div class="form-group">
                 <label class="col-sm-2 control-label">PAC Meeting Minutes</label>
                 <asp:TextBox ID="MeetingMinutes" class="form-control" runat="server" placeholder="Meeting Minutes Description" style="width: 300px"></asp:TextBox>
             </div>

             <div class="form-group">
                 <label class="col-sm-2 control-label" id="TextBoxDate">Meeting Date</label>
                 <asp:TextBox runat="server" class=" col-sm-2 form-control" ID="MeetingDate" placeholder="(DD-MMM-YYYY)" Style="width: 300px"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" class="col-sm-2" runat="server" ErrorMessage="Incorrect Date, Follow (DD-MMM-YYYY)" BorderColor="White" ValidationExpression="^(([0-9])|([0-2][0-9])|([3][0-1]))\-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\-\d{4}$" ControlToValidate="MeetingDate" BorderStyle="Solid"></asp:RegularExpressionValidator>
             </div>
            
               <%--  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" class="col-sm-2" runat="server" ErrorMessage=" Incorrect Date" BorderColor="White" ValidationExpression="^([0]\d|[1][0-2])\/([0-2]\d|[3][0-1])\/([2][01]|[1][6-9])\d{2}(\s([0-1]\d|[2][0-3])(\:[0-5]\d){1,2})?$" ControlToValidate="MeetingDate" BorderStyle="Solid"></asp:RegularExpressionValidator>--%>

             <div class="col-sm-7 control-label">
                 <asp:Button ID="PAC_Submit" runat="server" Text="Button" type="submit" style="width: 150px" OnClick="PAC_Submit_Click"/>
             </div>
            <br />

<%--             </asp:Table>--%>

     </fieldset>
     </div>
        </div>
        </div>

    
 </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

