<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true"
	CodeBehind="Login.aspx.cs" Inherits="MWebAsk.Views.Account.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/reg.css" rel="stylesheet" type="text/css" />
	<%= Html.Validation().ValidatorRegistrationScripts() /*验证控件的前提*/%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<% using (
        Html.Form("Account", "Login", FormMethod.Post, Html.Validation().FormValidation("login"))
) { %>

	<div class="reg">
		<ul>
			<li>
				<label>
					E-mail：</label><%=Html.TextBox("Email") %>
					<%= Html.Validation().RequiredValidator("r4Email", "Email",
						"请输入一个用户名.", "login")%>

				<span>提示区域</span></li>
			<li>
				<label>
					密 码：</label><%=Html.Password("Password") %>
					<%= Html.Validation().RequiredValidator("r4Password", "Password",
						"请输入一个用户名.", "login")%>
				<span>提示区域</span></li>
		</ul>
	</div>
	<div class="regsub">
		<%=Html.SubmitButton("","登陆") %>
		<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset" />
	</div>
	<%} %>
	
	<%= Html.Validation().ValidatorInitializationScripts() /*验证控件的收尾*/%>

</asp:Content>
