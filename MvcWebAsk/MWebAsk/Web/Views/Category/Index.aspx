<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master"
	AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Category.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<%=Html.RenderUserControl("/views/category/catelist.ascx",ViewData["catelist"]) %>
	
	<div class="catetext">
	<ul>
	<%
		foreach (Question q in ViewData["qlist"] as List<Question>) {
		 %>
		 
	<li>
	<span class="catetitle"><%=Html.ActionLink<QuestionController>(c=>c.Index(q.ID),q.Title) %></span>
	<span class="catetime"><%=q.Addtime.ToString("Mm dd/hh:mm") %> <%=q.UserID %></span>
	<span class="catestatus"><%=Enum.GetName(QType.待解决.GetType(),q.Situation) %></span>
	</li>
	<%} %>
	</ul>
	</div>
</asp:Content>
