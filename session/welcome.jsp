<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String uname = request.getParameter("usrname");
session.setAttribute("username",uname);
out.print(uname);

long creationtime = session.getCreationTime();
long time = session.getLastAccessedTime();
String sid = session.getId();
Date createDate = new Date(creationtime);
Date lastAccessedDate = new Date(time);
if(session.isNew())
{
	out.println("<h2>Welcome new user</h2>");
}
else{
	out.println("<h3>Welcome back user</h3>");
	out.println("CD"+createDate);
	out.println("LD"+lastAccessedDate);
	out.println("SD"+sid);
	
}
	
%>
<a href=sample.jsp>Sample jsp</a>
</body>
</html>