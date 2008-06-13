<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MWebAsk.Views.Account.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">

<form action="<%=Url.Action("Login","Account") %>" method="post">
u:<%=Html.TextBox("Email")%>
<br />
p:<%=Html.Password("Password") %>
<br />
<%=Html.SubmitButton("","tj") %>
</form>
</asp:Content>
