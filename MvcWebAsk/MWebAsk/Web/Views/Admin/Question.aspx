<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="MWebAsk.Views.Admin.Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%
if(ViewData.Model!=null)
 %>
<%=Html.Action<AdminController>(c=>c.DelQ(ViewData.Model.ID),"删除") %>
<%} %>
</asp:Content>
