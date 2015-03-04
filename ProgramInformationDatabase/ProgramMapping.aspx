<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ProgramMapping.aspx.cs" Inherits="ProgramMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
    <div class="container">
        <div class="row">
            <form class="form-horizontal" runat="server">
                <fieldset>
                    <legend>Program Mapping Form</legend>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Program Code</label>
                        <asp:DropDownList ID="programCodeDropDown"  AutoPostBack="true" OnSelectedIndexChanged="selectedProgramCodeChange" class="form-control" runat="server" Width="300px">
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Program Name</label>
                         <asp:DropDownList ID="programNameTxtbox" AutoPostBack="true" class="form-control" runat="server" Width="300px"></asp:DropDownList>
<%--                        <asp:TextBox type="text" class="form-control" id="programNameTxtbox" placeholder="Program Name" style="width: 300px" runat="server"></asp:TextBox>--%>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Cluster</label>
                        <asp:DropDownList ID="programClusterDropDown" class="form-control" runat="server" Width="300px">
                            <asp:ListItem>Software</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">School Code</label>
                         <asp:DropDownList ID="schoolCodeDropDown" class="form-control" runat="server" Width="300px">
                            <asp:ListItem>SETAS</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Department Code</label>
                         <asp:DropDownList ID="departmentCodeDropDown" class="form-control" runat="server" Width="300px">
                            <asp:ListItem>D1025</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Primary Program Contact</label>
                        <input type="text" class="form-control" id="PrimaryProgramContact" placeholder="Primary Program Contacte" style="width: 300px" />
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">CAQ Lead ID</label>
                        <input type="text" class="form-control" id="CAQLeadID" placeholder="CAQ Lead ID" style="width: 300px" />
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Program Map Description</label>
                        <input type="text" class="form-control" id="Description" placeholder="Program Map Description" style="width: 300px" />
                    </div>
                    <div class="col-sm-2 control-label">                    
                        <button type="submit" class="btn btn-danger" style="width: 150px">Submit</button>
                    </div>

                </fieldset>
            </form>
        </div>
    </div>
</asp:Content>

