<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MWebAsk.Views.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/reg.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

<form action="<%=Url.Action("Login","Account") %>" method="post">
<div class="reg">
	<ul>
		<li>
			<label>
				E-mail：</label><%=Html.TextBox("Email") %>
			<span>提示区域</span></li>
		<li>
			<label>
				密 码：</label><%=Html.Password("Password") %>
			<span>提示区域</span></li>
	</ul>
</div>
<div class="regsub">
	<%=Html.SubmitButton("","登陆") %>
	<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset" />
</div>


</form>
</asp:Content>
