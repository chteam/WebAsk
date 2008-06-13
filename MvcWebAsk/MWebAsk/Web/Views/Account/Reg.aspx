<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="MWebAsk.Views.Account.Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/reg.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<form action="<%=Url.Action("SaveReg","Account") %>" method="post">
<div class="reg">
	<ul>
		<li>
			<label>
				E-mail：</label><%=Html.TextBox("Email") %>
			* <span>请输入有效的邮件地址</span></li>
		<li>
			<label>
				密 码：</label><%=Html.Password("Password") %>
			* <span>不超过14个字符(数字，字母和下划线)</span></li>
		<li>
			<label>
				重复密码：</label><%=Html.Password("RePassword") %>
			* <span>请在输入一遍</span></li>
	</ul>
</div>
<div class="regsub">
	<%=Html.SubmitButton("","提交") %>
	<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset" />
</div>
</form>
</asp:Content>
