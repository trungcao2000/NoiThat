<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="LienHe.aspx.cs" Inherits="WedDuLich.LienHe" %>
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
            width: 146px;
        }
        .auto-style5 {
             width: 146px;
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
        .auto-style9 {
            font-family: Terminal;
            font-size: x-large;
            color: #008080;
            text-decoration: underline;
        }
        .auto-style10 {
            width: 168px;
        }
        .auto-style11 {
            font-family: Terminal;
            font-size: x-large;
            color: #008080;
            text-decoration: underline;
            height: 39px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<table class="auto-style7">
                                <tr>
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr style="width: 500px">
                                    <td class="auto-style10">&nbsp;</td>
                                    <td style="width: 500px">
                                        <table class="auto-style3">
                                            <tr>
                                                <td colspan="2" class="auto-style9">&nbsp;- CONTACT ME -</td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" class="auto-style11"></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">                                                   
                                                    tên :</td>
                                                <td class="auto-style6">                                                   
                                                    <asp:TextBox ID="ten" runat="server" Width="245px"></asp:TextBox>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Bạn ơi đừng để trống!" ControlToValidate="ten"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">Mail: </td>
                                                <td class="auto-style6">
                                                    <asp:TextBox ID="Mail" runat="server" Width="245px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Bạn ơi đừng để trống!" ControlToValidate="Mail"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style4">&gt;</td>
                                                <td class="auto-style6">
                                                    <asp:TextBox ID="noidung" TextMode="MultiLine" runat="server" Height="108px" Width="393px"></asp:TextBox> <br />
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Có điều gì sao không nói cùng admin! :))" ControlToValidate="noidung"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style5">&nbsp;</td>
                                                <td class="auto-style8">
                                                    <asp:Button ID="Button1" runat="server" Text="Gửi" Width="163px" BackColor="#009999" BorderStyle="Dotted" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" />
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
                                    <td class="auto-style10">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
</asp:Content>
