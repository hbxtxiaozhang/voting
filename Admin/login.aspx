<%@ Page language="c#" Codebehind="login.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.login" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>�����½</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body>
		<div align="center">
			<p>
			</p>
			<table border="0" width="100%" id="table1" cellpadding="0" height="200" style="BORDER-COLLAPSE: collapse">
				<tr>
					<td>
						<div align="center">
							<table border="1" width="60%" cellspacing="1" cellpadding="3" style="BORDER-COLLAPSE: collapse"
								bgcolor="#ffffff">
								<form action="?act=login" method="post" id="form1" runat="server">
									<TBODY>
										<tr>
											<th colspan="2" bgcolor="#009999">
												<FONT color="#ffffff">�����½</FONT></th>
										</tr>
										<tr>
											<td width="30%" align="right"><b>�û�����</b></td>
											<td><input type="text" name="txtUserName" runat="server" id="txtUserName">
												<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="�û�������Ϊ�գ�" ControlToValidate="txtUserName"></asp:RequiredFieldValidator></td>
										</tr>
										<tr>
											<td width="30%" align="right"><b>��&nbsp; �룺</b></td>
											<td><input type="password" name="txtPassword" size="21" runat="server" id="txtPassword">
												<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="���벻��Ϊ�գ�" ControlToValidate="txtPassword"></asp:RequiredFieldValidator></td>
										</tr>
										<tr>
											<td align="right"><b>��֤�룺</b></td>
											<td valign="middle"><input type="text" name="txtCheckCode" size="8" runat="server" id="txtCheckCode">&nbsp;<img src="../Include/CheckCode.aspx">
												<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="��֤�벻��Ϊ�գ�" ControlToValidate="txtCheckCode"></asp:RequiredFieldValidator></td>
										</tr>
										<tr>
											<td colspan="2" align="center" bgcolor="#99cccc"><asp:Button ID="BtnSubmit" Text="��¼" Runat="server"></asp:Button>
												<input type="reset" name="reset" value="ȡ��"></td>
										</tr>
								</form>
							</table>
						</div>
					</td>
				</tr>
				</TBODY></table>
		</div>
	</body>
</HTML>
