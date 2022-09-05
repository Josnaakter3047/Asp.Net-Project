<%@ Page Title="" Language="C#" MasterPageFile="~/mySitePage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="project_01.Admin" %>

<%@ Register Src="~/uclMyMenu.ascx" TagPrefix="uc1" TagName="uclMyMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-4 position-relative">
                <uc1:uclMyMenu runat="server" ID="uclMyMenu" />
            </div>
        </div>
    </div>
</asp:Content>
