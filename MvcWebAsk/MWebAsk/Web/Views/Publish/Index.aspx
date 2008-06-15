<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Publish.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<%if(ViewData.Model!=null ){
	  Publish p = ViewData.Model;
	  %>
<%=p.Title%><br />
<%=p.Body %><br />
<%=p.Addtime %>

<br />
<%=p.UserAccount.Email %>
<%} %>
</asp:Content>
