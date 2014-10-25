<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="ProyekstoSaCSharp.Sales" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 125%;
        }
        .auto-style3 {
            width: 89px;
        }
        .auto-style5 {
            text-align: right;
            width: 72px;
        }
        .auto-style6 {
            width: 72px;
        }
        .auto-style7 {
            text-align: right;
            width: 96px;
        }
        .auto-style8 {
            width: 96px;
        }
        .auto-style9 {
            text-align: right;
            width: 85px;
        }
        .auto-style10 {
            width: 85px;
        }
        .auto-style11 {
            font-size: xx-large;
        }
        .auto-style12 {
            width: 79px;
        }
        .auto-style13 {
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
            color: #800000;
        }
        .auto-style14 {
            text-decoration: underline;
            font-size: large;
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
            width: 7.6em;
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
        .auto-style15 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            font-size: xx-large;
            color: #003300;
        }
        .auto-style16 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <strong><span class="auto-style15">Sell an item</span><span class="auto-style11"><br />
        </span>
        
           <asp:Label ID="Label1" runat="server" style="color: #FF0066; font-size: small; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" Text="Admin is logged in"></asp:Label>
        </strong>
        <span class="auto-style11">
    
        <br /></span>
        
           <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        
           <ul>
            <li><a href="Main.aspx">Add Product</a></li>
            <li><a href="Add.aspx">Add Classification</a></li>
            <li><a href="Sales.aspx">Sell a Product</a></li>
            <li><a href="Returns.aspx">Return a Product</a></li>
        </ul><br />
        <br />
        <span class="auto-style16"><strong>Available Products:</strong></span><br />
        <br />
        <asp:ListView ID="lvAvailableProducts" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSourcelvAvailableProducts" OnSelectedIndexChanged="lvAvailableProducts_SelectedIndexChanged">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorIDLabel" runat="server" Text='<%# Eval("ColorID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Eval("SupplierID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WarehouseIDLabel" runat="server" Text='<%# Eval("WarehouseID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ColorIDTextBox" runat="server" Text='<%# Bind("ColorID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="WarehouseIDTextBox" runat="server" Text='<%# Bind("WarehouseID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateAddedTextBox" runat="server" Text='<%# Bind("DateAdded") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ColorIDTextBox" runat="server" Text='<%# Bind("ColorID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="SupplierIDTextBox" runat="server" Text='<%# Bind("SupplierID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="WarehouseIDTextBox" runat="server" Text='<%# Bind("WarehouseID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateAddedTextBox" runat="server" Text='<%# Bind("DateAdded") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorIDLabel" runat="server" Text='<%# Eval("ColorID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Eval("SupplierID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WarehouseIDLabel" runat="server" Text='<%# Eval("WarehouseID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">ProductID</th>
                                    <th runat="server">ProductName</th>
                                    <th runat="server">CategoryID</th>
                                    <th runat="server">ColorID</th>
                                    <th runat="server">Price</th>
                                    <th runat="server">Description</th>
                                    <th runat="server">SupplierID</th>
                                    <th runat="server">WarehouseID</th>
                                    <th runat="server">DateAdded</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorIDLabel" runat="server" Text='<%# Eval("ColorID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="SupplierIDLabel" runat="server" Text='<%# Eval("SupplierID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="WarehouseIDLabel" runat="server" Text='<%# Eval("WarehouseID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateAddedLabel" runat="server" Text='<%# Eval("DateAdded") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSourcelvAvailableProducts" runat="server" ConnectionString="<%$ ConnectionStrings:AvailableProductsConnectionString %>" SelectCommand="SELECT [ProductID], [ProductName], [CategoryID], [ColorID], [Price], [Description], [SupplierID], [WarehouseID], [DateAdded] FROM [Products] ORDER BY [ProductID]">
             <SelectParameters>
                        <asp:Parameter DefaultValue="0" /> </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <span class="auto-style14"><strong>Customer Order<br />
        </strong></span><br />
        Transaction Code:
                    <asp:TextBox ID="txtTransactionID" runat="server" ValidationGroup="ORDER"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTransactionID" ErrorMessage="Transaction Code is required." ForeColor="Red" ValidationGroup="ORDER">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSourcePaymentType" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT [PaymentID] FROM [PaymentType]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceTaxType" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT [TaxID] FROM [TaxRate]"></asp:SqlDataSource>
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Product ID:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtSelectProductID" runat="server" Width="110px" ValidationGroup="ORDER"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSelectProductID" ErrorMessage="Please input ProductID" ForeColor="Red" ValidationGroup="ORDER">*</asp:RequiredFieldValidator>
                </td>
                <td class="auto-style7">Payment Type:</td>
                <td class="auto-style12">
                    <asp:DropDownList ID="ddlPaymentType" runat="server" DataSourceID="SqlDataSourcePaymentType" DataTextField="PaymentID" DataValueField="PaymentID">
                    </asp:DropDownList>
                </td>
                <td class="auto-style9">Tax Type:</td>
                <td>
                    <asp:DropDownList ID="ddlTaxType" runat="server" DataSourceID="SqlDataSourceTaxType" DataTextField="TaxID" DataValueField="TaxID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnAddSelect" runat="server" OnClick="btnAddSelect_Click" Text="Add/Select" Width="100px" ValidationGroup="ORDER" />
                    <asp:ConfirmButtonExtender ID="btnAddSelect_ConfirmButtonExtender" runat="server" ConfirmText="Add selected item?" Enabled="True" TargetControlID="btnAddSelect">
                    </asp:ConfirmButtonExtender>
                </td>
                <td class="auto-style8">
                    <asp:Button ID="btnAddSave" runat="server" OnClick="btnAddSave_Click" Text="Save" Width="100px" ValidationGroup="ORDER" />
                    <asp:ConfirmButtonExtender ID="btnAddSave_ConfirmButtonExtender" runat="server" ConfirmText="Save transaction?" Enabled="True" TargetControlID="btnAddSave">
                    </asp:ConfirmButtonExtender>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Label ID="lblSold" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblSave" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSourcelvSoldProducts" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT * FROM [Sales] ORDER BY [DateSold] DESC"></asp:SqlDataSource>
        <b>
        <br class="auto-style13" />
        </b>
        <span class="auto-style13"><strong>Sold Products</strong></span><br />
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="SalesID" DataSourceID="SqlDataSourcelvSoldProducts">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Label ID="SalesIDLabel" runat="server" Text='<%# Eval("SalesID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TransactionIDLabel" runat="server" Text='<%# Eval("TransactionID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorIDLabel" runat="server" Text='<%# Eval("ColorID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaymentIDLabel" runat="server" Text='<%# Eval("PaymentID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TaxIDLabel" runat="server" Text='<%# Eval("TaxID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TaxLabel" runat="server" Text='<%# Eval("Tax") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateSoldLabel" runat="server" Text='<%# Eval("DateSold") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="SalesIDLabel1" runat="server" Text='<%# Eval("SalesID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TransactionIDTextBox" runat="server" Text='<%# Bind("TransactionID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ColorIDTextBox" runat="server" Text='<%# Bind("ColorID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PaymentIDTextBox" runat="server" Text='<%# Bind("PaymentID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TaxIDTextBox" runat="server" Text='<%# Bind("TaxID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TaxTextBox" runat="server" Text='<%# Bind("Tax") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateSoldTextBox" runat="server" Text='<%# Bind("DateSold") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="TransactionIDTextBox" runat="server" Text='<%# Bind("TransactionID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CategoryIDTextBox" runat="server" Text='<%# Bind("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ColorIDTextBox" runat="server" Text='<%# Bind("ColorID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PaymentIDTextBox" runat="server" Text='<%# Bind("PaymentID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TaxIDTextBox" runat="server" Text='<%# Bind("TaxID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="TaxTextBox" runat="server" Text='<%# Bind("Tax") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DateSoldTextBox" runat="server" Text='<%# Bind("DateSold") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color:#DCDCDC;color: #000000;">
                    <td>
                        <asp:Label ID="SalesIDLabel" runat="server" Text='<%# Eval("SalesID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TransactionIDLabel" runat="server" Text='<%# Eval("TransactionID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorIDLabel" runat="server" Text='<%# Eval("ColorID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaymentIDLabel" runat="server" Text='<%# Eval("PaymentID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TaxIDLabel" runat="server" Text='<%# Eval("TaxID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TaxLabel" runat="server" Text='<%# Eval("Tax") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateSoldLabel" runat="server" Text='<%# Eval("DateSold") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">SalesID</th>
                                    <th runat="server">TransactionID</th>
                                    <th runat="server">ProductID</th>
                                    <th runat="server">CategoryID</th>
                                    <th runat="server">ColorID</th>
                                    <th runat="server">Price</th>
                                    <th runat="server">PaymentID</th>
                                    <th runat="server">TaxID</th>
                                    <th runat="server">Tax</th>
                                    <th runat="server">DateSold</th>
                                    <th runat="server">Username</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Label ID="SalesIDLabel" runat="server" Text='<%# Eval("SalesID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TransactionIDLabel" runat="server" Text='<%# Eval("TransactionID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CategoryIDLabel" runat="server" Text='<%# Eval("CategoryID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ColorIDLabel" runat="server" Text='<%# Eval("ColorID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PaymentIDLabel" runat="server" Text='<%# Eval("PaymentID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TaxIDLabel" runat="server" Text='<%# Eval("TaxID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TaxLabel" runat="server" Text='<%# Eval("Tax") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DateSoldLabel" runat="server" Text='<%# Eval("DateSold") %>' />
                    </td>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
