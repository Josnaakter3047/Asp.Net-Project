<%@ Page Title="" Language="C#" MasterPageFile="~/mySitePage.Master" AutoEventWireup="true" CodeBehind="ShowBrand.aspx.cs" Inherits="project_01.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col">
            <h1 class="text-center">Product Brand</h1>
            <br/>
            <div class="d-flex justify-content-end mb-2">
                <a href="addBrand.aspx" class="btn btn-info btn-sm">Add Brand</a>
            </div>
            <asp:ListView ID="ListView1" ItemPlaceholderID="itemHolder" runat="server" DataSourceID="dsShowBrand">
                <LayoutTemplate>
                    <table runat="server" class="table table-bordered bg-light w-100">
                        <tr runat="server">
                           <th runat="server">Brand ID</th>
                           <th runat="server">Brand Name</th>
                        </tr>          
                                <tr id="itemHolder" runat="server">
                                </tr>

                                </table>
                        </tr>
                        <tr>
                        <td colspan="3">
                            <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1" PageSize="5">
                                <Fields>
                                    <asp:NumericPagerField ButtonType="Button" CurrentPageLabelCssClass="btn btn-info btn-sm" />
                                    <asp:NextPreviousPagerField ButtonType="Link" ButtonCssClass="btn btn-default"/>
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                    </table>
                </LayoutTemplate>
                <InsertItemTemplate>
                    <tr class="table table-bordered">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text="Brand Name"></asp:Label>
                        </td>
                        <td>

                            <asp:TextBox ID="txtBrand" runat="server" Text='<%#Bind("brandName") %>'></asp:TextBox>

                        </td>
                        
                    </tr>
                </InsertItemTemplate>
               
                <ItemTemplate>
                    <tr class="table table-bordered">
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("brandId") %>'></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="eNameLabel" runat="server" Text='<%# Eval("brandName") %>'></asp:Label>

                        </td>
                        
                    </tr>
                   
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="dsShowBrand" runat="server" ConnectionString="<%$ ConnectionStrings:BrandConnection %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
