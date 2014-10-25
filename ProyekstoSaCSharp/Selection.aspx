<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Selection.aspx.cs" Inherits="ProyekstoSaCSharp.Selection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="text-center"><h1>Selection</h1></div>
        <br />
            <center>
            <table >
                <tr>
                    <td class="col-md-4">
                     <a href="Main.aspx"><img src="img/item.png" height="180px" width="180px" />
                    </a>

                    </td>
                    <td class="col-md-4">
                      <a href="Add.aspx">  <img  src="img/products.png" height="180px" width="180px"/>
                    </a></td >
                    <td class="col-md-4">
                       <a href="Sales.aspx"> <img src="img/transaction.png" height="180px" width="180px"/>
                    </a>

                    </td>
                    <td class="col-md-4">
                       <a href="Returns.aspx"> <img src="img/return.png" height="180px" width="180px"/>
                    </a>
                </tr>
                <tr>
                    <td class="col-md-4" >
                       <center style="font-size:larger 18px"><p class="lead">Add an Item</p></center> 
                    </td>
                    <td class="col-md-4">
                        <center style="font-size:larger 18px"><p class="lead">Add Product Classification</p></center> 
                    </td>
                    <td class="col-md-4">
                      <center style="font-size:larger 18px"><p class="lead">Sales</p></center> 
                    </td>
                    <td class="col-md-4">
                      <center style="font-size:larger 18px"><p class="lead">Returns</p></center> 
                    </td>
                </tr>
            </table>
                </center>
    </div>
    </form>
</body>
</html>
