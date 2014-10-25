<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="ProyekstoSaCSharp.Returns" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
            color: #003300;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: right;
            width: 89px;
        }
        .auto-style5 {
            width: 89px;
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
        .auto-style6 {
            font-size: x-large;
            font-family: Arial, Helvetica, sans-serif;
            color: #800000;
        }
        .auto-style7 {
            font-family: Arial, Helvetica, sans-serif;
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="txtDefect1">
    
        <span class="auto-style1"><strong>Returns</strong></span><br />
        <asp:Label ID="Label1" runat="server" style="color: #FF0066; font-size: small; font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif" Text="Admin is logged in"></asp:Label>
        <br />
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        <ul>
            <li><a href="Main.aspx">Add Product</a></li>
            <li><a href="Add.aspx">Add Classification</a></li>
            <li><a href="Sales.aspx">Sell a Product</a></li>
            <li><a href="Returns.aspx">Return a Product</a></li>
        </ul>
        <br />
        <br />
        <span class="auto-style6"><strong>Sold Products:</strong></span><br />
        <asp:SqlDataSource ID="SqlDataSourceSoldProducts" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT * FROM [Sales] ORDER BY [DateSold] DESC"></asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="SalesID" DataSourceID="SqlDataSourceSoldProducts">
            <Columns>
                <asp:BoundField DataField="SalesID" HeaderText="SalesID" InsertVisible="False" ReadOnly="True" SortExpression="SalesID" />
                <asp:BoundField DataField="TransactionID" HeaderText="TransactionID" SortExpression="TransactionID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="ColorID" HeaderText="ColorID" SortExpression="ColorID" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" SortExpression="PaymentID" />
                <asp:BoundField DataField="TaxID" HeaderText="TaxID" SortExpression="TaxID" />
                <asp:BoundField DataField="Tax" HeaderText="Tax" SortExpression="Tax" />
                <asp:BoundField DataField="DateSold" HeaderText="DateSold" SortExpression="DateSold" />
                <asp:BoundField DataField="Username" HeaderText="Sold By" SortExpression="Username" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
        <br />
        <strong><span class="auto-style2"><span class="auto-style7">Return a Product:</span><br />
        </span>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Sales ID:</td>
                <td><strong>
                    <asp:TextBox ID="txtSalesID" runat="server" Width="132px" ValidationGroup="Return"></asp:TextBox>
                    </strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSalesID" ErrorMessage="Please input Sales ID" ForeColor="Red" ValidationGroup="Return">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Defect:</td>
                <td>
                    <asp:TextBox ID="txtDefect" runat="server" Width="285px" ValidationGroup="Return"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDefect" ErrorMessage="Please state the defect" ForeColor="Red" ValidationGroup="Return">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnReturn" runat="server" Text="Return" OnClick="btnReturn_Click" ValidationGroup="Return" />
                    <asp:ConfirmButtonExtender ID="btnReturn_ConfirmButtonExtender" runat="server" ConfirmText="Return the product?" Enabled="True" TargetControlID="btnReturn">
                    </asp:ConfirmButtonExtender>
                </td>
            </tr>
        </table>
        </strong>
        <asp:SqlDataSource ID="SqlDataSourceReturns" runat="server" ConnectionString="<%$ ConnectionStrings:SalesInventoryConnectionString2 %>" SelectCommand="SELECT * FROM [Returns] ORDER BY [DateReturned] DESC"></asp:SqlDataSource>
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ReturnID" DataSourceID="SqlDataSourceReturns">
            <Columns>
                <asp:BoundField DataField="ReturnID" HeaderText="ReturnID" InsertVisible="False" ReadOnly="True" SortExpression="ReturnID" />
                <asp:BoundField DataField="SalesID" HeaderText="SalesID" SortExpression="SalesID" />
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="ColorID" HeaderText="ColorID" SortExpression="ColorID" />
                <asp:BoundField DataField="Defect" HeaderText="Defect" SortExpression="Defect" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="TaxID" HeaderText="TaxID" SortExpression="TaxID" />
                <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" SortExpression="PaymentID" />
                <asp:BoundField DataField="DateReturned" HeaderText="DateReturned" SortExpression="DateReturned" />
                <asp:BoundField DataField="Username" HeaderText="Received By:" SortExpression="Username" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <br />
    
    </div>
    </form>
</body>
</html>
