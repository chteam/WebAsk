<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master"
	AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="MWebAsk.Views.Admin.CategoryList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<%
		Html.Grid<Category>(
			"list",
			new Hash(empty => "没有数据", style => "width: 100%"),
			column =>
			{
				column.For(p => p.COrder, "顺序");
				column.For(p => p.ID);
				column.For("名称").Do(p =>
				{ 
	%>
	<td>
		<%=Html.ActionLink<AdminController>(c=>c.CategoryList(p.ID,0),p.Title) %>
	</td>
	<%	
		}
				);
			column.For("操作").Do(p =>
			{ %>
	<td>
		<%=Html.ActionLink<AdminController>(c=>c.DelCategory(p.ID),"删除") /*生成  Admin/DelCategory?id= */%>
		
		<%=Html.ActionLink<AdminController>(c => c.CategoryList((long)ViewData["ParentID"], p.ID), "更新")%>
		
	</td>

	<% });
		}
	);


		
		
		
	using (
			Html.Form("Admin", "SaveCategory", FormMethod.Post, Html.Validation().FormValidation("cate"))
	)
	{
		if (ViewData["ID"].ToString()=="0")
		{
	%>
	正在新建
	<%
		}
		else
		{ %>
	正在更新 <%=Html.ActionLink<AdminController>(c => c.CategoryList((long)ViewData["ParentID"], 0), "点击新建")%>
	<%
		}
		%>
	<div class="reg">
		<ul>
			<li>
				<label>
				<%=Html.Hidden("ID") %>
				title：</label><%=Html.TextBox("Title")%>
				<%= Html.Validation().RequiredValidator("r4Title", "Title","请输入一个名称.", "cate")%>
				corder:<%=Html.TextBox("COrder")%>
				<%= Html.Validation().RegularExpressionValidator("r4COrder", "COrder",@"\d+" ,"必为数字.", "cate")%>
				<%= Html.Validation().RequiredValidator("r4O", "COrder", "必写.", "cate")%>
				<%=Html.Hidden("ParentID")%>
			</li>
		</ul>
	</div>
	<div class="regsub">
		<%=Html.SubmitButton("", "提交")%>
		<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset" />
	</div>
	<%} %>
</asp:Content>
