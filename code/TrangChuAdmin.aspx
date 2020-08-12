<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="TrangChuAdmin.aspx.cs" Inherits="WedDuLich.TrangChuAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dtdshang" runat="server" RepeatColumns="4">
    <ItemTemplate>
        <table class="auto-style3" style="width: 200px; height: 240px">
            <tr>
                <td class="auto-style4" style="width: 80px; height: 80px">
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl='<%# Eval("Hinh") %>' Width="200px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="ma" runat="server" Text='<%# Eval("MaSP") %>'></asp:Label>
                    -<asp:Label ID="tensp" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Chi Tiết" BackColor="#009999" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" />
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageUrl="~/Hinhanh/mua.png" Width="30px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
