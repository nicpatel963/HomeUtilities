<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Service.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 24px;
        }
        .auto-style9 {
        width: 724px;
    }
    .auto-style10 {
        height: 26px;
        width: 724px;
    }
    .auto-style11 {
        height: 26px;
        width: 836px;
    }
    .auto-style12 {
            height: 26px;
            width: 1229px;
        }
        .auto-style13 {
            height: 26px;
            width: 4174px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="49px">
        &nbsp;&nbsp;&nbsp;<asp:Button ID="btnUserDeskDesk" runat="server" Font-Names="Yu Gothic UI Semibold" OnClick="btnUserDeskDesk_Click" Text="UserDesk" Visible="False" BackColor="White" BorderColor="Black" />
        &nbsp;<asp:Button ID="btnLogout" runat="server" CausesValidation="False" Font-Names="Yu Gothic UI Semibold" OnClick="btnLogout_Click" Text="logout" Visible="False" BackColor="White" BorderColor="Black" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblProfile" runat="server"></asp:Label>
    </asp:Panel>
    <table class="auto-style1">
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblNameId" runat="server" Text="CustomerId"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="lblCustomerId" runat="server" ForeColor="#336699"></asp:Label>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblName" runat="server" Text="UserName"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxFullName" runat="server" Width="556px" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress1" runat="server" ControlToValidate="TextBoxFullName" Display="Dynamic" ErrorMessage="Name  is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblContect" runat="server" Text="ContectNumber"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxContect" runat="server" Width="556px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress2" runat="server" ControlToValidate="TextBoxContect" Display="Dynamic" ErrorMessage="Contect  is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatornum" runat="server" ControlToValidate="TextBoxContect" ErrorMessage="Invalid number!!" Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxAddress" runat="server" Height="84px" TextMode="MultiLine" Width="561px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblEmail" runat="server" Text="EmailAddress"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBoxEmail" runat="server" EnableTheming="False" ToolTip="enter email" Width="317px"></asp:TextBox>  
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidatorAddress0" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Email  is empty" Font-Names="Comic Sans MS" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Invalid Email !!!" Font-Names="Comic Sans MS" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">
                </td>
            <td class="auto-style7">
                <asp:Label ID="lblService" runat="server" Text="Service"></asp:Label>
            </td>
            <td class="auto-style12"><asp:Label ID="lblServiceValue" runat="server"></asp:Label>
            </td>
            <td class="auto-style8"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblServiceProvider" runat="server" Text="ServiceProvider"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:DropDownList ID="DropDownListServiceProvider" runat="server" DataSourceID="SqlDataSource1" DataTextField="UserName" DataValueField="UserName">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBLOGIN %>" SelectCommand="SELECT [UserName] FROM [ServiceProviderLogin] WHERE ([Service] = @Service)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="plumber" Name="Service" SessionField="ServiceName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                <asp:Label ID="lblIssue" runat="server" Text="Issue"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:CheckBoxList ID="CheckBoxListIssue" runat="server" DataSourceID="SqlDataSource2" DataTextField="Issue" DataValueField="Issue">
                </asp:CheckBoxList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBLOGIN %>" SelectCommand="SELECT [Issue] FROM [Service] WHERE ([Service] = @Service)">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="plumber" Name="Service" SessionField="ServiceName" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:Label ID="lblIssueError" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                </td>
            <td class="auto-style12">
                <asp:Button ID="btnSubmit" runat="server" Text="submit" OnClick="btnSubmit_Click" BackColor="White" BorderColor="Black" />
            </td>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style10">
                &nbsp;</td>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

