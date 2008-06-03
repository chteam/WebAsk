<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/base.Master" AutoEventWireup="true" CodeBehind="ViewContentPage1.aspx.$languageext$" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
  恭喜 <%=Session["username"]%> 注册成功 <a href="/home/index">返回首页</a>
</asp:Content>
