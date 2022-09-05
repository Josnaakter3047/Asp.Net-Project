<%@ Page Title="" Language="C#" MasterPageFile="~/mySitePage.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="project_01.AddProducts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div class="col">
            <h1>Product</h1>

            <asp:DetailsView ID="DetailsView1" OnItemInserting="DetailsView1_ItemInserting1" OnItemUpdating="DetailsView1_ItemUpdating1" CssClass="table table-bordered" runat="server" Height="50px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="productId" DataSourceID="dsProduct">
                <Fields>
                    <asp:BoundField DataField="productId" HeaderText="productId" InsertVisible="False" ReadOnly="True" SortExpression="productId" />
                    <asp:TemplateField HeaderText="productName" SortExpression="productName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("productName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("productName") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("productName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="price" SortExpression="price">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPriceEdit" CssClass="form-control" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                            <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txtPrice" Type="Double" MinimumValue="200" MaximumValue="50000" runat="server" ErrorMessage="product price must be 700-50000" ForeColor="Red"></asp:RangeValidator>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="sellDate" SortExpression="sellDate">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSellDate" runat="server" Text='<%# Bind("sellDate") %>'></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/Pictures/calender.png" Width="30px" ImageAlign="AbsBottom" runat="server" OnClick="ImageButton1_Click" />
                            <asp:Calendar ID="Calendar1" Visible="False" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="txtSellDate" runat="server" Text='<%# Bind("sellDate") %>'></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/Pictures/calender.png" Width="30px" ImageAlign="AbsBottom" runat="server" OnClick="ImageButton1_Click" />
                            <asp:Calendar ID="Calendar1" Visible="False" runat="server" OnSelectionChanged="Calendar1_SelectionChanged1" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                            </asp:Calendar>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("sellDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="pBrandId" SortExpression="pBrandId">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlBrand" CssClass="form-control" SelectedValue='<%#Bind("pBrandId") %>' runat="server" DataSourceID="dsBrand" DataTextField="brandName" DataValueField="brandId"></asp:DropDownList>
                            <asp:SqlDataSource ID="dsBrand" runat="server" ConnectionString="<%$ ConnectionStrings:dsBrandConn %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlBrand" CssClass="form-control" SelectedValue='<%#Bind("pBrandId") %>' runat="server" DataSourceID="dsBrand" DataTextField="brandName" DataValueField="brandId"></asp:DropDownList>
                            <asp:SqlDataSource ID="dsBrand" runat="server" ConnectionString="<%$ ConnectionStrings:dsBrandConn %>" SelectCommand="SELECT * FROM [Brand]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("pBrandId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="pCategoryId" SortExpression="pCategoryId">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" SelectedValue='<%#Bind("pCategoryId") %>' runat="server" DataSourceID="dsCategory" DataTextField="categoryName" DataValueField="Id"></asp:DropDownList>

                            <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:dsCategoryConn %>" SelectCommand="SELECT [Id], [categoryName] FROM [Category]"></asp:SqlDataSource>

                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:DropDownList ID="ddlCategory" CssClass="form-control" SelectedValue='<%#Bind("pCategoryId") %>' runat="server" DataSourceID="dsCategory" DataTextField="categoryName" DataValueField="Id"></asp:DropDownList>
                            <asp:SqlDataSource ID="dsCategory" runat="server" ConnectionString="<%$ ConnectionStrings:dsCategoryConn %>" SelectCommand="SELECT [Id], [categoryName] FROM [Category]"></asp:SqlDataSource>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("pCategoryId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:CheckBoxField DataField="isAvilable" HeaderText="isAvilable" SortExpression="isAvilable" />
                    <asp:TemplateField HeaderText="productImage" SortExpression="productImage">
                        <EditItemTemplate>
                            <asp:FileUpload ID="fuPicture" runat="server" />
                            <asp:HiddenField ID="HiddenField1" Value='<%#Bind("productImage") %>' runat="server" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:FileUpload ID="fuPic" runat="server" />
                            <asp:HiddenField ID="HiddenField2" Value='<%#Bind("productImage") %>' runat="server" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" ImageUrl='<%#Bind("productImage","~/Pictures/{0}") %>'  ImageAlign="AbsBottom" Width="70px" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="dsProduct" runat="server" ConnectionString="<%$ ConnectionStrings:detailProductConnection %>" DeleteCommand="DELETE FROM [Products] WHERE [productId] = @productId" InsertCommand="INSERT INTO [Products] ([productName], [price], [sellDate], [pBrandId], [pCategoryId], [isAvilable], [productImage]) VALUES (@productName, @price, @sellDate, @pBrandId, @pCategoryId, @isAvilable, @productImage)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [productName] = @productName, [price] = @price, [sellDate] = @sellDate, [pBrandId] = @pBrandId, [pCategoryId] = @pCategoryId, [isAvilable] = @isAvilable, [productImage] = @productImage WHERE [productId] = @productId">
                <DeleteParameters>
                    <asp:Parameter Name="productId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="sellDate" />
                    <asp:Parameter Name="pBrandId" Type="Int32" />
                    <asp:Parameter Name="pCategoryId" Type="Int32" />
                    <asp:Parameter Name="isAvilable" Type="Boolean" />
                    <asp:Parameter Name="productImage" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="sellDate" />
                    <asp:Parameter Name="pBrandId" Type="Int32" />
                    <asp:Parameter Name="pCategoryId" Type="Int32" />
                    <asp:Parameter Name="isAvilable" Type="Boolean" />
                    <asp:Parameter Name="productImage" Type="String" />
                    <asp:Parameter Name="productId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
  

</asp:Content>
