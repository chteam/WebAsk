<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master"
	AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="MWebAsk.Views.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div class="listtop">
		<a href="/home/index">成幻易知</a> &gt; 提问
	</div>
	<div class="listright">
		<div class="box">
			<h5>
				相关问题</h5>
		</div>
	</div>
	<div id="cDiv" class="listleft box">
		<div class="boxtext">
			<h5 class="sendh5">
				提问</h5>
			<%
				using (Html.Form("Question", "Save", FormMethod.Post, Html.Validation().FormValidation("ask"))) {
			%>
			<ul>
				<li class="qstname">
					<label>
						输入您的提问：</label>
					<%=Html.TextBox("Title") %>
					<%= Html.Validation().RequiredValidator("r41", "Title",	"必填.", "ask")%>
				</li>
				<li>
				内容
				<%=Html.TextArea("Body","") %>
				<%= Html.Validation().RequiredValidator("r43", "Body",	"必填.", "ask")%>
				</li>
				<li><label>
							问题分类：</label></li>
				<li>
					<div>
						
						<%=Html.DropDownList("firstCategory", new {onchange="ChgCate();" })%>
						<div id="cate">
						<select name="CategoryID" id="CategoryID"></select>
						</div>
						<%= Html.Validation().RequiredValidator("r42", "CategoryID",
						"必选二级分类.", "ask")%>
					</div>
				</li>
			</ul>
			<div>
				<br />
				<img src="/img/tips.gif" width="16" height="16" alt="?" />请您选择正确的分类，以使您的问题尽快得到解答。
			</div>
			<div>
				<br />
				<label>
					悬赏分：</label>
				<span>
					<select name="Point">
						<option value="0">0</option>
						<option value="5">5</option>
						<option value="10">10</option>
						<option value="15">15</option>
						<option value="20">20</option>
						<option value="30">30</option>
						<option value="50">50</option>
						<option value="80">80</option>
						<option value="100">100</option>
					</select>
					您目前的积分：<%=ViewData["yourPoint"] %>
					。 </span>
				<div>
					<br />
					<img src="/img/tips.gif" width="16" height="16" alt="?" />悬赏分越高，您的问题会越受关注，从而得到更佳答案。</div>
			</div>
			<br />
			<input type="submit" name="send" value="提交问题" class="bnsrh" />
			<input type="hidden" name="cid" value="0" />
			<%
		}
			%>
		</div>
	</div>

	<script type="text/javascript">
	function ChgCate(){
		$.post('<%=Url.Action("CateList") %>',{id:$("#firstCategory").val()},function(r){
			$("#cate").html(r);
		
		});
	}
	ChgCate();
	</script>

</asp:Content>
