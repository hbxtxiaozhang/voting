<%@ Page language="c#" Codebehind="left.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.left" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>����������</title>
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
				<td width="100%" bgcolor="#009286" align="center"><font color="#ffffff"> <b>����˵�</b></font></td>
			</tr>
			<tr>
				<td width="100%" align="center"><a target="_top" href="admin_index.aspx"> ������ҳ</a>��<a target="_top" href="login.aspx?XHType=logout">�˳�����</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(1)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>ͶƱ����</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList1">
				<td width="100%"><a href="admin_subject_modify.aspx">���ͶƱ����</a><br>
					<a href="admin_subject.aspx">����ͶƱ����</a>
				</td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(2)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>ͶƱ����</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList2">
				<td width="100%"><a href="admin_title_modify.aspx">���ͶƱ����</a><br>
					<a href="admin_title.aspx">����ͶƱ����</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(3)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>ͶƱ����</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList3">
				<td width="100%"><a href="admin_question_modify.aspx">���ͶƱ����</a><br>
					<a href="admin_question.aspx">����ͶƱ����</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" onclick="XHShowList(4)" class="XHList" onmouseover="this.className='XHList2';"
					onmouseout="this.className='XHList';">
					<font color="#ffffff"><b>ϵͳ����</b></font></td>
			</tr>
			<tr style="DISPLAY:none" id="XHList4">
				<td width="100%"><a href="admin_system.aspx">ϵͳ��ʼ����</a><br>
					<a href="admin_admin.aspx">�޸Ĺ���Ա��Ϣ</a></td>
			</tr>
			<tr>
				<td width="100%" bgcolor="#009286" class="XHList">
					<font color="#ffffff"><b>ϵͳ��Ȩ</b></font></td>
			</tr>
			<tr id="XHList6">
				<td width="100%">������ƣ�<a href="http://www.xhonline.cn" target="_blank">ѩ������</a><br>
					<br>
					����汾��NetVote V1.&nbsp;60826</td>
			</tr>
			</TR></TR>
		</table>
	</body>
</HTML>
