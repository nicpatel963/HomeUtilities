<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServiceProviderSignUp.aspx.cs" Inherits="ServiceProviderSignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 1036px;
        }
        .auto-style13 {
            height: 447px;
            margin-left: 5px;
        }
        .auto-style14 {
            height: 44px;
        }
        .auto-style15 {
            width: 1036px;
            height: 44px;
        }
        .auto-style16 {
            height: 28px;
        }
        .auto-style17 {
            width: 1036px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" ForeColor="#CC0000" Text="* indicate mandatory field."></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxUsername" runat="server" ToolTip="enter Username" Width="273px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" Display="Dynamic" ErrorMessage="username is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxPassword" runat="server" ToolTip="enter password" Width="271px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="Password is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="minimum 8 char required." Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="^[\s\S]{8,}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" ToolTip="re enter password" Width="271px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCpwd" runat="server" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="ConfirmPassword is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidatorCpwd" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="password does not match" Font-Names="Comic Sans MS" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lblContectNumber" runat="server" Text="ContectNumber:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxContectNumber" runat="server" EnableTheming="False" ToolTip="10 digit number" Width="270px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCnumber" runat="server" ControlToValidate="TextBoxContectNumber" Display="Dynamic" ErrorMessage="ContectNumber is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatornum" runat="server" ControlToValidate="TextBoxContectNumber" ErrorMessage="Invalid number!!" Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxAddress" runat="server" Height="65px" TextMode="MultiLine" ToolTip="permenant address" Width="312px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="TextBoxAddress" Display="Dynamic" ErrorMessage="Address is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">
                <asp:Label ID="lblEmail" runat="server" Text="EmailAddress:"></asp:Label>
            </td>
            <td class="auto-style15">
                <asp:TextBox ID="TextBoxEmail" runat="server" EnableTheming="False" ToolTip="enter email" Width="317px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress0" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Email  is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Invalid Email !!!" Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:Label ID="lblServices" runat="server" Text="ServiceToProvide:"></asp:Label>
            </td>
            <td class="auto-style17">
                <asp:DropDownList ID="DropDownListService" runat="server" Height="20px" Width="138px">
                    <asp:ListItem Selected="True">plumber</asp:ListItem>
                    <asp:ListItem>Painter</asp:ListItem>
                    <asp:ListItem>carpenter</asp:ListItem>
                    <asp:ListItem>chef</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                <asp:Label ID="lblWorker" runat="server" Text="Worker:"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:CheckBox ID="CheckBoxWorker" runat="server" Font-Italic="False" Font-Overline="False" ForeColor="#FF0066" Text="To be a ServiceProvider you must have atleast 10 workers..!!" />
&nbsp;<asp:Label ID="lblWorkerError" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style12">
                <asp:Button ID="btnSignUp" runat="server"  Text="SignUp" OnClick="btnSignUp_Click" BackColor="White" BorderColor="Black" />
            </td>
        </tr>
    </table>
</asp:Content>

