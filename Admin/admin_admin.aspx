<%@ Page language="c#" Codebehind="admin_admin.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_admin" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>����������</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body topmargin="1" leftmargin="1">
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="100%"
					id="table1" bgcolor="#e1f4ee" bordercolor="#009286">
					<tr>
						<td bgcolor="#009286"><font color="#ffffff"><b>�޸Ĺ���Ա��Ϣ-&gt;</b></font></td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="50%"
									id="table2" bordercolor="#ffffff">
									<tr>
										<td width="35%" align="right">����Ա���ƣ�</td>
										<td>
											<input type="text" name="username" size="20" runat="server" id="username">
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="����Ա���Ʋ���Ϊ�գ�" ControlToValidate="username"></asp:RequiredFieldValidator></td>
									</tr>
									<tr>
										<td width="35%" align="right">����Ա���룺</td>
										<td>
											<input type="password" name="password" size="21" runat="server" id="password">
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="����Ա���벻��Ϊ�գ�" ControlToValidate="password"></asp:RequiredFieldValidator></td>
									</tr>
									<tr>
										<td width="35%" align="right">�ظ����룺</td>
										<td>
											<input type="password" name="password1" size="21" runat="server" id="password1">
											<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="�ظ����벻��Ϊ�գ�" ControlToValidate="password1"></asp:RequiredFieldValidator>
											<asp:CompareValidator id="CompareValidator1" runat="server" ErrorMessage="�������벻һ�£�" ControlToValidate="password1"
												ControlToCompare="password"></asp:CompareValidator></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input type="submit" name="cmdModify" value=" �� �� " runat="server" id="cmdModify"></td>
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
