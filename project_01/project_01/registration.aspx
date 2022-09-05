<%@ Page Title="" Language="C#" MasterPageFile="~/mySitePage.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="project_01.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col">

            <h1 class="text-center">Registration Form</h1>
            <asp:Panel ID="Panel1" runat="server" Visible="false" CssClass="alert alert-warning">
                <h5>Registraion Failed!!!</h5>
                <p>Please try to registration again.</p>
            </asp:Panel>

            <asp:ValidationSummary ID="ValidationSummary1" ShowValidationErrors="true" ForeColor="Red" runat="server" />

            <div class="col-md-12 col-xs-11 mb-3 row">
                <asp:Label ID="Label1" CssClass="col-form-label col-md-4 text-right" runat="server" Text="Your Name"></asp:Label>
                <asp:TextBox ID="txtFullName" CssClass="form-control col-md-6" runat="server" placeholder="Enter your full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtFullName" runat="server" ErrorMessage="Your name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <div class="col-md-12 col-xs-11 row">
                <asp:Label ID="Label2" CssClass="col-form-label col-md-4 text-right" runat="server" Text="Contact Number"></asp:Label>
                <asp:TextBox ID="txtContactNumber" CssClass="form-control col-md-6" runat="server" placeholder="Enter your contact number"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="txtContactNumber" ValidationExpression="\d{11}" runat="server" ErrorMessage="Contact number must be 11 digit" ForeColor="Red"></asp:RegularExpressionValidator>
            </div>
            <div class="col-md-12 col-xs-11 mb-3 row">
                <asp:Label ID="Label3" CssClass="col-form-label col-md-4 text-right" runat="server" Text="Email Address"></asp:Label>
            <asp:TextBox ID="txtEmail" CssClass="form-control col-md-6" runat="server" placeholder="Enter your valid email address"></asp:TextBox>
            </div>

            <div class="col-md-12 col-xs-11 mb-3 row">
                <asp:Label ID="Label4" CssClass="col-form-label col-md-4 text-right" runat="server" Text="User Name"></asp:Label>
                <asp:TextBox ID="txtUserName" CssClass="form-control col-md-6" runat="server" placeholder="Enter user name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtUserName" runat="server" ErrorMessage="User name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" ControlToValidate="txtUserName" OnServerValidate="CustomValidator1_ServerValidate" runat="server" ErrorMessage="User name will be at least 3 char" ForeColor="Red"></asp:CustomValidator>
            </div>

            <div class="col-md-12 col-xs-11 mb-3 row">
                <asp:Label ID="Label5" CssClass="col-form-label col-md-4 text-right" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" CssClass="form-control col-md-6" runat="server" placeholder="Enter your password" TextMode="Password"></asp:TextBox>
            </div>
            <div class="col-md-12 col-xs-11 mb-3 row">
                <asp:Label ID="Label6" CssClass="col-form-label col-md-4 text-right" runat="server" Text="Confirm Password"></asp:Label>
                <asp:TextBox ID="txtConfirmPassword" CssClass="form-control col-md-6" runat="server" placeholder="Re-type your password" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txtConfirmPassword" ControlToCompare="txtPassword" ValueToCompare="txtConfirmPassword" runat="server" ErrorMessage="Invalid Password" ForeColor="Red"></asp:CompareValidator>
            </div>
             <div class="col-md-12 col-xs-11 mb-3 row">
                 <asp:Button ID="btnRegistration" CssClass="btn btn-info offset-4" runat="server" Text="Submit" OnClick="btnRegistration_Click"/>
            </div>

              <div class="col-md-12 col-xs-11 mb-3 row">
                  <asp:Label ID="lblMsg" Visible="false" CssClass="alert alert-info" runat="server" Text="Registration failed!! Please try again!!" ForeColor="Red"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
