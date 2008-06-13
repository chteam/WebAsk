<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="MWebAsk.Views.Account.Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/reg.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<% using (
        Html.Form("Account", "SaveReg", FormMethod.Post, Html.Validation().FormValidation("reg"))
) { %>
<div class="reg">
	<ul>
		<li>
			<label>
				E-mail：</label><%=Html.TextBox("Email") %>
			* <span>请输入有效的邮件地址</span>
				<%= Html.Validation().RequiredValidator("r4Email", "Email",
                                            "请输入您的Email", "reg")%>
               <%= Html.Validation().RegularExpressionValidator(
                "re4Email", "Email", @"[a-zA-Z0-9]([a-zA-Z0-9]*[-_.]?[a-zA-Z0-9]+)+@([\w-]+\.)+[a-zA-Z]{2,}",
               				"邮箱格式不正确", "reg")%>
			</li>
			
		<li>
			<label>
				密 码：</label><%=Html.Password("Password") %>
			* <span>不超过14个字符(数字，字母和下划线)</span>
				<%= Html.Validation().RequiredValidator("r4Password", "Password",
                                            "请输入您的密码.", "reg")%>
			</li>
		<li>
			<label>
				重复密码：</label><%=Html.Password("RePassword") %>
			* <span>请在输入一遍</span>
			
			<%= Html.Validation().CompareValidator("c4re", "Password",
                                "RePassword", 
								ValidationDataType.String, 
								ValidationCompareOperator.Equal,
                                            "请保证两次输入一致", "reg")%>

			</li>
	</ul>
</div>
<div class="regsub">
	<%=Html.SubmitButton("","提交") %>
	<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset" />
</div>
<%} %>
</asp:Content>
