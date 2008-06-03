<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/base.Master" AutoEventWireup="true"
	Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<form name="lg" method="post" action="<%=Url.Action("yanzheng","user") %>" onsubmit="">
	<ul>
		<li>
			<label>
				用 户:</label>
			<input name="name" type="text" id="name" size="12" /></li>
		<li>
			<label>
				密 码:</label>
			<input name="pwd" type="password" id="pwd" size="12" /></li>
		<li>
			<label>
				验证码:</label>
			<input type="text" size="5" maxlength="4" name="verifycode" />
			<img src="../inc/safecode.asp" align="absmiddle">(请输入图中数字)</li>
	</ul>
	<div id="loginsub">
		<input name="sub" type="image" src="/img/login.gif" id="sub" value="登录" onclick=""/>
		<input name="login" type="hidden" value="登录" />
		<a href="/user/reg.asp">
			<img src="/img/reg.gif" alt="注册" border="0" /></a>
	</div>
	</form>
</asp:Content>
