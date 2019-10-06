<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServiceProviderLogin.aspx.cs" Inherits="ServiceProviderLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style7 {
            width: 1079px;
            height: 79px;
        }
        .auto-style12 {
            width: 361px;
            height: 29px;
        }
        .auto-style13 {
            height: 26px;
            width: 500px;
        }
        .auto-style14 {
            width: 3838px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style7">
        <tr>
            <td class="auto-style13"> <asp:Label ID="lblUsername" runat="server" Text="username:"></asp:Label></td>
            <td class="auto-style14"><asp:TextBox ID="TextBoxUsername" runat="server"></asp:TextBox>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" runat="server" ControlToValidate="TextBoxUsername" Display="Dynamic" ErrorMessage="username is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        
            <td class="auto-style11"> 
                &nbsp;</td>
        
        </tr>
        <tr>
            <td class="auto-style13"> <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label></td>
            <td class="auto-style14"><asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password"></asp:TextBox>   
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" Display="Dynamic" ErrorMessage="Password is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        
            <td class="auto-style12">  
                &nbsp;</td>
        
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style14">
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" BackColor="White" BorderColor="Black"  /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButtonSignUp" runat="server" PostBackUrl="~/ServiceProviderSignUp.aspx" CausesValidation="False" >do not have account!!</asp:LinkButton>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    </asp:Content>

