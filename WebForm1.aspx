<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web_Forms_Example.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 362px;
        }
        .auto-style3 {
            height: 29px;
        }
        .auto-style4 {
            width: 362px;
            height: 29px;
        }
        .auto-style5 {
            height: 56px;
        }
        .auto-style6 {
            width: 362px;
            height: 56px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style2">Student Details</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>First Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter full Name">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Select Gender</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="164px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" InitialValue="Select Gender" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Choose Gender">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">E-Mail ID</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid E-Mail ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4">*</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Confirm Password</td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="Password not matched" TextMode="Password">*</asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Date of Birth</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBox6" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                    <asp:CompareValidator ErrorMessage="(mm/dd/yyyy)" Display="Dynamic" ID="valcDate" ControlToValidate="TextBox6" Operator="DataTypeCheck" Type="Date" runat="server"></asp:CompareValidator>           

<asp:RangeValidator ID="valrDate" runat="server" ControlToValidate="TextBox6" MinimumValue="12/31/1950" MaximumValue="1/1/2100" Type="Date" text="Invalid Date" Display="Dynamic"/>


                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style2">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
