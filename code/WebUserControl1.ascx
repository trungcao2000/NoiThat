<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WedDuLich.WebUserControl1" %>
<style type="text/css">
    .auto-style1 {
        width: 147px;
    }
    .auto-style3 {
        width: 775px;
        height: 409px;
    }
    .auto-style6 {
        text-align: left;
        height: 31px;
        width: 250px;
    }
    .auto-style7 {
        width: 464px;
    }
    .auto-style8 {
        width: 446px;
    }
    .auto-style9 {
        text-align: center;
        height: 31px;
        width: 250px;
    }
    .auto-style10 {
        width: 434px;
    }
</style>
<table class="auto-style3" style="background-image: url('http://localhost:50314/Hinhanh/loginsda.png'); background-repeat: no-repeat; width: 800px; height: 500px;">
        <tr>
            <td class="auto-style8" style="width: 350px">&nbsp;</td>
            <td class="auto-style10" style="width: 100px">
                <table class="auto-style7" style="background-color: #00CC99; padding:10px; width: 100px;">
                    <tr>
                        <td class="auto-style6">Địa chỉ mail (*)</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:TextBox ID="bmail" runat="server" Width="278px"></asp:TextBox>
                           <%-- <asp:RegularExpressionValidator ID="regEmail" ControlToValidate="bmail" Text="Sai mail!" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Runat="server" />--%> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Không để trống" ControlToValidate="bmail"></asp:RequiredFieldValidator>
                           </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">Mật khẩu(*)</td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:TextBox ID="bpass" TextMode="Password" runat="server" Width="282px"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Không để trống" ControlToValidate="bpass"></asp:RequiredFieldValidator>

                      </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"> <a href="DangKy.aspx">Quên mật Khẩu</a></td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" Width="218px" BackColor="#00CC66" BorderColor="#00CC00" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" Height="36px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="kq" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
            <td class="auto-style1" style="width: 350px">&nbsp;</td>
        </tr>
    </table>