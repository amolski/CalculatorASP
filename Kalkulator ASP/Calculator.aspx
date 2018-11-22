<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Kalkulator_ASP.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
        .centeredTable{    
            text-align:center;
            margin:auto;
            border-spacing:0;
        }
        .calcButton{
            margin:3px;
            width:30px;
            height:30px;
            font-size: 18px;
        }
        .calcWideButton{
            margin:3px;
            width:70px;
            height:30px;
            font-size: 18px;
        }
        .calcHighButton{
            margin:3px;
            width:30px;
            height:70px;
            font-size: 18px;
        }
        #txtOutput{
            border-style:ridge;
            border-width:5px;
            font-size: 18px;
            width:190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divCalculator" >
            <table class="centeredTable">
                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtOutput" runat="server" ReadOnly="true" MaxLength="24"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn7" CssClass="calcButton" runat="server" Text="7" />
                        <asp:Button ID="btn8" CssClass="calcButton" runat="server" Text="8" />
                        <asp:Button ID="btn9" CssClass="calcButton" runat="server" Text="9" />
                        <asp:Button ID="btnDiv" CssClass="calcButton" runat="server" Text="/" />
                        <asp:Button ID="btnC" CssClass="calcButton" runat="server" Text="C" />
                    </td> 
                </tr>
                
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btn4" CssClass="calcButton" runat="server" Text="4" />
                        <asp:Button ID="btn5" CssClass="calcButton" runat="server" Text="5" />
                        <asp:Button ID="btn6" CssClass="calcButton" runat="server" Text="6" />
                        <asp:Button ID="btnMul" CssClass="calcButton" runat="server" Text="*" />
                        <asp:Button ID="btnBack" CssClass="calcButton" runat="server" Text="&larr;" />
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <asp:Button ID="btn1" CssClass="calcButton" runat="server" Text="1" />
                        <asp:Button ID="btn2" CssClass="calcButton" runat="server" Text="2" />
                        <asp:Button ID="btn3" CssClass="calcButton" runat="server" Text="3" />
                        <asp:Button ID="btnMin" CssClass="calcButton" runat="server" Text="-" />
                    </td>
                    <td rowspan="2">
                        <asp:Button ID="btnEnter" CssClass="calcHighButton" runat="server" Text="&#8626;"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btn0" CssClass="calcWideButton" runat="server" Text="0" />
                        <asp:Button ID="btnDot" CssClass="calcButton" runat="server" Text="." />
                        <asp:Button ID="btnPlus" CssClass="calcButton" runat="server" Text="+" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
