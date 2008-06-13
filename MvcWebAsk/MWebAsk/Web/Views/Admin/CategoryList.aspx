<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="MWebAsk.Views.Admin.CategoryList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%
	Html.Grid<Category>(
		"list", 
		new Hash(empty => "没有数据", style => "width: 100%"),
		column => {
			column.For(p => p.ID);
			column.For(p => p.Title);
			
			column.For("Custom Column").Do(p => { %>
				<td>A custom column...</td>	
			<% });
		}
	);
%>
<% using (
        Html.Form("Admin", "SaveCategory", FormMethod.Post, Html.Validation().FormValidation("cate"))
) { %>

	<div class="reg">
		<ul>
			<li>
				<label>
					title：</label><%=Html.TextBox("Title") %>
					<%= Html.Validation().RequiredValidator("r4Title", "Title",
                                                "请输入一个名称.", "cate")%>
			<%=Html.Hidden("ParentID") %>			
			</li>
		</ul>
	</div>
	<div class="regsub">
		<%=Html.SubmitButton("","提交") %>
		<input id="reset" class="bnsrh" type="reset" value="重新填写" name="reset" />
	</div>
	<%} %>

</asp:Content>
