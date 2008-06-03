<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/base.Master" AutoEventWireup="true" CodeBehind="newqst.aspx.$languageext$" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<div class="listtop">
		<a href="../yz/index.asp">成幻易知</a> &gt; 提问
	</div>
	<div class="listright">
		<div class="box">
			<h5>
				相关问题</h5>
			<table border="0" cellspacing="0" cellpadding="0">
			</table>
		</div>
	</div>
	<div id="cDiv" class="listleft box">
		<div class="boxtext">
			<h5 class="sendh5">
				提问</h5>
			<form name="ftiwen" method="post" action="send.asp" onsubmit="return checkform(this);">
			<li>
				<label>
					您的提问：</label><input name="title" type="text" value="" size="48" class="formfont" />
				- 您可以参考其他用户提问过的相关问题→</li>
			<br />
			<li>
				<label>
					问题补充说明：</label>
				<br />
				<textarea name="content" cols="46" rows="8"></textarea></li>
			<div>
				<br />
				<label>
					问题分类：</label>
				<br />
				<br />
				<table style="padding-left: 85px" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="100">
							<select id="ClassLevel1" size="8" name="ClassLevel1">
								<option selected></option>
							</select>
							<font color="#FF0000">一级分类</font>
						</td>
						<td width="20">
							<div align="center">
								<b>→</b></div>
						</td>
						<td>
							<select id="ClassLevel2" style="width: 90px" size="8" name="ClassLevel2">
								<option selected></option>
							</select><br>
							<font color="#FF0000">二级分类</font>
						</td>
						<td width="20">
							<div align="center" id="jiantou">
								<b>→</b></div>
						</td>
						<td>
							<select id="ClassLevel3" style="width: 90px" size="8" onchange="getCidValue();" name="ClassLevel3">
								<option selected></option>
							</select>
						</td>
					</tr>
				</table>

			</div>
			<div>
				<br />
				<img src="../img/tips.gif" width="16" height="16">请您选择正确的分类，以使您的问题尽快得到解答。
			</div>
			<div>
				<br />
				<label>
					悬赏分：</label>
				<span>
					<select name="shang">
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
					您目前的积分：166 。 </span>
				<div>
					<br />
					<img src="../img/tips.gif" width="16" height="16" alt="?" />悬赏分越高，您的问题会越受关注，从而得到更佳答案。</div>
			</div>
			<br />
			<input type="submit" name="send" value="提交问题" class="bnsrh" />
			<input type="hidden" name="cid" value="0" />
			</form>
		</div>
	</div>
</asp:Content>
