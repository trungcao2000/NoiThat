<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="NhapSP.aspx.cs" Inherits="WedDuLich.NhapSP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
             text-align: right;
             width: 115px;
         }
        .auto-style5 {
             width: 115px;
         }
         .auto-style6 {
             text-align: left;
             width: 500px;
         }
    .auto-style7 {
        width: 830px;
        height: 280px;
    }
         .auto-style8 {
             width: 500px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style7">
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="width: 500px">
                                    <td>&nbsp;</td>
                                    <td style="width: 500px">
                                        <table class="auto-style3">
                                            <tr>
                                                <td colspan="2" style="color: #008080; font-size: x-large; font-family: Terminal; text-decoration: underline;">Add Item</td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">                                                   
                                                    tên sản phẩm:</td>
                                                <td class="auto-style6">                                                   
                                                    <asp:TextBox ID="tensp" runat="server" Width="245px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Giá: </td>
                                                <td class="auto-style6">
                                                    <asp:TextBox ID="gia" runat="server" Width="245px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Nhà Sản Xuất:</td>
                                                <td class="auto-style6">
                                                    <asp:TextBox ID="nsx" runat="server" Width="245px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Danh Mục:</td>
                                                <td class="auto-style6">
                                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="TenDM" DataValueField="TenDM">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLdl %>" SelectCommand="SELECT [TenDM] FROM [DanhMuc]"></asp:SqlDataSource>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Hình ảnh:</td>
                                                <td class="auto-style6">
                                                    <asp:FileUpload ID="FileUpload1" textname="Tải lên" runat="server" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Mô tả:</td>
                                                <td class="auto-style6">
                                                    <asp:TextBox ID="mota" TextMode="MultiLine" runat="server" Height="108px" Width="393px"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">&nbsp;</td>
                                                <td class="auto-style8">
                                                    <asp:Button ID="Button1" runat="server" Text="Thêm Sản Phẩm" Width="163px" OnClick="Button1_Click" BackColor="#FFCC00" BorderStyle="Dotted" Font-Bold="True" ForeColor="White" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="kq" runat="server" ForeColor="#0066FF"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
</asp:Content>
