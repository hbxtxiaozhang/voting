<%@ Page language="c#" Codebehind="admin_subject_modify.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_subject_modify" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>■管理中心</title>
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
						<td bgcolor="#009286"><font color="#ffffff"><b>修改投票主题-&gt;</b></font></td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="50%"
									id="table2" bordercolor="#ffffff">
									<tr>
										<td width="40%" align="right">投票主题名称：</td>
										<td>
											<input type="text" name="subject" size="25" id="subject" runat="server">
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="投票主题不能为空！" ControlToValidate="subject"></asp:RequiredFieldValidator></td>
									</tr>
									<tr>
										<td width="40%" align="right">到期时间：</td>
										<td>
											<input type="text" name="qx" size="18" id="qx" runat="server">
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="到期时间不能为空！" ControlToValidate="qx"></asp:RequiredFieldValidator></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input type="submit" name="submit" value=" 修 改 " id="submit" runat="server"></td>
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
