<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/base.Master" AutoEventWireup="true"  Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<center>
		<div id="Container">
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
						<h4>
							<a href="../list/chsubcls.asp?id=1">编程语言</a> (75)</h4>
						<a href="../list/chsubcls1.asp?id=14">Visual Basic</a> <a href="../list/chsubcls1.asp?id=15">
							C/C++</a> <a href="../list/chsubcls1.asp?id=16">Delphi</a> <a href="../list/chsubcls.asp?id=1">
								...</a>
						<h4>
							<a href="../list/chsubcls.asp?id=5">编程技术</a> (7)</h4>
						<a href="../list/chsubcls1.asp?id=54">数据库</a> <a href="../list/chsubcls1.asp?id=55">
							Internet编程</a> <a href="../list/chsubcls1.asp?id=56">Windows API</a> <a href="../list/chsubcls.asp?id=5">
								...</a>
						<h4>
							<a href="../list/chsubcls.asp?id=189">网络</a> (14)</h4>
						<a href="../list/chsubcls1.asp?id=190">Linux/Unix服务器</a> <a href="../list/chsubcls1.asp?id=191">
							WIN服务器</a> <a href="../list/chsubcls1.asp?id=192">局域网技术</a> <a href="../list/chsubcls.asp?id=189">
								...</a>
						<h4>
							<a href="../list/chsubcls.asp?id=2">硬件</a> (13)</h4>
						<a href="../list/chsubcls1.asp?id=25">CPU</a> <a href="../list/chsubcls1.asp?id=26">
							内存</a> <a href="../list/chsubcls1.asp?id=27">硬盘</a> <a href="../list/chsubcls.asp?id=2">
								...</a>
						<h4>
							<a href="../list/chsubcls.asp?id=3">软件</a> (8)</h4>
						<a href="../list/chsubcls1.asp?id=37">系统工具</a> <a href="../list/chsubcls1.asp?id=38">
							网络工具</a> <a href="../list/chsubcls1.asp?id=39">图文处理</a> <a href="../list/chsubcls.asp?id=3">
								...</a>
						<h4>
							<a href="../list/chsubcls.asp?id=4">游戏</a> (6)</h4>
						<a href="../list/chsubcls1.asp?id=42">网络游戏</a> <a href="../list/chsubcls1.asp?id=43">
							单机游戏</a> <a href="../list/chsubcls1.asp?id=44">电视游戏</a> <a href="../list/chsubcls.asp?id=4">
								...</a>
						<h4>
							<a href="../list/chsubcls.asp?id=6">生活/其它</a> (6)</h4>
						<a href="../list/chsubcls1.asp?id=67">教育/科学</a> <a href="../list/chsubcls1.asp?id=68">
							商业/经济</a> <a href="../list/chsubcls1.asp?id=69">体育/运动</a> <a href="../list/chsubcls.asp?id=6">
								...</a>
					</div>
				</div>
			</div>
			<div id="rightContent">


				<div class="box">
					<h5>
						用户登录</h5>
					<div class="boxtext">
								<div id="pinfo">
								<%if (Session["username"]==null)
								{%>
									<form name="lg" method="post" action="<%=Url.Action("yanzheng","user") %>">
									<ul>
										<li>
											<label>
												用 户:</label>
											<input name="name" type="text" id="name" size="12" /></li>
										<li>
											<label>
												密 码:</label>
											<input name="pwd" type="password" id="pwd" size="12" /></li>
										<li>
											<label>
												验证码:</label>
											<input type="text" size="5" maxlength="4" name="verifycode" />
											<img src="" align="absmiddle" alt="pic">(请输入图中数字)</li>
									</ul>
									<div id="loginsub">
										<input name="sub" type="image" src="/img/login.gif" id="sub" value="登录" onclick="return check_lg()" />
										<input name="login" type="hidden" value="登录" />
										<a href="/user/reg">
											<img src="/img/reg.gif" alt="注册" border="0" /></a>
									</div>
									</form>
								<%} %>
								<%else
									{%>
									<div>
										<ul>
											<li>您好：<% =Session["username"]%></li>
											<li><a href="../help/help.asp#n5" target="_blank">助理 二级</a> ( 161 )</li>
										</ul>
									</div>
									<div>
										<ul>
											<li><a href="../user/user.asp?lei=mywen" target="_blank">我的提问</a></li>
											<li><a href="../user/user.asp" target="_blank">个人中心</a></li>
											<li><a href="../user/user.asp?lei=myda" target="_blank">我的回答</a></li>
											<li><a href="<%=Url.Action("Exit","user") %>">退出</a></li>
										</ul>
									</div>
								<%} %>
						</div>
					</div>
				</div>
				<!--结束登录框-->
				<div class="box">
					<h5>
						成幻易知之星</h5>
					<div class="boxtext">
						<ul>
							<li><a href="../user/showuser.asp?id=144" target="_blank">cbw</a></li>
							<li><span class="spanfont">经理 四级(1956)</span></li>
							<li><span class="spanfont">专精领域：</span> <a href="../list/chsubcls1.asp?id=37">系统工具</a></li>
							<li><span class="spanfont">精选回答：</span></li>
							<li><a href="../html/qanda/292.html" target="_blank">lllllllllll</a> </li>
							<a href="../html/qanda/291.html" target="_blank">mmmmmmmmmmmmmmmmm</a> </li>
						</ul>
					</div>
				</div>
				<div class="box">
					<h5>
						昨日用户上升TOP5</h5>
					<div class="boxtext">
						<ul>
							暂时没有排名!
						</ul>
					</div>
				</div>
				<div class="box">
					<h5>
						本周用户上升TOP5</h5>
					<div class="boxtext">
						<ul>
							暂时没有排名!
						</ul>
					</div>
				</div>
				<div class="box">
					<h5>
						总积分排行榜</h5>
					<div class="boxtext">
						<ul>
							<li>1. <a href="../user/showuser.asp?id=144" target="_blank">cbw</a>1956</li>
							<li>2. <a href="../user/showuser.asp?id=106" target="_blank">中街小痞子</a>377</li>
							<li>3. <a href="../user/showuser.asp?id=57" target="_blank">孟磊</a>374</li>
							<li>4. <a href="../user/showuser.asp?id=60" target="_blank">1234567</a>290</li>
							<li>5. <a href="../user/showuser.asp?id=53" target="_blank">admin</a>162</li>
							<li><a href="../user/listuser.asp?lei=jifen" class="lmore">更多&gt;&gt;</a></li>
						</ul>
					</div>
				</div>
				<div class="box">
					<h5>
						最新注册用户</h5>
					<div class="boxtext">
						<ul>
							<li><a href="../user/showuser.asp?id=166" target="_blank">gjl</a> 22</li>
							<li><a href="../user/showuser.asp?id=165" target="_blank">zzl</a> 32</li>
							<li><a href="../user/showuser.asp?id=164" target="_blank">wangshi</a> 20</li>
							<li><a href="../user/showuser.asp?id=163" target="_blank">jl584661</a> 20</li>
							<li><a href="../user/showuser.asp?id=162" target="_blank">clhcxx</a> 20</li>
							<li><a href="../user/listuser.asp?lei=new" class="lmore">更多&gt;&gt;</a></li>
						</ul>
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
			
	</center>

</asp:Content>
