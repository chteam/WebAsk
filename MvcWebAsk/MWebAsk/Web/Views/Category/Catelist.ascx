<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Catelist.ascx.cs" Inherits="MWebAsk.Views.Category.Catelist" %>
<div class="catebox">
<h5>二级分类</h5>
<div class="catetext">
	<%
		foreach (Category c in ViewData.Model) {
	
	%>

	<%=Html.ActionLink<CategoryController>(t => t.Index(c.ID), c.Title) %>

	<%
		}
	%>
</div>
</div>