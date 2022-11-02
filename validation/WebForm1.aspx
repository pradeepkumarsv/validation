<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="validation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 31px;
            text-align: left;
            font-size: small;
            color: #FF0000;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
            width: 688px;
        }
        .auto-style6 {
            height: 31px;
            text-align: right;
            width: 688px;
        }
        .auto-style7 {
            text-align: right;
            width: 688px;
            height: 39px;
        }
        .auto-style8 {
            text-align: left;
            height: 39px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style6">Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Email:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4" style="font-size: small; color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter the valid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Password:<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style8" style="font-size: small; color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Confirm Password:<asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style4" style="font-size: small; color: #FF0000">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm Password is required"></asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both Password must be same"></asp:CompareValidator>
                        <br />
                    </td>
                </tr>
                
            </table>
            <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <center><asp:Button ID="Button1" runat="server" Text="Register Now" OnClick="Button1_Click1" /></center>
        </div>
    </form>
</body>
</html>
