<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="MWebAsk.Views.Account.Reg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<form action="<%=Url.Action("SaveReg","Account") %>" method="post">
Email:<%=Html.TextBox("Email") %><br />
Password:<%=Html.Password("Password") %>
reP<%=Html.Password("RePassword") %>
<%=Html.SubmitButton("","tj") %>
<input id="Reset1" type="reset" value="reset" />
</form>
</asp:Content>
