<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Question.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

<%
	Question q = this.ViewData.Model;
%>
	 <%=q.Title %>
	 <%=q.Addtime.ToString("yyMmdd hh:mm:ss") %>
<br />
</asp:Content>
