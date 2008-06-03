<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/base.Master" AutoEventWireup="true" CodeBehind="ViewContentPage1.aspx.$languageext$" Inherits="System.Web.Mvc.ViewPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<link href="/css/reg.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="/js/reg.js" type="text/jscript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="server">
	<form name="regbox" class="regbox" method="post" action="<%=Url.Action("RegAction","user") %>">
	<%if (TempData["error"] != null)
   {%>
   <%=TempData["error"]%>
	<%} %>
	
	<%if (TempData["note"] != null)
   {%>
	<%=TempData["note"]%>
	<%} %>
<div class="reg">
<ul>
	<li><label>用户名：</label><input name="name" id="name" size="20" type="text" /> * <span> 不超过7个汉字,或14个字符</span></li>
	<li><label>密 码：</label><input name="pwd" id="pwd" size="20" type="password" /> * <span> 不超过14个字符(数字，字母和下划线)</span></li>
	<li><label>重复密码：</label><input name="pwd1" id="pwd1" size="20" type="password" /> * <span> 请在输入一遍</span></li>
	<li><label>E-mail：</label><input name="email" id="email" size="30" type="text" /> * <span>请输入有效的邮件地址</span></li>
</ul>
</div>
	<div class="regsub">
	<input id="submit" class="bnsrh" type="submit" value="提 交" name="submit"  onclick="return regcheck()"/>
	<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset"  />
	</div>
</form>
</asp:Content>
