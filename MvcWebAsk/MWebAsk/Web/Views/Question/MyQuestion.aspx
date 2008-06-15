<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="MyQuestion.aspx.cs" Inherits="MWebAsk.Views.Question.MyQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/newqst.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div class="listtop">
		<a href="/home/index">成幻易知</a> &gt; 我的提问
	</div>
	<div id="cDiv" class="listleft box">
<%
	foreach (Question q in ViewData.Model) { 
	 %>
	 <%=Html.ActionLink<QuestionController>(c=>c.Index(q.ID),q.Title) %>
	 <%=Enum.GetName(typeof(QType),q.Situation) %>
	 <%=q.Addtime %>
	 <%} %>
</div>
</asp:Content>
