<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ServiceProviderDesk.aspx.cs" Inherits="ServiceProviderDesk" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 100%;
        }
        .auto-style13 {
            width: 166px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="49px" BackColor="White" BorderColor="Black">
        <asp:Button ID="btnServiceProviderDesk" runat="server"  Text="ServiceDesk" OnClick="btnServiceProviderDesk_Click" Visible="False" Font-Names="Yu Gothic UI Semibold" BackColor="White" BorderColor="Black" />
        &nbsp;<asp:Button ID="btnLogout" runat="server" BackColor="White" BorderColor="Black" Font-Names="Yu Gothic UI Semibold" OnClick="btnLogout_Click" Text="logout" Visible="False" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblProfile" runat="server"></asp:Label>
    </asp:Panel>
    <p>
        <table class="auto-style12">
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td> &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>
                    <asp:Label ID="lblHeader" runat="server" Font-Names="Comic Sans MS" ForeColor="#00CC00" Text="Complete belowed order "></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td colspan="2" rowspan="2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ServiceId" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                            <asp:BoundField DataField="ServiceId" HeaderText="ServiceId" SortExpression="ServiceId" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                            <asp:BoundField DataField="ContectNumber" HeaderText="ContectNumber" SortExpression="ContectNumber" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Service" HeaderText="Service" SortExpression="Service" />
                            <asp:BoundField DataField="Issue" HeaderText="Issue" SortExpression="Issue" />
                            <asp:BoundField DataField="ServiceProvider" HeaderText="ServiceProvider" SortExpression="ServiceProvider" />
                            <asp:BoundField DataField="ServiceProvided" HeaderText="ServiceProvided" SortExpression="ServiceProvided" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBLOGIN %>" SelectCommand="SELECT * FROM [OrderPlace] WHERE ([ServiceProvider] = @ServiceProvider)" DeleteCommand="DELETE FROM [OrderPlace] WHERE [ServiceId] = @ServiceId" InsertCommand="INSERT INTO [OrderPlace] ([Id], [UserName], [ContectNumber], [Address], [Email], [Service], [Issue], [ServiceProvider], [ServiceProvided]) VALUES (@Id, @UserName, @ContectNumber, @Address, @Email, @Service, @Issue, @ServiceProvider, @ServiceProvided)" UpdateCommand="UPDATE [OrderPlace] SET [Id] = @Id, [UserName] = @UserName, [ContectNumber] = @ContectNumber, [Address] = @Address, [Email] = @Email, [Service] = @Service, [Issue] = @Issue, [ServiceProvider] = @ServiceProvider, [ServiceProvided] = @ServiceProvided WHERE [ServiceId] = @ServiceId">
                        <DeleteParameters>
                            <asp:Parameter Name="ServiceId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="ContectNumber" Type="Decimal" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Service" Type="String" />
                            <asp:Parameter Name="Issue" Type="String" />
                            <asp:Parameter Name="ServiceProvider" Type="String" />
                            <asp:Parameter Name="ServiceProvided" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:SessionParameter DefaultValue="Nirmal" Name="ServiceProvider" SessionField="ServiceUserName" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Id" Type="Int32" />
                            <asp:Parameter Name="UserName" Type="String" />
                            <asp:Parameter Name="ContectNumber" Type="Decimal" />
                            <asp:Parameter Name="Address" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Service" Type="String" />
                            <asp:Parameter Name="Issue" Type="String" />
                            <asp:Parameter Name="ServiceProvider" Type="String" />
                            <asp:Parameter Name="ServiceProvided" Type="String" />
                            <asp:Parameter Name="ServiceId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
    <p>
    </p>
</asp:Content>

