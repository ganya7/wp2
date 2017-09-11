<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Cookie fullname=new Cookie("name",request.getParameter("name"));
Cookie rno=new Cookie("num",request.getParameter("num"));
Cookie email=new Cookie("email",request.getParameter("email"));
Cookie mbno=new Cookie("mob",request.getParameter("mob"));
fullname.setMaxAge(120);
rno.setMaxAge(120);
email.setMaxAge(120);
mbno.setMaxAge(120);
//fullname.setMaxAge(120);
response.addCookie(fullname);
response.addCookie(rno);
response.addCookie(email);
response.addCookie(mbno);

//rintWriter out= response.getWriter();
Cookie cookie=null;
Cookie[] cookies= null;
cookies = request.getCookies();
if( cookies != null )
{
	out.println("<h2> Cookies list and their value</h2>");
	for (int i = 0; i < cookies.length; i++)
	{	
		cookie = cookies[i];
        out.print("Name : " + cookie.getName( ) + ",  ");
		out.print("Value: " + cookie.getValue( ) + " <br/>");
    }
}
else
      {
      	out.println("<h2>No cookies founds</h2>");
      }	
%>

<%

if( cookies != null ) {
   out.println("<h3> deletion of cookie</h3>");
   
   for (int i = 0; i < cookies.length; i++) {
      cookie = cookies[i];
      
      if((cookie.getName( )).compareTo("name") == 0 ) {
         cookie.setMaxAge(0);
         response.addCookie(cookie);
         out.print("<b><i>Deleted cookie: " + 
         cookie.getName( ) + "</b></i><br/>");
      }
      out.print("Name : " + cookie.getName( ) + ",  ");
      out.print("Value: " + cookie.getValue( )+" <br/>");
   }
} else {
   out.println(
   "<h2>No cookies founds</h2>");
}
%>

<h2>Person details</h2>
 <p>Name: <%= request.getParameter("name")%></p>
 <p>Roll Number: <%= request.getParameter("num")%></p>
 <p>Email: <%= request.getParameter("email")%></p>
 <p>Mobile Number: <%= request.getParameter("mob")%></p>
 <table border="1">
	<tr>
		<th>Name</th>
		<th>Roll number</th>
		<th>Email</th>
		<th>Mobile</th>
	</tr>
	<tr>
		<td><%= request.getParameter("name")%></td>
		<td><%= request.getParameter("num")%></td>
		<td><%= request.getParameter("email")%></td>
		<td><%= request.getParameter("mob")%></td>
	</tr>
</table>
</body>
</html>