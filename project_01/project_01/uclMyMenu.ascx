<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="uclMyMenu.ascx.cs" Inherits="project_01.uclMyDatePicker" %>

                    <asp:Menu ID="Menu1" runat="server" BorderColor="" BorderStyle="None" Font-Names="Palatino Linotype" Font-Size="Medium" ForeColor="Black" Width="70%">
                    <DynamicHoverStyle BackColor="" BorderWidth="1px" ForeColor="#CC3300" />
                    <DynamicMenuItemStyle BorderWidth="1px" HorizontalPadding="10px" VerticalPadding="15px" />
                    <DynamicMenuStyle BorderWidth="1px" HorizontalPadding="10px" VerticalPadding="15px" />
                    <DynamicSelectedStyle HorizontalPadding="10px" VerticalPadding="15px" />
                    <Items>
                        <asp:MenuItem Text="Product" Value="Product" NavigateUrl="~/AddProducts.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Brand" Value="Brand" NavigateUrl="~/ShowBrand.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Category" Value="Category" NavigateUrl="~/CategoryList.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Product Report" Value="Report" NavigateUrl="~/ProductReport.aspx" Target="New"></asp:MenuItem>
                        
     
                    </Items>
                    <StaticMenuItemStyle BorderColor="" BorderStyle="Inset" BorderWidth="1px" HorizontalPadding="20px" VerticalPadding="10px" />
                </asp:Menu>