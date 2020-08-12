<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="WedDuLich.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
        .auto-style5 {
            text-align: left;
            height: 31px;
        }
        .auto-style6 {
            width: 146px;
            height: 31px;
            text-align: left;
        }
        .auto-style8 {
            width: 146px;
            text-align: left;
        }
        .auto-style9 {
            width: 146px;
            height: 31px;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style13 {
            width: 146px;
            text-align: left;
            height: 33px;
        }
        .auto-style14 {
            text-align: left;
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style3" style="width: 700px; padding: 15px">
    <tr>
        <td colspan="2" style="font-size: 30px; background-color: #008080; color: #FFFFFF;">ĐĂNG KÝ</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2" style="background-color: #CCFFCC">Thông Tin Cá Nhân</td>
    </tr>
    <tr>
        <td class="auto-style6">Họ Tên: </td>
        <td class="auto-style5">
            <asp:TextBox ID="ten" runat="server" Width="299px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ten" ErrorMessage="Vui lòng cung cấp tên!"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Số Điện Thoại:</td>
        <td class="auto-style12">
            <asp:TextBox ID="sdt" runat="server" Width="218px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Giới Tính: </td>
        <td class="auto-style12">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="auto-style16" RepeatLayout="Flow">
                                <asp:ListItem>Nam</asp:ListItem>
                                <asp:ListItem>Nữ</asp:ListItem>                                
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Địa Chỉ: </td>
        <td class="auto-style5">
            <asp:TextBox ID="diachi" runat="server" Width="567px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style5" colspan="2" style="background-color: #99FFCC">Thông Tin Đăng Nhập</td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label1" runat="server" Text="Địa Chỉ Email"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="email" runat="server" Width="293px"></asp:TextBox>     
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="email" ErrorMessage="Email không được bỏ trống!"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="email" ErrorMessage="Địa chỉ Email không hợp lệ!" ValidationExpression="^[a-zA-Z0-9_\-\.]+@([a-zA-Z0-9_\-\.]+\.[a-zA-Z]{2,5})$"></asp:RegularExpressionValidator>

        </td>
    </tr>
    <tr>
        <td class="auto-style13">
            <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label>
        </td>
        <td class="auto-style14">
            <asp:TextBox ID="pass" TextMode="Password" runat="server" Width="211px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="Label3" runat="server" Text="Nhập lại mật khẩu"></asp:Label>
        </td>
        <td class="auto-style12">
            <asp:TextBox ID="pass2" TextMode="Password" runat="server" Width="209px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="pass" ControlToValidate="pass2" ErrorMessage="Mật khẩu không khớp!"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="bDangky" runat="server" Text="Đăng ký" BackColor="#00CC99" BorderColor="#00CC99" Font-Bold="True" ForeColor="White" OnClick="bDangky_Click" Width="116px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style12">
            <asp:Label ID="KQ" runat="server" Text=""></asp:Label>
        </td>
    </tr>
</table>
    
</asp:Content>
