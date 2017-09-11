

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Exp2Servlet
 */
@WebServlet("/Exp2Servlet")
public class Exp2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		response.setContentType("text/html");
		PrintWriter out= response.getWriter();
		String fname = request.getParameter("fullname");
		String roll = request.getParameter("rno");
		String eml = request.getParameter("email");
		String tc= request.getParameter("tnc");
		String[] gen = request.getParameterValues("gender");
		out.println("<html>");
		out.println("<body>");
		out.println("<table border=\'1\'>");
		out.println("<tr><td>Full Name:</td><td> "+fname+"</td></tr>");
		out.println("<tr><td>Roll Number:</td><td> "+roll+"</td></tr>");
		out.println("<tr><td>Email: </td><td>"+eml+"</td></tr>");
		out.println("<tr><td>Sex: </td><td>"+gen[0]+"</td></tr>");
		out.println("<tr><td>Terms and Conditions: </td><td>"+tc+"</td></tr>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		
		
		
		
	}

}
