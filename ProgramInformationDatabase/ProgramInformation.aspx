<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="ProgramInformation.aspx.cs" Inherits="ProgramInformatio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <div class="container">
                <div class="row">

                    <fieldset>
                        <legend>Program Information Form</legend>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Program Code</label>

                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="ProgramCodeDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Program Name</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Program Name" style="width: 300px" />
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">School Code</label>
                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="SchoolCodeDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Department Code</label>
                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="DepartmentCodeDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Program Coordinator ID</label>
                            <input type="password" class="form-control" id="ProgramCoordinatorId" placeholder="Program Coordinator ID" style="width: 300px" />
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Credential</label>
                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="CredentialDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Cluster</label>
                            <input type="text" class="form-control" id="exampleDepartmentName" placeholder="Cluster" style="width: 300px" />
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">MTCU Funding Code</label>
                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="MTCUFundingCodeDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">MTCU Funding Name</label>
                            <input type="text" class="form-control" id="MTCUFundingName" placeholder="MTCU Funding Name" style="width: 300px" />
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Program Outcome</label>
                            <input type="text" class="form-control" id="ProgramOutcome" placeholder="Program Outcome" style="width: 300px" />
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Start Date</label>
                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="StartDateDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Year</label>
                            <input type="text" class="form-control" id="inputEmail1" placeholder="YYYY" style="width: 300px;" />
                        </div>


                        <div class="form-group">
                            <label class="col-sm-2 control-label">End Date</label>
                            <!-- <input type="text" class="form-control" id="inputEmail3" placeholder="Program Code" style="width: 300px;" /> -->
                            <asp:DropDownList ID="EndDateDrpdown" runat="server" class="form-control" Style="width: 300px;">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Year</label>
                            <input type="text" class="form-control" id="inputEmail2" placeholder="YYYY" style="width: 300px;" />

                        </div>



                        <div class="form-group">
                            <label class="col-sm-2 control-label">CVS Applicationon</label>
                            <input type="file" id="exampleInputFileCVS" style="width: 300px;" />
                            <p class="col-sm-2 control-label" class="help-block">Upload Your File Here</p>
                        </div>

                         <%--<div class="form-group">
                            <label class="col-sm-5 control-label">Nomenclature Change Notification</label>
                            <input type="file" id="exampleInputFileCVS" style="width: 300px;" />
                            <p class="col-sm-5 control-label" class="help-block">Upload Your File Here</p>
                        </div>--%>

                                          <div class="col-sm-7 control-label">
                                <button type="submit" class="btn btn-danger" style="width: 150px">Submit</button>
                            </div>
                    </fieldset>


                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>



