import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		User user = validateUser(request.getParameter("email"), request.getParameter("password"));
		if(user!=null) {
			HttpSession session = request.getSession(true);
			session.setAttribute("theUser", user);
			if(user.getAdmin().equals(true)) {

				//out.print("<script type='text/javascript'>document.getElementById(\"admin\").style.display = \"block\";</script>");
				request.getRequestDispatcher("/Admin/AdminPanel.jsp").forward(request, response);

			}
			else {
				 request.getRequestDispatcher("index.jsp").forward(request, response);
			}
		}
		else {
			response.sendRedirect("login.html");
		}
		out.close();
		
	}
	
	private User validateUser(String email, String password) {
	     Vector<User> allUsers = new Vector<User>();
	     allUsers.add(new User("Admin", "User", "admin@web.com", "Admin1", true));
	     allUsers.add(new User("Jon", "Doe", "jon@web.com", "Mypass1", false));
	     
	     Enumeration<User> en = allUsers.elements();
	     while (en.hasMoreElements()) {
	     User user = (User) en.nextElement();
	     if ((user.getPassword().equals(password))&&(user.getEmail().equals(email))) 
	     return user;
	     }
	     return null;
	}

}
