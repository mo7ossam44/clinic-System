<%@ Page Title="Dates" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
        <main aria-labelledby="title">
        <h2 id="title">&nbsp;</h2>
    <h2 style="font-weight: bold">Schedule Dates </h2>
    <p>&nbsp;</p>
<table class="w-100">
    <tr>
        <td style="width: 180px; font-weight: normal;">-Date</td>
        <td style="width: 145px">
            <asp:TextBox ID="TextBox3" runat="server" type="date" Width="217px" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        </td>
        <td style="width: 180px">-Time</td>
        <td style="width: 100px">
            <asp:TextBox ID="TextBox2" runat="server" Width="217px"></asp:TextBox>
        </td>
    </tr>
</table>
<p>
    &nbsp;</p>
<p>&nbsp;</p>
<p>
    <asp:GridView ID="GridView1" runat="server" Height="20px" Width="954px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" Font-Size="Medium" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle Font-Size="Small" ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
</p>
    <p>&nbsp;</p>
<table class="w-100">
    <tr>
        <td style="width: 169px">
                                <asp:Button ID="Button22" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button23_Click" Text="Load" Width="142px" />
                            </td>
        <td style="width: 168px">
                                <asp:Button ID="Button24" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button25_Click" Text="Search" Width="142px" />
                            </td>
        <td style="width: 169px">
                                <asp:Button ID="Button25" runat="server" BackColor="#333333" Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="60px" OnClick="Button26_Click" Text="Search H" Width="145px" />
                            </td>
        <td style="width: 172px">
                                &nbsp;</td>
        <td>
                                &nbsp;</td>
    </tr>
</table>
    <p>&nbsp;</p>

    </main>
</asp:Content>
