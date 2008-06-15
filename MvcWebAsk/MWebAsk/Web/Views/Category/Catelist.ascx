<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Catelist.ascx.cs" Inherits="MWebAsk.Views.Category.Catelist" %>
<ul>
	<%
		foreach (Category c in ViewData.Model) {
	
	%>
	<li>
		<%=c.Title %></li>
	<%
		}
	%>
</ul>
