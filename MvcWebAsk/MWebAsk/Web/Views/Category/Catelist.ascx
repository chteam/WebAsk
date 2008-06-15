<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Catelist.ascx.cs" Inherits="MWebAsk.Views.Category.Catelist" %>
<ul>
	<%
		foreach (Category c in ViewData.Model) {
	
	%>
	<li>
	<%=Html.ActionLink<CategoryController>(t => t.Index(c.ID), c.Title) %>
</li>
	<%
		}
	%>
</ul>
