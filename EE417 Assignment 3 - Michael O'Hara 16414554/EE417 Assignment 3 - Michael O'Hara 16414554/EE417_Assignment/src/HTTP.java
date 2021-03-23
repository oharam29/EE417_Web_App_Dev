import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class HTTP
 */
@WebServlet("/HTTP")
public class HTTP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HTTP() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		      
		HttpSession session = request.getSession(true);
		String UN = request.getParameter("username");
    
		out.println("<html><head><title>HTTP Sessions</title></head>");
		out.println("<h1>EE417 Assignment 1 - Home Page</h1><p>By Michael O Hara - 16414554</p>");
		out.println("<body><h1>Track a users session</h1>");
		out.println("<br/>Session ID = " + session.getId());
		      
		Integer count = (Integer) session.getAttribute("count.value");   
		if (count == null) {
			count = 1;
		}  
		else {
			count = count + 1;
		}
		      
		session.setAttribute("count.value", count);
		out.println("Selected user is: " + UN);
		out.println("<br/><br/>" + UN + " has visited this page " + count + " time(s)");
		out.println("</body><footer><p>Copyright © 2021  Michael O Hara EE417 Assignment 1 Part 1</p> </footer></html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
