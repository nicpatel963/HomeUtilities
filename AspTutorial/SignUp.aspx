<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style9 {
        width: 165px;
        height: 29px;
    }
    .auto-style13 {
        height: 29px;
        width: 715px;
    }
    .auto-style11 {
        width: 165px;
        height: 26px;
    }
    .auto-style12 {
        height: 26px;
        width: 715px;
    }
        .auto-style8 {
        width: 165px;
            height: 81px;
        }
        .auto-style7 {
          
            width: 1180px;
            height: 79px;
        }
        .auto-style14 {
            width: 715px;
        }
    .auto-style15 {
            height: 34px;
            width: 176px;
        }
    .auto-style16 {
        width: 715px;
        height: 34px;
    }
        .auto-style17 {
            width: 715px;
            height: 81px;
        }
        .auto-style18 {
            width: 176px;
        }
       
        .auto-style19 {
            width: 176px;
            height: 26px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <table class="auto-style7" >
        <tr>
            <td class="auto-style15"> &nbsp;</td>
            <td class="auto-style16">
                <asp:Label ID="Label1" runat="server" Font-Names="Comic Sans MS" ForeColor="#CC0000" Text="* indicate mandatory field."></asp:Label>
            </td>
        
        </tr>
        <tr>
            <td class="auto-style15"> <asp:Label ID="lblUsername" runat="server" Text="username:"></asp:Label></td>
            <td class="auto-style14"><asp:TextBox ID="TextBoxUsername" runat="server" ToolTip="enter Username" Width="273px" ></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" Display="Dynamic" ErrorMessage="username is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        
        </tr>
        <tr>
            <td class="auto-style18"> <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
            <td class="auto-style14"><asp:TextBox ID="TextBoxPassword" runat="server" ToolTip="enter password" Width="271px" TextMode="Password"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="Password is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="minimum 8 char required." Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="^[\s\S]{8,}$"></asp:RegularExpressionValidator>
            </td>
        
        </tr>
        <tr>
            <td class="auto-style19"> <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:"></asp:Label></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBoxConfirmPassword" runat="server" ToolTip="re enter password" Width="271px" TextMode="Password"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCpwd" runat="server" ControlToValidate="TextBoxConfirmPassword" Display="Dynamic" ErrorMessage="ConfirmPassword is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            &nbsp;<asp:CompareValidator ID="CompareValidatorCpwd" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxConfirmPassword" ErrorMessage="password does not match" Font-Names="Comic Sans MS" ForeColor="#CC0000"></asp:CompareValidator>
            </td>
        <tr>
            <td class="auto-style19"> <asp:Label ID="lblContectNumber" runat="server" Text="ContectNumber:"></asp:Label></td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxContectNumber" runat="server" EnableTheming="False" ToolTip="10 digit number" Width="270px"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorCnumber" runat="server" ControlToValidate="TextBoxContectNumber" Display="Dynamic" ErrorMessage="ContectNumber is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatornum" runat="server" ControlToValidate="TextBoxContectNumber" ErrorMessage="Invalid number!!" Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
        <tr>
            <td class="auto-style19"> <asp:Label ID="lblAddress" runat="server" Text="Address:"></asp:Label></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBoxAddress" runat="server" Height="65px" TextMode="MultiLine" Width="312px" ToolTip="permenant address"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress" runat="server" ControlToValidate="TextBoxAddress" Display="Dynamic" ErrorMessage="Address is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
        <tr>
            <td class="auto-style19"> <asp:Label ID="lblEmail" runat="server" Text="EmailAddress:"></asp:Label></td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBoxEmail" runat="server" EnableTheming="False" ToolTip="enter email" Width="317px"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress0" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Email  is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Invalid Email !!!" Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </tr>
        <tr>
            <td class="auto-style18"></td>
            <td class="auto-style14">
                <asp:Button ID="btnSignUp" runat="server" Text="SignUp" OnClick="btnSignUp_Click" BackColor="White" BorderColor="Black" />
        </tr>
    </table>

    
</asp:Content>

