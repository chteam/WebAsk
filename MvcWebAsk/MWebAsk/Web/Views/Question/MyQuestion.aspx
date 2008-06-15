<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="MyQuestion.aspx.cs" Inherits="MWebAsk.Views.Question.MyQuestion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<%
	foreach (Question q in ViewData.Model) { 
	 %>
	 <%=Html.ActionLink<QuestionController>(c=>c.Index(q.ID),q.Title) %>
	 <%=Enum.GetName(typeof(QType),q.Situation) %>
	 <%=q.Addtime %>
	 <%} %>
</asp:Content>
