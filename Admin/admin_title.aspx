<%@ Page language="c#" Codebehind="admin_title.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_title" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>■管理中心</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
		<script language="JavaScript">
		function XH() {
			for (var i=0;i<document.XHH.XHID.length;i++) {
				var e=document.XHH.XHID[i];
				e.checked=!e.checked;
			}
		}	
		</script>
	</HEAD>
	<body topmargin="1" leftmargin="1">
		<form id="XHH" method="post" runat="server">
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="100%"
					id="table1" bgcolor="#e1f4ee" bordercolor="#009286">
					<tr>
						<td bgcolor="#009286"><font color="#ffffff"><b>管理投票标题-&gt;<asp:Label ID="lblTitle" Runat="server"></asp:Label>
								</b></font>
						</td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<table border="1" style="BORDER-COLLAPSE: collapse" width="100%" id="table2" bordercolor="#ffffff"
									cellspacing="1">
									<tr>
										<td width="5%" bgcolor="#e0eef5" align="center">ID</td>
										<td width="5%" bgcolor="#e0eef5" align="center"><a href="javascript:XH()">选择</a></td>
										<td bgcolor="#e0eef5" align="center">投票标题名称</td>
										<td bgcolor="#e0eef5" align="center" width="20%">
											所属主题名称</td>
										<td bgcolor="#e0eef5" align="center" width="20%">投票类别</td>
										<td width="10%" bgcolor="#e0eef5" align="center">单项操作</td>
									</tr>
									<asp:Repeater ID="RptList" Runat="server">
										<ItemTemplate>
											<tr>
												<td width="5%" bgcolor="#e1ffe1" align="center"><%# DataBinder.Eval(Container.DataItem,"id")%></td>
												<td width="5%" bgcolor="#e1ffe1" align="center"><input type="checkbox" name="XHID" value="<%# DataBinder.Eval(Container.DataItem,"id")%>"></td>
												<td align="center"><a href="admin_title_modify.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id")%>"><%# DataBinder.Eval(Container.DataItem,"title")%></a></td>
												<td align="center" width="20%"><%# reSubject(DataBinder.Eval(Container.DataItem,"sid").ToString())%></td>
												<td align="center" width="20%"><%# DataBinder.Eval(Container.DataItem,"ms").ToString()=="2" ? "多选" : "单选"%></td>
												<td width="10%" align="center"><a href="admin_title.aspx?act=del&id=<%# DataBinder.Eval(Container.DataItem,"id")%>&key=<%=strK%>&page=<%=page%>">删除</a></td>
											</tr>
										</ItemTemplate>
									</asp:Repeater>
									<tr>
										<td width="5%" bgcolor="#e0eef5" align="center">ID</td>
										<td width="5%" bgcolor="#e0eef5" align="center"><a href="javascript:XH()">选择</a></td>
										<td bgcolor="#e0eef5" align="center">投票标题名称</td>
										<td bgcolor="#e0eef5" align="center" width="20%">
											所属主题名称</td>
										<td bgcolor="#e0eef5" align="center" width="20%">投票类别</td>
										<td width="10%" bgcolor="#e0eef5" align="center">单项操作</td>
									</tr>
									<tr>
										<td colspan="6">
											<input type="submit" name="cmdDel" value="删除所选投票标题" id="cmdDel" runat="server"> 
											| <input type="text" name="k" runat="server" id="k"> <input type="submit" name="cmdSearch" value="搜索投票标题" id="cmdSearch" runat="server"></td>
									</tr>
									<tr>
										<td colspan="6">
											<webdiyer:AspNetPager id="AspNetPager1" runat="server" AlwaysShow="True" PageSize="20" UrlPaging="True"
												NumericButtonCount="5"></webdiyer:AspNetPager>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</HTML>
