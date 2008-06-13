<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="MWebAsk.Views.Admin.CategoryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%
	Html.Grid<Category>(
		"list", 
		new Hash(empty => "There are no data", style => "width: 100%"),
		column => {
			column.For(p => p.ID);
			column.For(p => p.Title);
			column.For(p => p);
			column.For("Custom Column").Do(p => { %>
				<td>A custom column...</td>	
			<% });
		}
	);
%>


</asp:Content>
