import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.lang.Integer;

/**
 * Servlet implementation class GetCookies
 */
@WebServlet("/GetCookies")
public class GetCookies extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCookies() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		   PrintWriter out = response.getWriter();
		   int countint = 0;
		   out.println("<html><head><title>Cookies</title></head>");                
		   out.println("<h1>EE417 Assignment 1 - Home Page</h1><p>By Michael O Hara - 16414554</p>");
		   out.println("<body><h1>Getting Cookies </h1>");
		   String UN = request.getParameter("username");
		   out.println("<H2>Getting cookies for: " + UN + "</H2>");


		   Cookie[] cookies = request.getCookies();
				  		
		   if (cookies != null) {
		     for (int i=0; i< cookies.length; i++) {
		       String name = cookies[i].getName();
		       String value = cookies[i].getValue();
		       out.println("<br/>Name: " + name);
		       out.println("<br/>Value: " + value);
		                 
		       if (name.equals("count")) {
		         countint = Integer.parseInt(value);
		         countint++;
		         Cookie cookie = new Cookie("count", countint + "");
		         cookie.setMaxAge(3600);
		         response.addCookie(cookie);
		         out.println("<br/><br/>" +  UN +" has accessed this page: "
		            + countint + " times!");
		       }
		     }				       
		   }

		   else { 
		     out.println("<br/>No cookie set -  Creating one");
		     Cookie idCookie = new Cookie("username", generateSessionID() + "");
		     idCookie.setMaxAge(3600);  
		     response.addCookie(idCookie);
		     Cookie countCookie = new Cookie("count", "0");
		     countCookie.setMaxAge(3600);
		     response.addCookie(countCookie); 
		   }

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
	private long generateSessionID()
	  {
	   return System.currentTimeMillis();
	  }

}
