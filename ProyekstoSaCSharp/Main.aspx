<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="ProyekstoSaCSharp.Main" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }

        .auto-style2 {
            text-align: right;
            width: 111px;
        }

        .auto-style3 {
            text-align: right;
            width: 111px;
            height: 26px;
        }

        .auto-style4 {
            height: 26px;
        }

        .auto-style5 {
            text-align: right;
            width: 111px;
            height: 30px;
        }

        .auto-style6 {
            height: 30px;
        }

        .auto-style7 {
            font-size: xx-large;
        }

        .auto-style8 {
            font-size: x-large;
        }

        .ul-style1 {
            float: left;
            width: 100%;
            padding: 0;
            margin: 0;
            list-style-type: none;
        }

        ul a {
            float: left;
            width: 9.2em;
            text-decoration: none;
            color: white;
            background-color: skyblue;
            padding: 0.2em 0.6em;
            border-right: 1px solid white;
        }

          ul a:hover {
                background-color: lightblue;
            }

        ul li {
            display: inline;
        }
        .auto-style9 {
            font-size: medium;
        }
        .auto-style10 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #800000;
        }
        .auto-style11 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #003300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <span class="auto-style7"><strong>
                <br />
                <span class="auto-style11">Products</span><br />
            <asp:Label ID="Label1" runat="server" style="color: #FF0066; font-size: small; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" Text="Admin is logged in"></asp:Label>
            <br />
            </strong></span><br />
            <ul class="ul-style1">
                <li class="auto-style9"><a href="Main.aspx">Add Product</a></li>
                <li><a href="Add.aspx">Add Classification</a></li>
                <li><a href="Sales.aspx">Sell a Product</a></li>
                <li><a href="Returns.aspx">Return a Product</a></li>
            </ul>

        </div>
        <p class="auto-style8">
            <span class="auto-style10">
            <strong>Add Products:</strong></span>
        </p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Product Name:&nbsp; </td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbProductName" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbProductName" ErrorMessage="Product Name is required" ForeColor="Red" ValidationGroup="AddProducts">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Category:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="158px" DataSourceID="SqlDataSourceCategory" DataTextField="CategoryID" DataValueField="CategoryID">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCategory" ErrorMessage="Please choose the product category" ForeColor="Red" ValidationGroup="AddProducts">*</asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT [CategoryID] FROM [Category] ORDER BY [CategoryID]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Color:</td>
                <td>
                    <asp:DropDownList ID="ddlColor" runat="server" Width="158px" DataSourceID="SqlDataSourceColor" DataTextField="ColorID" DataValueField="ColorID">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlColor" ErrorMessage="Please choose the product color" ForeColor="Red" ValidationGroup="AddProducts">*</asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSourceColor" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT [ColorID] FROM [Colors] ORDER BY [ColorID]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Price:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="tbPrice" runat="server" Width="150px"></asp:TextBox>
                    &nbsp;PHP
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="tbPrice" ErrorMessage="Price is required" ForeColor="Red" ValidationGroup="AddProducts">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Description</td>
                <td class="auto-style4">
                    <asp:TextBox ID="tbDescription" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Supplier:</td>
                <td>
                    <asp:DropDownList ID="ddlSupplier" runat="server" Width="158px" DataSourceID="SqlDataSourceSupplier" DataTextField="SupplierID" DataValueField="SupplierID">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ddlSupplier" ErrorMessage="Please choose the product supplier" ForeColor="Red" ValidationGroup="AddProducts">*</asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSourceSupplier" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT [SupplierID] FROM [Suppliers] ORDER BY [SupplierID]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Warehouse: </td>
                <td>
                    <asp:DropDownList ID="ddlWarehouse" runat="server" Width="158px" DataSourceID="SqlDataSourceWarehouse" DataTextField="WarehouseID" DataValueField="WarehouseID">
                    </asp:DropDownList>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddlWarehouse" ErrorMessage="Please choose the product warehouse" ForeColor="Red" ValidationGroup="AddProducts">*</asp:RequiredFieldValidator>
                    <asp:SqlDataSource ID="SqlDataSourceWarehouse" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT [WarehouseID] FROM [Warehouse] ORDER BY [WarehouseID]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" ValidationGroup="AddProducts" />
                    <asp:ConfirmButtonExtender ID="btnAdd_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure that you want to add the product?" Enabled="True" TargetControlID="btnAdd">
                    </asp:ConfirmButtonExtender>
                </td>
            </tr>
        </table>
        <p class="auto-style8">
            <span class="auto-style10">
            <strong>Product List:</strong></span>
        </p>
        <p class="auto-style8">
            <asp:GridView ID="GVAvailable" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSourceLVAvailable" GridLines="Horizontal" EmptyDataText="No record found">
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="CategoryID" HeaderText="Category" SortExpression="CategoryID" />
                    <asp:BoundField DataField="ColorID" HeaderText="Color" SortExpression="ColorID" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="SupplierID" HeaderText="Supplier" SortExpression="SupplierID" />
                    <asp:BoundField DataField="WarehouseID" HeaderText="Warehouse" SortExpression="WarehouseID" />
                    <asp:BoundField DataField="DateAdded" HeaderText="DateAdded" SortExpression="DateAdded" />
                    <asp:BoundField DataField="Username" HeaderText="Added By" SortExpression="Username" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSourceLVAvailable" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT * FROM [Products] ORDER BY [DateAdded] DESC" UpdateCommand="UPDATE Products SET ProductName=@ProductName, CategoryID=@CategoryID, ColorID=@ColorID, Price=@Price, Description=@Description, SupplierID=@SupplierID, WarehouseID=@WarehouseID, DateAdded=@DateAdded, Username=@Username WHERE ProductID=@ProductID" DeleteCommand="DELETE FROM Products WHERE ProductID=@ProductID"></asp:SqlDataSource>
        </p>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
    </form>
</body>
</html>
