<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="MyReply.aspx.cs" Inherits="MWebAsk.Views.Reply.MyReply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<%
	foreach (Question q in ViewData.Model) { 
	 %>
	 <%=Html.ActionLink<QuestionController>(c => c.Index(q.ID), q.Title)%>
	 <%=Enum.GetName(typeof(QType), q.Situation)%>
	 <%=q.Addtime%>
	 <%
	}
	 	 %>
</asp:Content>
