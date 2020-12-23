<%@ Page language="c#" Codebehind="admin_title_modify.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_title_modify" %>
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
						<td bgcolor="#009286"><font color="#ffffff"><b>编辑投票标题-&gt;</b></font></td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="50%"
									id="table2" bordercolor="#ffffff">
									<tr>
										<td width="40%" align="right">所属主题名称：</td>
										<td>
											<select name="sid" runat="server" id="sid">
											</select>
											<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="所属主题不能为空！" ControlToValidate="sid"></asp:RequiredFieldValidator></td>
									</tr>
									<tr>
										<td width="40%" align="right">投票标题名称：</td>
										<td><input type="text" name="title" size="25" id="title" runat="server">
											<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="投票标题不能为空！" ControlToValidate="title"></asp:RequiredFieldValidator></td>
									</tr>
									<tr>
										<td width="40%" align="right">投票类型：</td>
										<td><select size="1" name="ms" id="ms" runat="server">
												<option value="1">单选</option>
												<option value="2">多选</option>
											</select></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input type="submit" name="submit" value=" 编 辑 " runat="server" id="Submit1"></td>
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
