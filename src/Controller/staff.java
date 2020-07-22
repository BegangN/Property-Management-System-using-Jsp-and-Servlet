package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class staff
 */
@WebServlet("/staff")
public class staff extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public staff() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String name=request.getParameter("username");
		String psswd=request.getParameter("password");
		
		if(name.equalsIgnoreCase("admin")&&psswd.equalsIgnoreCase("1234"))
		{			session.setAttribute("id",1);		
			request.getRequestDispatcher("staff.jsp").forward(request, response);
		}
	
		else if(name.equalsIgnoreCase("staff")&&psswd.equalsIgnoreCase("1234")){
		
			request.getRequestDispatcher("staff.jsp").forward(request, response);
	}
	}
	}

