<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Percentage</title>
<style>
	table,th,td{
	border:1px solid black;
	}
	</style>
</head>
</head>
<body>
<%
int rolln=Integer.parseInt(request.getParameter("rno"));
String name=request.getParameter("fname");
String div=request.getParameter("divs");
int maths=Integer.parseInt(request.getParameter("maths"));
int physics=Integer.parseInt(request.getParameter("physics"));
int chemistry=Integer.parseInt(request.getParameter("chemistry"));
int cs=Integer.parseInt(request.getParameter("CS"));
float per=(maths+physics+chemistry+cs)/4;
%>

<p>
Roll Number: <%=rolln %><br>
Name: <%=name %><br>
Division: <%=div %>
<table>
<tr>
	<th>Subject</th>
	<th>Marks</th>
	</tr>
	<tr>
	<td>Maths</td>
	<td> <%=maths %></td>
	</tr>
	<tr>
	<td>Physics</td>
	<td> <%=physics %></td>
	</tr><tr>
	<td>Chemistry</td>
	<td> <%=chemistry %></td>
	</tr><tr>
	<td>CS</td>
	<td> <%=cs %></td>
	</tr>
	<tr>
	<td colspan="2">Percentage=<%=per %>
</table>
</p>
</body>
</html>