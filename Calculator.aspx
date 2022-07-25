<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="Simple_Calculator.Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Validation.js" defer></script>
    <link rel="stylesheet" href="style.css"/>
    <title>Calculator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Label class="header" runat="server">Calculator</asp:Label>

            <asp:Label class="label" id="label1" runat="server" Text="Enter First Number(X): " For="textbox1"></asp:Label>
            <asp:textbox class="textbox" id="textbox1" runat="server"></asp:textbox>

            <asp:Label class="label" id="label2" runat="server" Text="Enter 2nd Number(Y): " For="textbox2"></asp:Label>
            <asp:textbox class="textbox" id="textbox2" runat="server" ></asp:textbox>

            <asp:Label class="label" id="label3" runat="server" Text="Select Operation: " For="operation"></asp:Label>
            <asp:Dropdownlist class="textbox" id="operation" runat="server" >
                <asp:ListItem id="select" runat="server" Text="--select--"></asp:ListItem>
                <asp:ListItem id="add" runat="server" value="+" Text="Addition(+)"></asp:ListItem>
                <asp:ListItem id="subtract" runat="server" value="-" Text="Subtraction(-)"></asp:ListItem>
                <asp:ListItem id="multiply" runat="server" value="*" Text="Multiplication(*)"></asp:ListItem>
                <asp:ListItem id="divide" runat="server" value="/" Text="Division(/)"></asp:ListItem>
            </asp:Dropdownlist>
            
            <asp:Button id="submitBtn" Class="btn" runat="server" Text="Calculate" OnClientClick="javascript: return validate();" OnClick="calculator" ></asp:Button>

            <%--<asp:Label class="label" id="answer" runat="server" Text="Answer: "></asp:Label>
            <asp:textbox class="textbox" id="results" runat="server"></asp:textbox>--%>
        </div>
    </form>
</body>
</html>
