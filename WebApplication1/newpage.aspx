<%@ Page Title="newpage" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="newpage.aspx.cs" Inherits="WebApplication1.newpage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">&nbsp;</h2>
    <h2>&nbsp;&nbsp;&nbsp; Your newpage</h2>
    <p>&nbsp;</p>
    <table class="w-100">
        <tr>
            <td style="width: 240px">Lable 1</td>
            <td style="width: 207px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="width: 240px">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;6</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px">Lable 2</td>
            <td style="width: 207px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 240px">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
&nbsp;7</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
&nbsp;3</td>
            <td style="width: 207px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td style="width: 240px">
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
&nbsp;8</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;4</td>
            <td style="width: 207px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td style="width: 240px">
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
&nbsp;9</td>
            <td>
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 240px">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
&nbsp;5</td>
            <td style="width: 207px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="width: 240px">
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
&nbsp;10</td>
            <td>
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

    </main>
</asp:Content>
