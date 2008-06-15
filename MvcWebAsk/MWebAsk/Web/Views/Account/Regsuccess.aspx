<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Regsuccess.aspx.cs" Inherits="MWebAsk.Views.Account.Regsuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/reg.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<div class="note">
恭喜您： <%=ViewData.Model.NickName %>  注册成功！ <%=Html.ActionLink("首页","index","home")%> 
	<%=Html.ActionLink("个人中心", "index", "home")%>
</div>

</asp:Content>
