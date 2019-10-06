<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="First.aspx.cs" Inherits="First" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 884px;
        }
        .auto-style8 {
            width: 349px;
        }
        .auto-style12 {
            width: 780px;
            height: 26px;
        }
        .auto-style13 {
            width: 780px;
            height: 35px;
        }
        .auto-style14 {
            width: 338px;
        }
        .auto-style15 {
            width: 884px;
            height: 35px;
        }
        .auto-style16 {
            width: 338px;
            height: 35px;
        }
        .auto-style17 {
            width: 100%;
            height: 64px;
        }
        .auto-style18 {
            width: 92px;
        }
        .auto-style19 {
            width: 114px;
        }
        .auto-style20 {
            width: 117px;
        }
        .auto-style21 {
            width: 131px;
        }
        .auto-style24 {
            width: 108px;
        }
        .auto-style25 {
            width: 121px;
        }
        .auto-style26 {
            width: 110px;
        }
        .auto-style27 {
            width: 122px;
        }
        .auto-style28 {
            width: 104px;
        }
        .auto-style29 {
            width: 126px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                 <asp:Panel ID="Panel1" runat="server" Height="49px">
    <asp:Button ID="btnUserDeskDesk" runat="server" Font-Names="Yu Gothic UI Semibold" OnClick="btnUserDeskDesk_Click" Text="UserDesk" Visible="False" BackColor="White" BorderColor="Black" />
                     &nbsp;<asp:Button ID="btnServiceProviderDesk" runat="server" Font-Names="Yu Gothic UI Semibold" OnClick="btnServiceProviderDesk_Click" Text="ServiceDesk" Visible="False" BackColor="White" BorderColor="Black" />
                     &nbsp;<asp:Button ID="btnLogout" runat="server" Font-Names="Yu Gothic UI Semibold" OnClick="btnLogout_Click" Text="logout" Visible="False" BackColor="White" BorderColor="Black" />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblProfile" runat="server"></asp:Label>
</asp:Panel>
               
    <br />

<br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style15">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                </td>
            <td class="auto-style13"></td>
      
            <td class="auto-style16"> </td>
        </tr>
        <tr>
            <td class="auto-style6" dir="ltr" rowspan="5">
                 &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style14">
                &nbsp;</td>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:ImageButton ID="ImageButtonPlumber" runat="server" Height="250px" ImageAlign="Middle" ImageUrl="~/images/plumber.jpg" Width="254px" OnClick="ImageButtonPlumber_Click" />
            </td>
            <td class="auto-style14">
                <asp:ImageButton ID="ImageButtonPainter" runat="server" Height="250px" ImageAlign="Middle" ImageUrl="~/images/painter.gif" Width="250px" OnClick="ImageButtonPainter_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Label ID="lblPlumber" runat="server" AssociatedControlID="ImageButtonPlumber" Text="service :- plumber"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="lblPainter" runat="server" AssociatedControlID="ImageButtonPainter" Text="service :- painter"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:ImageButton ID="ImageButtonCarpenter" runat="server" Height="250px" ImageUrl="~/images/carpenter.jpg" Width="250px" OnClick="ImageButtonCarpenter_Click" />
            </td>
            <td class="auto-style14">
                <asp:ImageButton ID="ImageButtonChef" runat="server" Height="250px" ImageUrl="~/images/chef.jpg" Width="250px" OnClick="ImageButtonChef_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style12">
                <asp:Label ID="lblarpenter" runat="server" AssociatedControlID="ImageButtonCarpenter" Text="service :- carpenter"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:Label ID="lblChef" runat="server" AssociatedControlID="ImageButtonChef" Text="service :- chef"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
<br />
<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
<br />
<br />
<br />
<br />
<br />
<br />
</asp:Content>
    


