<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/base.Master" AutoEventWireup="true" CodeBehind="newqst.aspx.$languageext$" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link href="/css/newqst.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
<%if (Session["username"] == null)
  {%>
  <div>请先登陆</div>
<%} %>
<%else
	{%>
	<div class="listtop">
		<a href="/home/index">成幻易知</a> &gt; 提问
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
			<form name="ftiwen" method="post" action="<%=Url.Action("newquestion","Qst") %>">
			<ul>
			<li class="qstname">
				<label>
					输入您的提问：</label><input name="title" type="text" value=""/>
			</li>
			<li class="qsttext">
				<label>
					问题补充说明：</label><textarea name="content" cols="47" rows="8"></textarea>
			</li>
			
			<li>
			<div>
				<label>
					问题分类：</label><table class="qstlist" cellspacing="0" cellpadding="0" border="0">
					<tbody>
						<tr>
							<td valign="top" style="width:125px;">
								<select id="ClassLevel1" name="ClassLevel1" size="8" style="width: 125px; height: 375px;">
									<option value="74">电脑/网络</option>
									<option value="78">体育/运动</option>
									<option value="80">生活/时尚</option>
									<option value="95">电子数码</option>
									<option value="155">购车养车</option>
									<option value="147">美容/减肥/化妆</option>
									<option value="148">美食/烹饪</option>
									<option value="82">商业/理财</option>
									<option value="928">健康/养生</option>
									<option value="79">医疗/疾病</option>
									<option value="83">教育/学业/考试</option>
									<option value="187">外语/出国</option>
									<option value="158">交通/旅游</option>
									<option value="201">人文学科</option>
									<option value="202">理工学科</option>
									<option value="84">社会/文化</option>
									<option value="85">艺术</option>
									<option value="99">音乐</option>
									<option value="77">游戏</option>
									<option value="1031">休闲/爱好</option>
									<option value="75">娱乐/明星</option>
									<option value="81">烦恼</option>
									<option value="1">地区</option>
								</select>
							</td>
							<td width="50">
								<div align="center">
									<b>→</b>
								</div>
							</td>
							<td valign="top">
								<select id="ClassLevel2" name="ClassLevel2" size="8" style="width: 90px; height: 375px;">
									<option value="">不选</option>
								</select>
							</td>
							<td width="20">
								<div id="jiantou" align="center" style="display: none;">
									<b>→</b>
								</div>
							</td>
							<td valign="top">
								<select id="ClassLevel3" name="ClassLevel3" onchange="getCidValue();" size="8" style="width: 90px;
									height: 375px; display: none;">
									<option value="">不选</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>

			</div>
			</li>
			</ul>
			<div>
				<br />
				<img src="/img/tips.gif" width="16" height="16" alt="?"/>请您选择正确的分类，以使您的问题尽快得到解答。
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
					<img src="/img/tips.gif" width="16" height="16" alt="?" />悬赏分越高，您的问题会越受关注，从而得到更佳答案。</div>
			</div>
			<br />
			<input type="submit" name="send" value="提交问题" class="bnsrh" />
			<input type="hidden" name="cid" value="0" />
			</form>
		</div>
	</div>
	<%} %>
</asp:Content>
