<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="PhanHoi.aspx.cs" Inherits="WedDuLich.PhanHoi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 69px;
        }
        .auto-style3 {
            width: 70px;
        }
        .auto-style4 {
            width: 67px;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            width: 67px;
            text-align: center;
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style10 {
            text-align: right;
            width: 169px;
        }
        .auto-style11 {
            text-align: right;
            width: 85px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style3" style="width: 400px; height: 500px">
        <tr>
            <td class="auto-style6" style="height: 45px;"></td>
            <td class="auto-style5" style="height: 45px; background-color: #FFCC00; color: #FFFFFF;">Phản Hồi Từ Người Dùng:</td>
            <td class="auto-style8" style="height: 45px;"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9">
                <asp:DataList ID="dtdshang" runat="server" CssClass="auto-style10" style="width: 500px; height: 200px; margin-right: 18px;">
                    <ItemTemplate>
                        <table class="auto-style7" style="width: 500px; height: 200px">
                            <tr>
                                <td rowspan="3">
                                    <asp:Image ID="Image1" Height="100px"  Width="100px" runat="server" ImageUrl="~/Hinhanh/user.png" />
                                </td>
                                <td class="auto-style11">
                                    <asp:Label ID="Label1" runat="server" Text="Tên :"></asp:Label>
                                </td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Hoten") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">
                                    <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
                                </td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style11">
                                    <asp:Label ID="Label4" runat="server" Text="Nội Dung :"></asp:Label>
                                </td>
                                <td class="auto-style9">
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Thongtin") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" class="auto-style9" style="background-color: #FF9933">
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("ngay") %>' ForeColor="White"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" style="border-color: #FF6600; height: 12px; background-color: #FFFFFF; border-top-style: inset; border-top-width: inherit;" class="auto-style9">&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
