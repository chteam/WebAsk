<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master"
	AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Question.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<%
		Question q = this.ViewData.Model;
	%>
	<%=q.Title %>
	<%=q.Addtime.ToString("yyMmdd hh:mm:ss") %>
	提问人:<%=q.UserAccount.NickName %>
	<%
		if (UserTools.IsAdmin) {
	%>
	<%=Html.ActionLink<AdminController>(c => c.Question(q.ID), "管理")%>
	<%
		}
	%>
	<br />
	<hr />
	<%
		foreach (Reply r in q.ReplyList) {
	%>
	<%=r.Body %>
	<%=r.UserAccount.NickName %>
	<%
		if (q.Situation == QType.待解决.ToByte()
			&& q.UserID == UserTools.UserID
			&& r.UserID != UserTools.UserID
			) { 
	%>
	<%=Html.ActionLink<ReplyController>(c => c.SetBest(q.ID, r.ID), "设为最佳答案")%>
	<%
		if (UserTools.IsAdmin) {
	%>
	<%=Html.ActionLink<AdminController>(c => c.Reply(q.ID), "管理")%>
	<%
		}
	%>
	<%
		} else {
			if (r.Situation == AType.最佳答案.ToByte()) {
	%>
	最佳答案
	<%
		}
		}
	%>
	<hr />
	<%
		}
		if (UserTools.IsLogin) {
			using (Html.Form<ReplyController>(r => r.Add(), FormMethod.Post)) {
	%>
	<%=Html.Hidden("QuestionID", q.ID.ToString())%>
	<%=Html.TextArea("Body", "")%>
	<%=Html.SubmitButton()%>
	<%
		}
		}
	%>
</asp:Content>
