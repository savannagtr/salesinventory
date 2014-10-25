<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="ProyekstoSaCSharp.Add" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: small;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            font-size: medium;
            text-align: right;
        }
        .auto-style5 {
            width: 127px;
        }
        .auto-style6 {
            text-align: right;
        }
        .auto-style8 {
            font-size: medium;
        }
        .auto-style9 {
            height: 31px;
            font-size: medium;
        }
        .auto-style11 {
            height: 31px;
            font-size: medium;
            text-align: right;
        }
        .auto-style12 {
            height: 31px;
            width: 147px;
        }
        .auto-style13 {
            width: 147px;
        }
        .auto-style14 {
            font-size: medium;
            text-align: left;
        }
        .auto-style15 {
            height: 31px;
            font-size: medium;
            text-align: left;
        }
        .auto-style16 {
            width: 145px;
        }
        .auto-style19 {
            font-size: medium;
            text-align: right;
            width: 173px;
        }
        .auto-style20 {
            height: 31px;
            font-size: medium;
            text-align: right;
            width: 173px;
        }
        .auto-style21 {
            width: 173px;
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
        .auto-style22 {
            font-size: x-large;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #003300;
        }
        .auto-style23 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
        }
        .auto-style24 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            font-weight: bold;
        }
        .auto-style25 {
            font-family: Arial, Helvetica, sans-serif;
            font-size: large;
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="auto-style22">
    
        <strong>
    
        Product Classification<br />
        <asp:Label ID="Label1" runat="server" style="color: #FF0066; font-size: small" Text="Admin is logged in"></asp:Label>
     
        </strong></span>
    <ul>
            <li><a href="Main.aspx">Add Product</a></li>
            <li><a href="Add.aspx">Add Classification</a></li>
            <li><a href="Sales.aspx">Sell a Product</a></li>
            <li><a href="Returns.aspx">Return a Product</a></li>
        </ul>
        <span class="auto-style2">
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        
        </span><strong><br class="auto-style23" />
        <br class="auto-style23" />
        <span class="auto-style25">Add new Category:</span><span class="auto-style1"><br />
        <br />
        </span>
        </strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp; Category Code:</td>
                <span class="auto-style1">
                <td class="auto-style5">
        <asp:TextBox ID="txtAddCategoryID" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddCategoryID" ErrorMessage="Please enter a unique category code" ForeColor="Red" ValidationGroup="AddCategory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Category Name:</td>
                <td class="auto-style5">
        <asp:TextBox ID="txtAddCategoryName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAddCategoryName" ErrorMessage="Please enter a category name" ForeColor="Red" ValidationGroup="AddCategory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Description:</td>
                <td class="auto-style5">
        <asp:TextBox ID="txtCategoryDescription" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5"><span class="auto-style1">
        <asp:Button ID="btnAddCategory" runat="server" OnClick="btnAddCategory_Click" Text="Add" ValidationGroup="AddCategory" />
        <asp:ConfirmButtonExtender ID="btnAddCategory_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure you want to add new Category?" Enabled="True" TargetControlID="btnAddCategory">
        </asp:ConfirmButtonExtender>
    
                    </span></td>
                <td>
                    <asp:Label ID="lblCategory" runat="server" ViewStateMode="Enabled"></asp:Label>
                </td>
            </tr>
        </table>
        </span>
        <br class="auto-style24" />
        <strong><span class="auto-style25">Add new Color:</span><span class="auto-style1"><br />
        </span>
        </strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style11">Color Code:</td>
        <span class="auto-style1">
                <td class="auto-style12">
        <asp:TextBox ID="txtAddColorID" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style15">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtAddColorID" ErrorMessage="Please enter a color code" ForeColor="Red" ValidationGroup="AddColor"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Color Name:</td>
                <td class="auto-style13">
        <asp:TextBox ID="txtAddColorName" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAddColorName" ErrorMessage="Please enter a color name" ForeColor="Red" ValidationGroup="AddColor"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style13">
        <asp:Button ID="btnAddColor" runat="server" OnClick="btnAddColor_Click" Text="Add" ValidationGroup="AddColor" />
        <asp:ConfirmButtonExtender ID="btnAddColor_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure you want to add new Color?" Enabled="True" TargetControlID="btnAddColor">
        </asp:ConfirmButtonExtender>
                </td>
                <td>
                    <asp:Label ID="lblColor" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </span>
        <br />
        &nbsp;<br />
        <strong><span class="auto-style25">Add new Supplier:</span><span class="auto-style1"><br />
        </span>
        </strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Supplier Code:
        </td>
        <span class="auto-style1">
                <td class="auto-style16">
        <asp:TextBox ID="txtAddSuppSupplierID" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAddSuppSupplierID" ErrorMessage="Please enter a Supplier Code" ForeColor="Red" ValidationGroup="AddSupplier"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Supplier Name: </td>
                <td class="auto-style16"> <asp:TextBox ID="txtAddSuppSupplierName" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAddSuppSupplierName" ErrorMessage="Please enter a Supplier Name" ForeColor="Red" ValidationGroup="AddSupplier"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Address:</td>
                <td class="auto-style16"> <asp:TextBox ID="txtAddSuppAddress" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddSuppAddress" ErrorMessage="Please enter a Supplier Address" ForeColor="Red" ValidationGroup="AddSupplier"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Contact Number: </td>
                <td class="auto-style16"> <asp:TextBox ID="txtAddSuppContactNo" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtAddSuppContactNo" ErrorMessage="Please enter a Contact Number" ForeColor="Red" ValidationGroup="AddSupplier"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style16">
        <asp:Button ID="btnAddSupplier" runat="server" OnClick="btnAddSupplier_Click" Text="Add" ValidationGroup="AddSupplier" />
                    <asp:ConfirmButtonExtender ID="btnAddSupplier_ConfirmButtonExtender"  runat="server" ConfirmText="Do you want to add a new supplier?" Enabled="True" TargetControlID="btnAddSupplier">
                    </asp:ConfirmButtonExtender>
                </td>
                <td>
                    <asp:Label ID="lblSupplier" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        </span>
        <br />
        <strong><span class="auto-style25">Add new Warehouse:</span><span class="auto-style1"><br />
        </span>
        </strong>
        <table class="auto-style3">
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Warehouse Code:
        </td>
        <span class="auto-style1"><strong>
                <td class="auto-style13">
        <asp:TextBox ID="txtAddWHWarehouseID" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
        </strong>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtAddWHWarehouseID" ErrorMessage="Please enter a Warehouse Code" ForeColor="Red" ValidationGroup="AddWarehouse"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <strong>
            <tr>
                <td class="auto-style19">Warehouse Name:&nbsp;</td>
                <td class="auto-style13"> &nbsp;<asp:TextBox ID="txtAddWHWarehouseName" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAddWHWarehouseName" ErrorMessage="Please enter a Warehouse Name" ForeColor="Red" ValidationGroup="AddWarehouse"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">Contact Number:&nbsp;</td>
                <td class="auto-style13"> <asp:TextBox ID="txtAddWHContactNo" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtAddWHContactNo" ErrorMessage="Please enter a Warehouse Contact Number" ForeColor="Red" ValidationGroup="AddWarehouse"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style20">Address:
        </td>
                <td class="auto-style12">
        <asp:TextBox ID="txtAddWHAddress" runat="server" CssClass="auto-style8"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtAddWHAddress" ErrorMessage="Please enter a Warehouse Address" ForeColor="Red" ValidationGroup="AddWarehouse"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style13">
        <asp:Button ID="btnAddWarehouse" runat="server" OnClick="btnAddWarehouse_Click" Text="Add" ValidationGroup="AddWarehouse" />
        <asp:ConfirmButtonExtender ID="btnAddWarehouse_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure you want to add new Warehouse?" Enabled="True" TargetControlID="btnAddWarehouse">
        </asp:ConfirmButtonExtender>
    
                </td>
                <td>
                    <asp:Label ID="lblWarehouse" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        </strong></span><br />
    
    </div>
    </form>
</body>
</html>
