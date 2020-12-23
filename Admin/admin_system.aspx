<%@ Page language="c#" Codebehind="admin_system.aspx.cs" AutoEventWireup="false" Inherits="xhvote.Admin.admin_system" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>■管理中心</title>
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
						<td bgcolor="#009286"><font color="#ffffff"><b>修改系统配置-&gt;</b></font></td>
					</tr>
					<tr>
						<td>
							<div align="center">
								<table border="1" cellpadding="0" cellspacing="0" style="BORDER-COLLAPSE: collapse" width="70%"
									id="table2" bordercolor="#ffffff">
									<tr>
										<td width="35%" align="right">站点名称：</td>
										<td>
											<asp:TextBox ID="txtWebName" Columns="40" Runat="server"></asp:TextBox><br>
											<font color="#808080">主站的站名 （如：雪晖在线）</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">站点地址：</td>
										<td>
											<asp:TextBox ID="txtWebUrl" Columns="40" Runat="server"></asp:TextBox><br>
											<font color="#808080">请输入完整地址（如：http://www.xhonline.cn/)</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">投票系统地址：</td>
										<td>
											<asp:TextBox ID="txtSystemUrl" Columns="40" Runat="server"></asp:TextBox><br>
											<font color="#808080">请输入完整地址（如：http://www.xhonline.cn/vote/)</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">IP限制：</td>
										<td>
											<asp:DropDownList id="Dlist_RestrictIP" runat="server">
												<asp:ListItem Value="true">是</asp:ListItem>
												<asp:ListItem Value="false">否</asp:ListItem>
											</asp:DropDownList><font color="#808080">选择“是”则不允许同一IP多次投票</font></td>
									</tr>
									<tr>
										<td width="35%" align="right">同一IP限制投票时间：</td>
										<td>
											<asp:DropDownList id="Dlist_refuseTime" runat="server">
												<asp:ListItem Value="1">1小时</asp:ListItem>
												<asp:ListItem Value="6">6小时</asp:ListItem>
												<asp:ListItem Value="12">12小时</asp:ListItem>
												<asp:ListItem Value="24">24小时</asp:ListItem>
											</asp:DropDownList><br>
											<font color="#808080">在所选的时间段内，同一IP不允许多次投票，该选项需要“IP限制”为“是”才有效</font>
										</td>
									</tr>
									<tr>
										<td width="35%" align="right">投票结果查看限制：</td>
										<td>
											<asp:DropDownList id="Dlist_AllowView" runat="server">
												<asp:ListItem Value="false">允许</asp:ListItem>
												<asp:ListItem Value="true">拒绝</asp:ListItem>
											</asp:DropDownList><font color="#808080">选择拒绝则只有管理员才可以查看投票结果</font>
										</td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<asp:Button ID="BtnSubmit" Runat="server" Text=" 修 改 "></asp:Button></td>
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
