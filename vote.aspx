<%@ Page language="c#" Codebehind="vote.aspx.cs" AutoEventWireup="false" Inherits="xhvote.vote" %>
<%
using System;
using System.Data;
using System.Data.OleDb;

Response.Write("document.write('<form action="+SystemUrl+"view.aspx?sid="+sid+" method=post name=formResearch target=_blank>');");
OleDbDataReader dr;
OleDbCommand cmd = new OleDbCommand("select * from xh_title where sid="+sid,MyConn);
cmd.Connection.open();
dr = cmd.ExecuteReader();
if(dr.HasRows)
{
	while(dr.Read())
	{
		Response.Write("document.write('<div align=left>');");
		Response.Write("document.write('<table border=0 cellspacing=1 cellpadding=3>');");
		Response.Write("document.write('<tr>');");
		Response.Write("document.write('<td nowrap><b>"&rs("title")&"</b></td>');");
		Response.Write("document.write('</tr>');");
		OleDbDataReader qdr;
		OleDbCommand qcmd = new OleDbCommand("select count(*) from xh_question where tid="+dr["id"].ToString(),MyConn);
		int qzs = (int)qcmd.ExecuteScalar();
		qcmd.CommandText = "select * from xh_question where tid="+dr["id"].ToString(),MyConn);
		qdr = qcmd.ExecuteReader();
		if(qdr.HasRows)
		{
			int i=1;
			while(qdr.Read())
			{
				if(qzs<=8)
				{
					Response.Write("document.write('<tr>');");
				}
				if(dr["ms"].ToString()=="1")
				{
					if(qzs<=8)
					{
						Response.Write("document.write('<td nowrap width=""50%""><input type=radio name="""+dr["id"].ToString()+""" value="""+qdr["id"].ToString()+""">"+qdr["question"].ToString()+"</td>');");
					}
					else
					{
						Response.Write("document.write('<td nowrap width=""50%""><input type=radio name="""+dr["id"].ToString()+""" value="""+qdr["id"].ToString()+""">"+qdr["question"].ToString()+"</td>');");
						if(i % 2 ==0)
						{
							Response.Write("document.write('</tr><tr>');");
						}
					}
				}
				else if(dr["ms"].ToString()=="2")
				{
					if(qzs<=8)
					{
						Response.Write("document.write('<td nowrap width=""50%""><input type=checkbox name="""+dr["id"].ToString()+""" value="""+qdr["id"].ToString()+""">"+qdr["question"].ToString()+"</td>');");	
					}
					else
					{
						Response.Write("document.write('<td nowrap width=""50%""><input type=checkbox name="""+dr["id"].ToString()+""" value="""+qdr["id"].ToString()+""">"+qdr["question"].ToString()+"</td>');");
						if(i % 2 ==0)
						{
							Response.Write("document.write('</tr><tr>');");
						}
					}
				}
				if(qzs<=8)
				{
					Response.Write("document.write('</tr>');");
				}
				i += 1;
			}
		}
		else
		{
			Response.Write("document.write('<tr><td align=center><font color=red>没有任何投票项！</font></td></tr>');");
		}
		qdr.Close();
		qcmd.Dispose();
		Response.Write("document.write('</table>');");
		Response.Write("document.write('</div>');");
	}
}
else
{
	Response.Write("document.write('<tr><td align=center><font color=red>没有任何投票！</font></td></tr>');");
}
dr.Close();
cmd.Dispose();
MyConn.Close();	

Response.Write("document.write('<table border=0 width=200 cellspacing=1 cellpadding=3>');");
Response.Write("document.write('<tr>');");
Response.Write("document.write('<td align=center><input type=submit name=submit value=投票>&nbsp; <input type=submit name=submit value=查看结果></td>');");
Response.Write("document.write('</tr>');");
Response.Write("document.write('<tr>');");
Response.Write("document.write('<td align=center nowrap>Powered By : XHOnline NetVote v1.0 B60829<br>CopyRight 2004-2008 &copy; <a href="+WebUrl+" taget=_blank>"+WebName+"</a></td>');"
Response.Write("document.write('</tr>');");
Response.Write("document.write('</table>');");
Response.Write("document.write('</form>');");
%>													