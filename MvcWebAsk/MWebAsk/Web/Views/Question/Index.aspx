<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master"
	AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Question.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/newqst.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div class="listtop">
		<a href="/home/index">成幻易知</a> &gt; 问题
	</div>
	<div id="myqlist" class="listleft box">
	<%
		Question q = this.ViewData.Model;
	%>	
	
	<%
		if (UserTools.IsAdmin) {
	%>
	<span class="admin"><%=Html.ActionLink<AdminController>(c => c.Question(q.ID), "管理")%></span>
	<%
		}
	%>
	<h3><%=q.Title %></h3>
	<%=q.Addtime.ToString("yyMmdd hh:mm:ss") %>
	提问人:<%=q.UserAccount.NickName %>

	<br />
	<hr />
	<div class="replylist">
	<%
		foreach (Reply r in q.ReplyList) {
	%>
	<%=r.Body %>
	<span class="admin">回复人：<%=r.UserAccount.NickName %></span>
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
	%></div>
	
		
			<div class="reply">
		<%
			}
			if (UserTools.IsLogin) {
				using (Html.Form<ReplyController>(r => r.Add(), FormMethod.Post)) {
		%>
		
		<%=Html.Hidden("QuestionID", q.ID.ToString())%>
		<h3>回复问题：</h3>
		<%=Html.TextArea("Body", "")%>
		<br />
			<br />
		<%=Html.SubmitButton("","提交")%>
		<%
			}
			}
		%>
		</div>
	</div>
</asp:Content>
