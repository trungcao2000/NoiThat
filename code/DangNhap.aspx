<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="WedDuLich.DangNhap" %>
<%@ Register Src="~/WebUserControl1.ascx" TagPrefix="UC" TagName="Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <UC:Login runat="server"/>

</asp:Content>