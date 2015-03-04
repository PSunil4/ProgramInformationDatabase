<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="MappingForm.aspx.cs" Inherits="MappingForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
    <div class="container">
    <div class="row">
            <fieldset>
            <legend> Form Example</legend>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" style="width: 250px"/>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" style="width: 250px" />
            </div>
            <div class="form-group">
                <label for="exampleDepartmentName">Department Name</label>
                <input type="text" class="form-control" id="exampleDepartmentName" placeholder="Enter Department Name" style="width: 300px"/>
            </div>
            <div class="form-group">
                <label for="exampleSchoolName">School Name</label>
                <input type="text" class="form-control" id="exampleSchoolName" placeholder="Enter Department Name" style="width: 300px"/>
            </div>
            <div class="form-group">
                <label for="exampleProgramName">Program Name</label>
                <input type="text" class="form-control" id="exampleProgramName" placeholder="Enter Program Name" style="width: 300px"/>
            </div>
            <div class="form-group">
                <label for="exampleInputFile">File input</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">Upload Your File Here</p>
            </div>
            <div class="checkbox">
                <label>
                    <input type="checkbox">
                    Check Box
                </label>
            </div>
            <button type="submit" class="btn btn-danger" style="width: 150px">Submit</button>
                </fieldset>            
    </div>
</div>
</asp:Content>

