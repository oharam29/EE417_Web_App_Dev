import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class URLRewrite
 */
@WebServlet("/URLRewrite")
public class URLRewrite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URLRewrite() {
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
		
		String UN = request.getParameter("username");
		
		out.println("<html><head><title>URL Rewrite</title></head>"); 
		out.println("<h1>EE417 Assignment 1 - Home Page</h1><p>By Michael O Hara - 16414554</p>");

		out.println("<body><h1>Rewrite URL using Username</h1>");
		
		if (request.getParameter("username") == null) {
			out.println("User logged in - generating unique sessionID");
			UN = "user1";
		}
		else {
			out.println("User logged in getting username");
		}
		out.println("<br/><br/>URL end = " + UN);
		out.println("<br/><br/>As seen in the URL the users username is appended to the end of the URL. This can be used to determine whihc "
		   		+ "user is logged in at any time.");
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
