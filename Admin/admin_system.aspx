<%@ Page language="c#" Codebehind="admin_system.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_system" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>����������</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body topmargin="1" leftmargin="1">
		<form id="form1" runat="server">
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="100%"
					id="table1" bgcolor="#e1f4ee" bordercolor="#009286">
					<tr>
						<td bgcolor="#009286"><font color="#ffffff"><b>�޸�ϵͳ����-&gt;</b></font></td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="70%"
									id="table2" bordercolor="#ffffff">
									<tr>
										<td width="35%" align="right">վ�����ƣ�</td>
										<td>
											<asp:TextBox ID="txtWebName" Columns="40" Runat="server"></asp:TextBox><br>
											<font color="#808080">��վ��վ�� ���磺ѩ�����ߣ�</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">վ���ַ��</td>
										<td>
											<asp:TextBox ID="txtWebUrl" Columns="40" Runat="server"></asp:TextBox><br>
											<font color="#808080">������������ַ���磺http://www.xhonline.cn/)</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">ͶƱϵͳ��ַ��</td>
										<td>
											<asp:TextBox ID="txtSystemUrl" Columns="40" Runat="server"></asp:TextBox><br>
											<font color="#808080">������������ַ���磺http://www.xhonline.cn/vote/)</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">IP���ƣ�</td>
										<td>
											<asp:DropDownList id="Dlist_RestrictIP" runat="server">
												<asp:ListItem Value="true">��</asp:ListItem>
												<asp:ListItem Value="false">��</asp:ListItem>
											</asp:DropDownList><font color="#808080">ѡ���ǡ�������ͬһIP���ͶƱ</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">ͬһIP����ͶƱʱ�䣺</td>
										<td>
											<asp:DropDownList id="Dlist_refuseTime" runat="server">
												<asp:ListItem Value="1">1Сʱ</asp:ListItem>
												<asp:ListItem Value="6">6Сʱ</asp:ListItem>
												<asp:ListItem Value="12">12Сʱ</asp:ListItem>
												<asp:ListItem Value="24">24Сʱ</asp:ListItem>
											</asp:DropDownList><br>
											<font color="#808080">����ѡ��ʱ����ڣ�ͬһIP��������ͶƱ����ѡ����Ҫ��IP���ơ�Ϊ���ǡ�����Ч</font>
										</td>
									</tr>
									<tr>
										<td width="35%" align="right">ͶƱ����鿴���ƣ�</td>
										<td>
											<asp:DropDownList id="Dlist_AllowView" runat="server">
												<asp:ListItem Value="false">����</asp:ListItem>
												<asp:ListItem Value="true">�ܾ�</asp:ListItem>
											</asp:DropDownList><font color="#808080">ѡ��ܾ���ֻ�й���Ա�ſ��Բ鿴ͶƱ���</font>
										</td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<asp:Button ID="BtnSubmit" Runat="server" Text=" �� �� "></asp:Button></td>
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
