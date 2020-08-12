<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="WedDuLich.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 90px;
        }
        .auto-style5 {
            width: 57px;
        }
        .auto-style6 {
            width: 57px;
            height: 60px;
        }
        .auto-style7 {
            height: 60px;
            width: 261px;
        }
        .auto-style8 {
            width: 90px;
            height: 60px;
        }
        .auto-style9 {
            width: 261px;
        }
        .auto-style10 {
            margin-right: 500px;
        }
        .auto-style11 {
            width: 52px;
        }
        .auto-style12 {
            width: 346px;
            text-align: left;
        }
        .auto-style13 {
            width: 52px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="auto-style3" style="width: 400px; height: 500px">
        <tr>
            <td class="auto-style6"></td>
            <td class="auto-style7"></td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">
                <asp:DataList ID="dtdshang" runat="server" CssClass="auto-style10" style="width: 500px; height: 230px">
                    <ItemTemplate>
                        <table class="auto-style3" style="width: 500px; height: 200px">
                            <tr>
                                <td rowspan="3">
                                    <asp:Image ID="Image1" Height="200px" Width="200px" runat="server" ImageUrl='<%# Eval("Hinh") %>' />
                                </td>
                                <td class="auto-style13">
                                    <asp:Label ID="Label1" runat="server" Text="Tên :"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:Label ID="tensp" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">
                                    <asp:Label ID="Label2" runat="server" Text="Giá :"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:Label ID="gia" runat="server" Text='<%# Eval("Gia") %>' ForeColor="#FF3300"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style13">
                                    <asp:Label ID="Label3" runat="server" Text="Mô tả"></asp:Label>
                                </td>
                                <td class="auto-style12">
                                    <asp:Label ID="mota" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td class="auto-style11">&nbsp;</td>
                                <td class="auto-style12">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>

</asp:Content>
