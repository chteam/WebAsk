<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Publish.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/eknow.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<%if(ViewData.Model!=null ){
	  Publish p = ViewData.Model;
	  %>
	<div class="listtop">
		<a href="/home/index">成幻易知</a> 易知公告
	</div>
	<div class="gonggao">
		<h3>
			<%=p.Title%>
		</h3>
		<div class="ggtext">
		<%=p.Body %>
		<div class="userinfo">
		<%=p.Addtime %>

		<%=p.UserAccount.Email %></div>
<%} %>
		</div>
	</div>
</asp:Content>
