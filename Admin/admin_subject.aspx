<%@ Page language="c#" Codebehind="admin_subject.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_subject" %>
<%@ Register TagPrefix="webdiyer" Namespace="Wuqi.Webdiyer" Assembly="AspNetPager" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>����������</title>
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
		<form id="XHH" method="post" runat="server" name="XHH">
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="100%"
					id="table1" bgcolor="#e1f4ee" bordercolor="#009286">
					<TBODY>
						<tr>
							<td bgcolor="#009286"><font color="#ffffff"><b>����ͶƱ����-&gt;<asp:Label ID="lblTitle" Runat="server"></asp:Label></b></font></td>
						</tr>
						<tr>
							<td>
								<div align="center">
									<table border="1" style="BORDER-COLLAPSE: collapse" width="100%" id="table2" bordercolor="#ffffff"
										cellspacing="1">
										<TBODY>
											<tr>
												<td width="5%" bgcolor="#e0eef5" align="center">ID</td>
												<td width="5%" bgcolor="#e0eef5" align="center"><a href="javascript:XH()">ѡ��</a></td>
												<td bgcolor="#e0eef5" align="center">ͶƱ��������</td>
												<td bgcolor="#e0eef5" align="center" width="20%">
													ͶƱ���⵽��ʱ��</td>
												<td width="10%" bgcolor="#e0eef5" align="center">
													���ô���</td>
												<td width="10%" bgcolor="#e0eef5" align="center">
													ͶƱ���</td>
												<td width="10%" bgcolor="#e0eef5" align="center">״̬</td>
												<td width="10%" bgcolor="#e0eef5" align="center">�������</td>
											</tr>
											<asp:Repeater ID="RptList" Runat="server">
												<ItemTemplate>
													<tr>
														<td width="5%" bgcolor="#e1ffe1" align="center"><%# DataBinder.Eval(Container.DataItem,"id")%></td>
														<td width="5%" bgcolor="#e1ffe1" align="center"><input type="checkbox" name="XHID" value="<%# DataBinder.Eval(Container.DataItem,"id")%>"></td>
														<td align="center"><a href="admin_subject_modify.aspx?id=<%# DataBinder.Eval(Container.DataItem,"id")%>"><%# DataBinder.Eval(Container.DataItem,"subject")%></a></td>
														<td align="center" width="20%"><%# DataBinder.Eval(Container.DataItem,"qx")%></td>
														<td width="10%" align="center"><a href="#" onclick="javascript:window.open('vcode.aspx?sid=<%# DataBinder.Eval(Container.DataItem,"id")%>','','width=300,height=60,top=300,left=350,resizable=no,scrollbars=no,status=no,toolbar=no,menubar=no,location=no');">�鿴</a></td>
														<td width="10%" align="center">
															<a href="../view.aspx?sid=<%# DataBinder.Eval(Container.DataItem,"id")%>" target="_blank">�鿴</a></td>
														<td width="10%" align="center"><%# reInfo(DataBinder.Eval(Container.DataItem,"qx").ToString())%></td>
														<td width="10%" align="center"><a href="admin_subject.aspx?act=delps&id=<%# DataBinder.Eval(Container.DataItem,"id")%>&key=<%=strK%>&page=<%=page%>">���Ʊ��</a>&nbsp;<a href="admin_subject.aspx?act=del&id=<%# DataBinder.Eval(Container.DataItem,"id")%>&key=<%=strK%>&page=<%=page%>">ɾ��</a></td>
													</tr>
												</ItemTemplate>
											</asp:Repeater>
											<tr>
												<td width="5%" bgcolor="#e0eef5" align="center">ID</td>
												<td width="5%" bgcolor="#e0eef5" align="center"><a href="javascript:XH()">ѡ��</a></td>
												<td bgcolor="#e0eef5" align="center">ͶƱ��������</td>
												<td bgcolor="#e0eef5" align="center" width="20%">
													ͶƱ���⵽��ʱ��</td>
												<td width="10%" bgcolor="#e0eef5" align="center">
													���ô���</td>
												<td width="10%" bgcolor="#e0eef5" align="center">
													ͶƱ���</td>
												<td width="10%" bgcolor="#e0eef5" align="center">״̬</td>
												<td width="10%" bgcolor="#e0eef5" align="center">�������</td>
											</tr>
											<tr>
												<td colspan="8">
													<input type="submit" name="cmdDel" value="ɾ����ѡͶƱ����" runat="server" id="cmdDel"> 
													| <input type="text" name="k" id="k" runat="server"> <input type="submit" name="cmdSearch" value="����ͶƱ����" runat="server" id="cmdSearch"></td>
											</tr>
											<tr>
												<td colspan="8">
													<webdiyer:AspNetPager id="AspNetPager1" runat="server" PageSize="20" NumericButtonCount="5" UrlPaging="True"
														AlwaysShow="True"></webdiyer:AspNetPager>
												</td>
											</tr>
										</TBODY>
									</table>
								</div>
							</td>
						</tr>
					</TBODY>
				</table>
			</div>
		</form>
	</body>
</HTML>
