﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/ViewMaster.Master" AutoEventWireup="true"
	CodeBehind="Index.aspx.cs" Inherits="MWebAsk.Views.Home.Index" %>

<asp:Content ID="indexContent" ContentPlaceHolderID="ContentBody" runat="server">
	<div id="leftContent">
		<div class="box">
			<h5>
				公告区</h5>
			<div class="boxtext">
				<ul>
					<li><a href="../help/help.asp" target="_blank" class="gn" onmousedown="return rc('ghelp')">
						如何使用易知</a></li>
					<li><a href="../list/gonggao.asp?id=22" target="_blank">新加DirectX技术专区</a></li>
					<li><a href="../list/gonggao.asp?id=21" target="_blank">本站源码出售</a></li>
					<li><a href="../list/gonggao.asp?id=20" target="_blank">信息服务及RSS提供</a></li>
					<li><a href="../list/gonggao.asp?id=19" target="_blank">关于发表问题的说明</a></li>
					<li><a href="../list/gonggao.asp?id=18" target="_blank">本站BUG提交</a></li>
					<li><a href="../list/gonggao.asp?id=14" target="_blank">成幻易知正式公测</a></li>
				</ul>
			</div>
		</div>
		<div class="box">
			<h5>
				问题分类</h5>
			<div class="boxtext">
				<div id="sumbox">
					<ul>
						<li>已注册用户数：113</li>
						<li>已解决问题数：82</li>
						<li>待解决问题数：47</li>
						<li>今日新问题数：0</li>
						<li>今日新回答数：0</li>
					</ul>
				</div>
				<%
					IList<Category> clist = ViewData["CategoryList"] as IList<Category>;
					foreach (Category ct in clist.Where(c => c.ParentID == null).OrderBy(c => c.COrder)) {				
				%>
				<h4>
					<a href="../list/chsubcls.asp?id=1">
						<%=ct.Title %></a> </h4>
				<%
					foreach (Category st in clist.Where(c => c.ParentID == ct.ID).OrderBy(c => c.COrder)) {
				%>
				<a href="../list/chsubcls1.asp?id=14">
					<%=st.Title %></a>
				<%
					}
				%>
				<a href="../list/chsubcls.asp?id=1">...</a>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<div id="midContent">
		<div class="box">
			<h5>
				<a href="../list/list.asp?lei=tui" class="lbk">精彩推荐</a></h5>
			<div class="boxtext">
				<ul>
					<li><a href="../qanda/showquestion.asp?id=151" target="_blank">使用DoEvents从长循环中跳出后程序从何处继续执行</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a></li>
					<li><a href="../qanda/showquestion.asp?id=135" target="_blank">References与CreateObject有什么不同</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a></li>
					<li><a href="../qanda/showquestion.asp?id=125" target="_blank">VB6的下载地址</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a></li>
					<li><a href="../list/list.asp?lei=tui" class="lmore" target="_blank">更多&gt;&gt;</a></li>
				</ul>
			</div>
		</div>
		<div class="midcontext">
			<h4>
				<a href="../list/list.asp?lei=weijie" class="lbk">待解决的问题</a>:</h4>
			<div class="boxtext">
				<ul>
					<li><a href="../qanda/showquestion.asp?id=300" target="_blank">bingdonglidetiwen</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a> </li>
					<li><a href="../qanda/showquestion.asp?id=299" target="_blank">bingdongli de tiwen</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a> </li>
					<li><a href="../qanda/showquestion.asp?id=298" target="_blank">问题补充页面</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=196">[网站推广]</a> </li>
				</ul>
				<a href="../list/list.asp?lei=weijie" class="lmore" target="_blank">更多&gt;&gt;</a>
			</div>
		</div>
		<div class="midcontext">
			<h4>
				<a href="../list/list.asp?lei=jie" class="lbk">新解决的问题</a>:</h4>
			<div class="boxtext">
				<ul>
					<li><a href="../html/qanda/301.html" target="_blank">zzl de tiwen</a>&nbsp;<a class="lgy"
						href="../list/chsubcls1.asp?id=14">[Visual Basic]</a> </li>
					<li><a href="../html/qanda/292.html" target="_blank">lllllllllll</a>&nbsp;<a class="lgy"
						href="../list/chsubcls1.asp?id=37">[系统工具]</a> </li>
					<li><a href="../html/qanda/291.html" target="_blank">mmmmmmmmmmmmmmmmm</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=25">[CPU]</a> </li>
					<li><a href="../html/qanda/290.html" target="_blank">kkkkkkkkkkkkkkkkkkkkkkkkk</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a> </li>
					<li><a href="../html/qanda/273.html" target="_blank">免费域名申请~~~~~~~~~~~~~~~~</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=195">[域名注册]</a> </li>
				</ul>
				<a href="../list/list.asp?lei=jie" class="lmore" target="_blank">更多&gt;&gt;</a>
			</div>
		</div>
		<div class="midcontext">
			<h4>
				<a href="../list/list.asp?lei=xin" class="lbk">最新问题</a>:</h4>
			<div class="boxtext">
				<ul>
					<li><a href="../html/qanda/301.html" target="_blank">zzl de tiwen</a>&nbsp;<a class="lgy"
						href="../list/chsubcls1.asp?id=14">[Visual Basic]</a></li>
					<li><a href="../qanda/showquestion.asp?id=300" target="_blank">bingdonglidetiwen</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a></li>
					<li><a href="../qanda/showquestion.asp?id=299" target="_blank">bingdongli de tiwen</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=14">[Visual Basic]</a></li>
					<li><a href="../qanda/showquestion.asp?id=298" target="_blank">问题补充页面</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=196">[网站推广]</a></li>
					<li><a href="../qanda/showquestion.asp?id=297" target="_blank">螺丝钉广泛但是风格士大夫感士大夫感似的</a>&nbsp;<a
						class="lgy" href="../list/chsubcls1.asp?id=20">[ASP/PHP/JSP技术]</a></li>
				</ul>
				<a href="../list/list.asp?lei=xin" class="lmore" target="_blank">更多&gt;&gt;</a>
			</div>
		</div>
		<div class="midcontext">
			<h4>
				其他热点:</h4>
			<div class="boxtext">
				<a href="../list/list.asp?lei=gaofen" target="_blank">高分问题</a>&nbsp;&#8226;&nbsp;<a
					href="../list/list.asp?lei=re" target="_blank">热点问题</a>&nbsp;</td>
			</div>
		</div>
	</div>
</asp:Content>
