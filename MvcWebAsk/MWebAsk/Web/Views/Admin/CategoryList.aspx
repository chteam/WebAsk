<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="MWebAsk.Views.Admin.CategoryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%
	Html.Grid<Person>(
		"people", 
		new Hash(empty => "There are no people", style => "width: 100%"),
		column => {
			column.For(p => p.Id, "ID Number");
			column.For(p => p.Name);
			column.For(p => p.Gender);
			column.For(p => p.RoleId).Formatted("Role ID: {0}");
			column.For("Custom Column").Do(p => { %>
				<td>A custom column...</td>	
			<% });
		}
	);
%>

</asp:Content>
