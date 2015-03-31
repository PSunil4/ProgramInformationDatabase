<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeBehind="FileDownload.aspx.cs" Inherits="ProgramInformationDatabase.FileDownload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="server">
    <div class="container">

         <br /> <br />
    <asp:DropDownList ID="DropDownList2" align="center" runat="server" AutoPostBack="true" OnSelectedIndexChanged="SelectedIndexChanged">
        <asp:ListItem Value="">All Files</asp:ListItem>
        <asp:ListItem Value="ModelRoute">Model Route</asp:ListItem>
        <asp:ListItem Value="MappingDocument">Mapping Document</asp:ListItem>
        <asp:ListItem Value="MappingAnalysis">Mapping Analysis</asp:ListItem>
    </asp:DropDownList>

    <br /> <br />

    <asp:GridView ID="GridViewFileDownload" CssClass="table table-striped table-bordered table-hover table-responsive"
            RowStyle-CssClass="tr" Width="100%" 
            HeaderStyle-CssClass="th" runat="server" AutoGenerateColumns="False" OnRowCommand="GridViewFileDownload_RowCommand">
        <Columns>
            <asp:TemplateField HeaderText="File">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Size" HeaderText="Size In Bytes" />
            <asp:BoundField DataField="Type" HeaderText="File Type" />
        </Columns>
        
    </asp:GridView>

        </div>
</asp:Content>
