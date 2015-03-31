<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="SchoolTable.aspx.cs" Inherits="SchoolTable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
    <div class="container">

        <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover table-responsive"
            RowStyle-CssClass="tr" HeaderStyle-CssClass="th" runat="server"
            AutoGenerateColumns="False" DataKeyNames="SchoolCode"
             DataSourceID="SqlDataSourceSchoolTable" AllowPaging="True" AllowSorting="True" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="SchoolCode" HeaderText="School Code" ReadOnly="True" SortExpression="SchoolCode" />
                <asp:BoundField DataField="SchoolName" HeaderText="School Name" SortExpression="SchoolName" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Dean_FCI_MemberID" HeaderText="Dean ID" SortExpression="Dean_FCI_MemberID" />
                <asp:BoundField DataField="StartDate" dataformatstring="{0:MMM d, yyyy}" HeaderText="Start Date" SortExpression="StartDate" />
                <asp:BoundField DataField="EndDate" HeaderText="End Date" SortExpression="EndDate" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceSchoolTable" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:program_information_databaseConnectionString_SchoolTable %>" DeleteCommand="DELETE FROM [SchoolInformation] WHERE [SchoolCode] = @original_SchoolCode AND [SchoolName] = @original_SchoolName AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Dean_FCI_MemberID] = @original_Dean_FCI_MemberID AND [StartDate] = @original_StartDate AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL))" InsertCommand="INSERT INTO [SchoolInformation] ([SchoolCode], [SchoolName], [Description], [Dean_FCI_MemberID], [StartDate], [EndDate]) VALUES (@SchoolCode, @SchoolName, @Description, @Dean_FCI_MemberID, @StartDate, @EndDate)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [SchoolCode], [SchoolName], [Description], [Dean_FCI_MemberID], [StartDate], [EndDate] FROM [SchoolInformation]" UpdateCommand="UPDATE [SchoolInformation] SET [SchoolName] = @SchoolName, [Description] = @Description, [Dean_FCI_MemberID] = @Dean_FCI_MemberID, [StartDate] = @StartDate, [EndDate] = @EndDate WHERE [SchoolCode] = @original_SchoolCode AND [SchoolName] = @original_SchoolName AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Dean_FCI_MemberID] = @original_Dean_FCI_MemberID AND [StartDate] = @original_StartDate AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_SchoolCode" Type="String" />
                    <asp:Parameter Name="original_SchoolName" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Dean_FCI_MemberID" Type="Int32" />
                    <asp:Parameter Name="original_StartDate" DbType="Date" />
                    <asp:Parameter DbType="Date" Name="original_EndDate" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="SchoolCode" Type="String" />
                    <asp:Parameter Name="SchoolName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Dean_FCI_MemberID" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="StartDate" />
                    <asp:Parameter DbType="Date" Name="EndDate" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="SchoolName" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="Dean_FCI_MemberID" Type="Int32" />
                    <asp:Parameter Name="StartDate" DbType="Date" />
                    <asp:Parameter DbType="Date" Name="EndDate" />
                    <asp:Parameter Name="original_SchoolCode" Type="String" />
                    <asp:Parameter Name="original_SchoolName" Type="String" />
                    <asp:Parameter Name="original_Description" Type="String" />
                    <asp:Parameter Name="original_Dean_FCI_MemberID" Type="Int32" />
                    <asp:Parameter Name="original_StartDate" DbType="Date" />
                    <asp:Parameter Name="original_EndDate" DbType="Date" />
                </UpdateParameters>
        </asp:SqlDataSource>
            <h2>School Information</h2>
            <p>Below are the list of the shools that are present in Centennial College.</p>
            <table class="table table-striped">
                <thead>
                   <tr class="">
                        <%--<th><a href="#" onclick="">School ID</a></th>--%>
                        <th><button type="button" onclick="alert('Hello world!')">Auto ID</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">School Code</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">School Name</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">Description</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">Dean ID</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">Start Date</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">End Date</button></th>
                    </tr>
                </thead>

                <tbody>
                    <tr class="">
                        <td>01</td>
                        <td>SETAS</td>
                        <td>School of Engineering Technology and Applied Science</td>
                        <td>It is a great School</td>
                        <td>300647482</td>
                        <td>12-Jan-2005</td>
                        <td>Not Declared</td>
                    </tr>
                    <tr class="">
                        <td>01</td>
                        <td>SETAS</td>
                        <td>School of Engineering Technology and Applied Science</td>
                        <td>It is a great School</td>
                        <td>300647482</td>
                        <td>12-Jan-2005</td>
                        <td>Not Declared</td>
                    </tr>
                    <tr class="">
                        <td>01</td>
                        <td>SETAS</td>
                        <td>School of Engineering Technology and Applied Science</td>
                        <td>It is a great School</td>
                        <td>300647482</td>
                        <td>12-Jan-2005</td>
                        <td>Not Declared</td>
                    </tr>
                </tbody>
            </table>

            <br />
            <br />

             <table class="table table-striped">
                <thead>
                   <%-- <tr class="">
                        <th><a href="#" onclick="">School ID</a></th>
                        
                        <th><button type="button" onclick="alert('Hello world!')">Auto ID</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">School Code</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">School Name</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">Description</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">Dean ID</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">Start Date</button></th>
                        <th><button type="button" onclick="alert('Hello world!')">End Date</button></th>
                    </tr>--%>

                     <tr id="Header">
                        <%--<th><a href="#" onclick="">School ID</a></th>--%>
                        
                        <th>Auto ID</th>
                        <th>School Code</th>
                        <th>School Name</th>
                        <th>Description</th>
                        <th>Dean ID</th>
                        <th>Start Date</th>
                        <th>End Date</th>
                    </tr>

                </thead>

                <tbody>
                    <tr class="">
                        <td>01</td>
                        <td>SETAS</td>
                        <td>School of Engineering Technology and Applied Science</td>
                        <td>It is a great School</td>
                        <td>300647</td>
                        <td>12-Jan-2005</td>
                        <td>Not Declared</td>
                    </tr>
                    <tr class="">
                        <td>01</td>
                        <td>SETAS</td>
                        <td>School of Engineering Technology and Applied Science</td>
                        <td>It is a great School</td>
                        <td>3006474</td>
                        <td>12-Jan-2005</td>
                        <td>Not Declared</td>
                    </tr>
                    <tr class="">
                        <td>01</td>
                        <td>SETAS</td>
                        <td>School of Engineering Technology and Applied Science</td>
                        <td>It is a great School</td>
                        <td>300647482</td>
                        <td>12-Jan-2005</td>
                        <td>Not Declared</td>
                    </tr>
                </tbody>
            </table>
        </div>
</asp:Content>

