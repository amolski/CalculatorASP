<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Kalkulator_ASP.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style type="text/css">
        .Table{    
            margin:auto; border-spacing:0; border-style:ridge;
        }
        .calcButton{
            margin:3px; width:30px; height:30px; font-size: 18px;
        }
        .calcWideButton{
            margin:3px; width:70px; height:30px; font-size: 18px;
        }
        .calcHighButton{
            margin:3px; width:30px; height:70px; font-size: 18px;
        }
        #txtOutput{
            border-style:ridge; border-width:5px; font-size: 18px; width:190px; text-align:right;
        }
        tr{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divCalculator" >
            <table class="Table">
                <tr>
                    <td colspan="5">
                        <asp:TextBox ID="txtOutput" runat="server" ReadOnly="true" MaxLength="24" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td ><asp:Button ID="btn7" CssClass="calcButton" runat="server" Text="7" OnCommand="btnCalcCommand" CommandArgument="7"/></td> 
                    <td ><asp:Button ID="btn8" CssClass="calcButton" runat="server" Text="8" OnCommand="btnCalcCommand" CommandArgument="8"/></td> 
                    <td ><asp:Button ID="btn9" CssClass="calcButton" runat="server" Text="9" OnCommand="btnCalcCommand" CommandArgument="9"/></td> 
                    <td ><asp:Button ID="btnDiv" CssClass="calcButton" runat="server" Text="/" OnCommand="btnCalcCommand" CommandArgument="/"/></td> 
                    <td ><asp:Button ID="btnC" CssClass="calcButton" runat="server" Text="C" OnCommand="btnCalcCommand" CommandArgument="C"/></td> 
                </tr>
                <tr>
                    <td ><asp:Button ID="btn4" CssClass="calcButton" runat="server" Text="4" OnCommand="btnCalcCommand" CommandArgument="4"/></td> 
                    <td ><asp:Button ID="btn5" CssClass="calcButton" runat="server" Text="5" OnCommand="btnCalcCommand" CommandArgument="5"/></td> 
                    <td ><asp:Button ID="btn6" CssClass="calcButton" runat="server" Text="6" OnCommand="btnCalcCommand" CommandArgument="6"/></td> 
                    <td ><asp:Button ID="btnMul" CssClass="calcButton" runat="server" Text="*" OnCommand="btnCalcCommand" CommandArgument="*"/></td> 
                    <td ><asp:Button ID="btnBack" CssClass="calcButton" runat="server" Text="&larr;" OnCommand="btnCalcCommand" CommandArgument="L"/></td> 
                </tr>
                <tr>
                    <td><asp:Button ID="btn1" CssClass="calcButton" runat="server" Text="1" OnCommand="btnCalcCommand" CommandArgument="1"/></td>
                    <td><asp:Button ID="btn2" CssClass="calcButton" runat="server" Text="2" OnCommand="btnCalcCommand" CommandArgument="2"/></td>
                    <td><asp:Button ID="btn3" CssClass="calcButton" runat="server" Text="3" OnCommand="btnCalcCommand" CommandArgument="3"/></td>
                    <td><asp:Button ID="btnMin" CssClass="calcButton" runat="server" Text="-" OnCommand="btnCalcCommand" CommandArgument="-"/></td>
                    <td rowspan="2"><asp:Button ID="btnEnter" CssClass="calcHighButton" runat="server" Text="&#8626;" OnCommand="btnCalcCommand" CommandArgument="E"/></td>
                </tr>
                <tr>
                    <td colspan="2"><asp:Button ID="btn0" CssClass="calcWideButton" runat="server" Text="0" OnCommand="btnCalcCommand" CommandArgument="0"/></td>
                    <td><asp:Button ID="btnDot" CssClass="calcButton" runat="server" Text="," OnCommand="btnCalcCommand" CommandArgument=","/></td>
                    <td><asp:Button ID="btnPlus" CssClass="calcButton" runat="server" Text="+" OnCommand="btnCalcCommand" CommandArgument="+" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
