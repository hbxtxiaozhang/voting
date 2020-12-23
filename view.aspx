<%@ Page language="c#" Codebehind="view.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.view" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>雪晖在线投票系统--查看投票结果</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css.css">
	</HEAD>
	<body topmargin="0" leftmargin="0">
		<form id="Form1" method="post" runat="server">
			<div align="center"><asp:Repeater ID="RptTitle" Runat="server">
					<ItemTemplate>
						<table border="0" width="40%" id="table1" cellspacing="1" cellpadding="3" class="tableborder"
							style="BORDER-LEFT-COLOR:#3366ff; BORDER-BOTTOM-COLOR:#3366ff; BORDER-TOP-COLOR:#3366ff; BORDER-COLLAPSE:collapse; BORDER-RIGHT-COLOR:#3366ff">
							<tr>
								<th colspan="4" bgcolor="#3366ff">
									<font color="#ffffff"><%# DataBinder.Eval(Container.DataItem,"title")%></font>
								</th>
							</tr>
							<tr>
								<td colspan="4" align="center" bgcolor="#99ccff">该问题总投票人数：<%# DataBinder.Eval(Container.DataItem,"vcount")%>人</td>
							</tr>
							<asp:Repeater ID="RptQt" Runat="server" DataSource='<%# ((DataRowView)Container.DataItem).Row.GetChildRows("myrelation") %>'>
								<ItemTemplate>
									<tr>
										<td class="tablebody1"><%# DataBinder.Eval(Container.DataItem,"[\"question\"]").ToString()%></td>
										<td class="tablebody1" width="10%" nowrap><b><%# reZps(DataBinder.Eval(Container.DataItem,"[\"id\"]").ToString())%></b>票</td>
										<td class="tablebody1" width="80">
											<table border="0" cellspacing="0" cellpadding="0" height="5" bgcolor="#cc99ff" width="<%# reZps(DataBinder.Eval(Container.DataItem,"[\"id\"]").ToString())!=0 ? 80*(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"[\"ps\"]").ToString())/reZps(DataBinder.Eval(Container.DataItem,"[\"id\"]").ToString())) : 0%>">
												<tr>
													<td></td>
												</tr>
											</table>
										</td>
										<td class="tablebody1" width="18%" nowrap>占<b><%# reZps(DataBinder.Eval(Container.DataItem,"[\"id\"]").ToString())==0 ? "0.0%" : Convert.ToString(Math.Round(Convert.ToDouble(Convert.ToInt32(DataBinder.Eval(Container.DataItem,"[\"ps\"]").ToString())/reZps(DataBinder.Eval(Container.DataItem,"[\"id\"]").ToString()))*100,3))+"%"%></b></td>
									</tr>
								</ItemTemplate>
							</asp:Repeater>
						</table>
						<br>
					</ItemTemplate>
				</asp:Repeater>
			</div>
			<div align="center">
				<input type="button" name="button" value="关闭" onclick="javascript:window.close()" style="BORDER-RIGHT: #ffcccc 1px dotted; BORDER-TOP: #ffcccc 1px dotted; FONT-WEIGHT: bold; BORDER-LEFT: #ffcccc 1px dotted; COLOR: #ffffff; BORDER-BOTTOM: #ffcccc 1px dotted; BACKGROUND-COLOR: #0099ff">
			</div>
		</form>
	</body>
</HTML>
