

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class HiddenFrom1
 */
@WebServlet("/HiddenForm1")
public class HiddenForm1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HiddenForm1() {
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
		PrintWriter out = response.getWriter();
		String UN = request.getParameter("username");
		String CSS = "<link rel=\"stylesheet\" type=\"text/css\" href=\"WebContent/Style/style.css\"/>";

		
		out.println("<html><head><title>Hidden Form</title>" + CSS + "</head>");
		out.println("<body><h1>EE417 Assignment 1 - Hidden Form Page</h1><p>By Michael O'Hara - 16414554</p>");
		out.println("<h1>Currently editing: " + UN + " </h1>");
		out.println("<form method=\"post\"" + "action=\"HiddenForm2\" name=\"myform\">");
		out.println("<br/>Now enter your new password: ");
		out.println("<input name=\"password\">");
		
		out.println("<input type=\"hidden\" name=\"username\"" + " value=\"" + UN + "\">");
		out.println("<br/><br/><input type=\"submit\" value=\"Submit Form\">");
		out.println("<input type=\"reset\" value=\"Reset\">");
		out.println("</body><footer><p>Copyright © 2021  Michael O Hara EE417 Assignment 1 Part 1</p> </footer></html>");
		out.close();
		
		
	}

}
