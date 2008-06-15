<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PublishList.aspx.cs" Inherits="MWebAsk.Views.Admin.PublishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h5>公告列表</h5>
<% 
	foreach(Publish p in ViewData.Model){
	 %>
	 <div class="admingonggao">
	 <%=p.Title %>
	 <%=p.Addtime.ToString("yyyy MM dd") %>
	 <%=Html.ActionLink<AdminController>(c=>c.DelPublish(p.ID),"删除") %></div>
	 <%
	}

	using (Html.Form<AdminController>(c => c.AddPublish(), FormMethod.Post)) {
	 	%>

	 	<div class="adminggbody">
	 	<h5>新建公告</h5>
	 	<ul>
	 	<li><label>标题 </label> <%=Html.TextBox("Title") %></li>
		<li><label>内容 </label> <%=Html.TextArea("Body","") %></li>
	 	<li><%=Html.SubmitButton() %></li>
	 	</ul>
	 	</div>
	 <%} %>
	 
</asp:Content>
