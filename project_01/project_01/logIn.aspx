<%@ Page Title="" Language="C#" MasterPageFile="~/mySitePage.Master" AutoEventWireup="true" CodeBehind="logIn.aspx.cs" Inherits="project_01.logIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col">
             <h1 class="text-center">LOG IN</h1>
            <asp:Panel ID="Panel1" runat="server" Visible="false" CssClass="alert alert-warning">
                <h5>Log In Failed!!!</h5>
                <p>Please try again...</p>
            </asp:Panel>
            <div class="col-md-10 form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-form-label col-md-4 text-right" Text="User Name"></asp:Label>
                <asp:TextBox ID="txtUserName" CssClass="form-control col-md-6 mb-3" placeholder="Enter your user name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtUserName" runat="server" ErrorMessage="Please enter user name" ForeColor="Red"></asp:RequiredFieldValidator>

            </div>

            <div class="col-md-10 form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-form-label col-md-4 text-right" Text="Password"></asp:Label>
                <asp:TextBox ID="txtPassword" CssClass="form-control col-md-6 mb-3" placeholder="Enter your password" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPassword" runat="server" ErrorMessage="Please enter your valid password" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
             <div class="col-md-10 form-group">
                 <div class="offset-4">
                 <asp:CheckBox ID="CheckBox1" runat="server" Class="text-center" />&nbsp;Remember Me <br/><br/>
                 <asp:Button ID="btnLogIn" runat="server" CssClass="btn btn-info" Text="Log In" OnClick="btnLogIn_Click"/>&nbsp;<a href="registration.aspx" class="text-primary">Registration Here</a>
                 </div>
                 
                 
            </div>
            <div class="col-md-10 form-group offset-4">
                <asp:Label ID="lblMsg" Visible="false" runat="server" Text="Invalid user name or password" ForeColor="Red"></asp:Label>  
            </div>
        </div>
    </div>
</asp:Content>
