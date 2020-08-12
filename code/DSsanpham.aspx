<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="DSsanpham.aspx.cs" Inherits="WedDuLich.DSsanpham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        height: 31px;
    }
</style>
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
                    <asp:Label ID="tensp" runat="server" Text='<%# Eval("TenTour") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Chi Tiết" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>
