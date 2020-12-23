<%@ Page language="c#" Codebehind="left.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.left" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>■管理中心</title>
		<meta http-equiv="Content-Language" content="zh-cn">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
		<script language="javascript1.2">
function XHShowList(id)
{
	whichEl = eval("XHList"+id);
	if (whichEl.style.display == "none")
	{eval("XHList"+id+".style.display=\"\";");}
	else
	{eval("XHList"+id+".style.display=\"none\";");}
}
		</script>
		<base target="XH_w3">
		<link rel="stylesheet" type="text/css" href="css/Admin_STYLE.CSS">
	</HEAD>
	<body topmargin="0" leftmargin="0">
		<table border="0" cellspacing="1" style="BORDER-COLLAPSE: collapse" width="115" cellpadding="2"
			bgcolor="#e1f4ee">
			<tr>
				<td width="100%" bgcolor="#009286" align="center"><font color="#ffffff"> <b>管理菜单</b></font></td>
			</tr>
			<tr>
				<td width="100%" align="center"><a target="_top" href="admin_index.aspx"> 管理首页</a>｜<a target="_top" href="login.aspx?XHType=logout">退出管理</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(1)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>投票主题</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList1">
				<td width="100%"><a href="admin_subject_modify.aspx">添加投票主题</a><br>
					<a href="admin_subject.aspx">管理投票主题</a>
				</td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(2)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>投票标题</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList2">
				<td width="100%"><a href="admin_title_modify.aspx">添加投票标题</a><br>
					<a href="admin_title.aspx">管理投票标题</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(3)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>投票问题</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList3">
				<td width="100%"><a href="admin_question_modify.aspx">添加投票问题</a><br>
					<a href="admin_question.aspx">管理投票问题</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(4)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>系统设置</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList4">
				<td width="100%"><a href="admin_system.aspx">系统初始配置</a><br>
					<a href="admin_admin.aspx">修改管理员信息</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" class="XHList">
					<font color="#ffffff"><b>系统版权</b></font></td>
			</tr>
			<tr id="XHList6">
				<td width="100%">程序设计：<a href="http://www.xhonline.cn" target="_blank">雪晖在线</a><br>
					<br>
					程序版本：NetVote V1.&nbsp;60826</td>
			</tr>
			</TR></TR>
		</table>
	</body>
</HTML>
