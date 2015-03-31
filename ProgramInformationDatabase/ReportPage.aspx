<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ReportPage.aspx.cs" Inherits="ReportPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">

    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <div class="container">
                    <div class="row">
                        &nbsp;&nbsp;&nbsp;&nbsp;
        
              
        <select name="ctl00$ContentPlaceHolderBody$DropDownList1" id="ContentPlaceHolderBody_DropDownList1" style="width: 229px; text-align: left;">
            <option selected="selected" value="Active Program">Active Program</option>
            <option value="Inactive Program">Inactive Program</option>
            <option value="">Program Outcome Report</option>
            <option value="">Comprhensive Report</option>
            <option value="">Program Advisory Committees</option>
        </select><br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label">Sort by</asp:Label>
                        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="114px">
                            <asp:ListItem>School Name</asp:ListItem>
                            <asp:ListItem>Department Name</asp:ListItem>
                            <asp:ListItem>Program Name</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Label">then by</asp:Label>
                        &nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Height="20px" Width="114px">
        </asp:DropDownList>
                        &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Label">then by</asp:Label>
                        &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="114px">
        </asp:DropDownList>
                        <br />
                        <br />
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
                        <br />
                        <br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
