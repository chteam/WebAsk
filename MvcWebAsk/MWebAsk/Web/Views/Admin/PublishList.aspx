<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PublishList.aspx.cs" Inherits="MWebAsk.Views.Admin.PublishList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<% 
	foreach(Publish p in ViewData.Model){
	 %>
	 <%=p.Title %>
	 <%=p.Addtime.ToString("yyyy MM dd") %>
	 <%=Html.ActionLink<AdminController>(c=>c.DelPublish(p.ID),"del") %><br />
	 <%
	}

	using (Html.Form<AdminController>(c => c.AddPublish(), FormMethod.Post)) {
	 	%>
	 	title<%=Html.TextBox("Title") %><br />
	 	body<%=Html.TextArea("Body","") %><br />
	 	<%=Html.SubmitButton() %>
	 <%} %>
	 
</asp:Content>
