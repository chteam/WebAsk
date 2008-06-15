<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master"
	AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Category.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<%=Html.RenderUserControl("/views/category/catelist.ascx",ViewData["catelist"]) %>
</asp:Content>
