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
			<form id="form1" runat="server">
			<ul>
				<li class="qstname">
					<label>
						输入您的提问：</label><input name="title" type="text" value="" />
				</li>
				<li class="qsttext">
					<label>
						问题补充说明：</label><textarea name="content" cols="47" rows="8"></textarea>
				</li>
				<li class="qstname">
					<label>
						TAG 关键字 ：</label><input name="title" type="text" value="" />
				</li>
				<li>
					<div>
						<label>
							问题分类：</label><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:menglei2008ConnectionString %>"
								SelectCommand="SELECT fclass_topic, fclass_ID FROM fclass WHERE (fclass_shuxing = 0)">
							</asp:SqlDataSource>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:menglei2008ConnectionString %>"
							SelectCommand="SELECT fclass_topic FROM fclass WHERE (fclass_shuxing = @fclass_ID)">
							<SelectParameters>
								<asp:ControlParameter ControlID="ListBox1" DefaultValue="1" Name="fclass_ID" PropertyName="SelectedValue"
									Type="Int32" />
							</SelectParameters>
						</asp:SqlDataSource>
						<table class="qstlist" cellspacing="0" cellpadding="0" border="0">
							<tbody>
								<tr>
									<td valign="top" class="style1">
										<asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1"
											DataTextField="fclass_topic" DataValueField="fclass_ID" Height="200px" Width="110px">
										</asp:ListBox>
									</td>
									<td width="50">
										<div align="center">
											<b>→</b>
										</div>
									</td>
									<td valign="top">
										<asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="fclass_topic"
											DataValueField="fclass_topic" Height="200px" Width="121px"></asp:ListBox>
									</td>
								</tr>
							</tbody>
						</table>
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
</asp:Content>
