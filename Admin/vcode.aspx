<%@ Page language="c#" Codebehind="vcode.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.vcode" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>调用代码</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body topmargin="0" leftmargin="0">
		<form id="Form1" method="post" runat="server">
			<p align="center">
				<textarea rows="4" cols="38" name="code"><script src="<%=systemurl%>vote.aspx?sid=<%=sid%>"></script></textarea><br>
				<input type="button" name="button" value="关闭" onclick="javascript:window.close()">
			</p>
		</form>
	</body>
</HTML>
