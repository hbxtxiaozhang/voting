<%@ Page language="c#" Codebehind="main.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.main" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>■管理中心</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body topmargin="1" leftmargin="1">
		<table border="0" cellspacing="1" style="BORDER-COLLAPSE: collapse" width="100%" bgcolor="#009286"
			cellpadding="2">
			<tr>
				<td width="100%" bgcolor="#009286"><font color="#ffffff"><b>欢迎进入管理中心!</b></font></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#ffffff"></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#e1f4ee"><font color="#000080"><b>身份信息</b></font></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#ffffff">帐号：<asp:Label ID="lblAdmin" Runat="server"></asp:Label></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#ffffff">资料：<a href="admin_system.aspx">修改系统配置</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#e1f4ee"><font color="#000080"><b>系统说明</b></font></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#ffffff">&nbsp;&nbsp;<font color="#ff0000">如果你是第一次使用，请务必先</font><font color="#0000ff">修改系统配置</font><font color="#ff0000">！！否则无法正常使用。</font>
					<br>
					<br>
					&nbsp; 为了系统安全，请修改管理员的信息。<br>
					<br>
					&nbsp; 修改好系统配置之后，请按照<font color="#ff0000">主题－－&gt;标题－－&gt;问题</font>的次序进行添加。</td>
			</tr>
		</table>
	</body>
</HTML>
