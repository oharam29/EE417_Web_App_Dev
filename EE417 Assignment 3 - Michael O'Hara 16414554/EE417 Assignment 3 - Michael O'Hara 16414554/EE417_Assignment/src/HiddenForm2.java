

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class HiddenForm2
 */
@WebServlet("/HiddenForm2")
public class HiddenForm2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HiddenForm2() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		   PrintWriter out = response.getWriter();
		                
		   String UN = request.getParameter("username");
		   String PW = request.getParameter("password");
		   String CSS = "<link rel=\"stylesheet\" type=\"text/css\" href=\"../Style/style.css\"/>";

		   out.println("<html><head><title>Hidden Form Example</title>" + CSS + "</head>");
		   out.println("<body><h1>EE417 Assignment 1 - Hidden Form Page 2</h1><p>By Michael O'Hara - 16414554</p>");
		   out.println("<h2>You have selected username = " + UN + "</h2>");
		   out.println("<h3>The new password for this user is: " + PW + "</h3>");
		   out.println("<p>An Automated email shall be sent to the email associatied with this acocunt to note the changes to the password</p>");
		   out.println("<br><p>PLEASE NOTE: This is only a dummy change as there is no database behind the application yet.</p>");
		   out.println("</body><footer><p>Copyright © 2021  Michael O Hara EE417 Assignment 1 Part 1</p> </footer></html>");
		   out.close();
	}

}
