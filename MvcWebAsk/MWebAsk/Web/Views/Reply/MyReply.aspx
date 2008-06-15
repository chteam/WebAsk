<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="MyReply.aspx.cs" Inherits="MWebAsk.Views.Reply.MyReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/newqst.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div class="listtop">
		<a href="/home/index">成幻易知</a> &gt; 我的回答
	</div>
	<div id="myqlist" class="listleft box">
	<ul>
<%
	foreach (Question q in ViewData.Model) { 
	 %>
	<li><%=Html.ActionLink<QuestionController>(c => c.Index(q.ID), q.Title)%>
	 <%=Enum.GetName(typeof(QType), q.Situation)%>
	 <%=q.Addtime%></li>
	 <%
	}
	 	 %>
	 	 </ul>
	</div>
</asp:Content>
