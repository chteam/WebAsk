<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master"
	AutoEventWireup="true" CodeBehind="Reply.aspx.cs" Inherits="MWebAsk.Views.Admin.Reply" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<%
if(ViewData.Model!=null){
	%>
	<%=Html.ActionLink<AdminController>(c=>c.DelR(ViewData.Model.ID),"删除") %>
	<%
}
	%>
</asp:Content>
