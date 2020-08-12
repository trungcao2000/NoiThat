<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="TimKiemAdmin.aspx.cs" Inherits="WedDuLich.TimKiemAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="auto-style3" style="background-image: url('http://localhost:50314/Hinhanh/panner_seach.png'); width: 880px; height: 560px">
        <tr style="width: 800px; height: 35px">
            <td>&nbsp;</td>
            <td class="auto-style4" style="width: 350px; background-color: #FFFFFF; height: 35px;">
                <asp:TextBox ID="seach" runat="server" Height="35px" Width="272px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton2" runat="server" Height="35px" ImageUrl="~/Hinhanh/seach.png" Width="35px" OnClick="ImageButton2_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr style="width: 800px; ">
            <td class="auto-style5"></td>
            <td class="auto-style5" > </td>
            <td class="auto-style5"></td>
        </tr>
        <tr style="height: 400px; width: 800px">
            <td colspan="3">
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
                    <asp:Label ID="tensp" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
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
            </td>
        </tr>
    </table>
    
</asp:Content>

