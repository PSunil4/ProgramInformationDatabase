<%@ Page Title="" Language="C#" MasterPageFile="./MasterPage.master" AutoEventWireup="true" CodeFile="ContactInformation.aspx.cs" Inherits="ContactInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderBody" Runat="Server">
    <div id="login" class="center">
        <h1>Member Contact Information</h1>

            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-lock"></span>
                </span>
                <input class="form-control" type="text" placeholder="User ID"/>
            </div>

            <br />
            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-user"></span>
                </span>

                <input class="form-control" type="text" placeholder="UserFull Name"/>
            </div>

            <br />
            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-user"></span>
                </span>
                <input class="form-control" type="text" placeholder="User Role"/>
            </div>

             <br />
            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                     <span class="glyphicon glyphicon-envelope"></span>
                     </span>
                <input class="form-control" type="text" placeholder="Email"/>
            </div>

            <br />
            <div class="input-group input-group-lg">
                <span class="input-group-addon">
                    <span class="glyphicon glyphicon-phone"></span>
                </span>
                <input class="form-control" type="text" placeholder="Phone Number"/>
            </div>

            <br />
            <input type="reset" value="Cancel" />
            <input type="submit" value="Add Member" />
        </div>
</asp:Content>

