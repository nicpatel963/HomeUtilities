<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 4214px;
        }
        .auto-style7 {
            width: 694px;
            height: 79px;
        }
        .auto-style8 {
            width: 111px;
        }
        .auto-style9 {
            width: 111px;
            height: 29px;
        }
        .auto-style10 {
            width: 168px;
            height: 29px;
        }
        .auto-style11 {
            width: 361px;
        }
        .auto-style12 {
            width: 361px;
            height: 29px;
        }
        .auto-style13 {
            width: 4214px;
            height: 29px;
        }
        .auto-style14 {
            width: 500px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style7">
        <tr>
            <td class="auto-style14"> <asp:Label ID="lblUsername" runat="server" Text="username:"></asp:Label></td>
            <td class="auto-style6"><asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" Display="Dynamic" ErrorMessage="username is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        
            <td class="auto-style11"> 
                &nbsp;</td>
        
        </tr>
        <tr>
            <td class="auto-style14"> <asp:Label ID="lblPassword" runat="server" Text="Password:" ></asp:Label></td>
            <td class="auto-style13"><asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="Password is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        
            <td class="auto-style12">  
                &nbsp;</td>
        
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style6">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="White" BorderColor="Black" style="height: 29px" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButtonSignUp" runat="server" PostBackUrl="SignUp.aspx" CausesValidation="False" OnClick="LinkButtonSignUp_Click">do not have account!!</asp:LinkButton>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    </div>
</asp:Content>

