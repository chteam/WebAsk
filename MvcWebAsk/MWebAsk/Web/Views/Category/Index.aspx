<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master"
	AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Category.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<%=Html.RenderUserControl("/views/category/catelist.ascx",ViewData["catelist"]) %>
	
	<div>
	<ul>
	<%
		foreach (Question q in ViewData["qlist"] as List<Question>) {
		 %>
		 
	<li>
	<%=Html.ActionLink<QuestionController>(c=>c.Index(q.ID),q.Title) %>
	<%=q.Addtime.ToString("Mm dd/hh:mm") %> <%=q.UserID %>
	<%=Enum.GetName(QType.待解决.GetType(),q.Situation) %>
	</li>
	<%} %>
	</ul>
	</div>
</asp:Content>
