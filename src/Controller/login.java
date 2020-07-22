package Controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import Model.dbUtil;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet{
	private static final long serialVersionUID = 1L;
       
	private dbUtil dbUtil;

	@Resource(name = "jdbc/Botswana_Online_Property_Advertiser")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		super.init();

		try {
			dbUtil = new dbUtil(dataSource);
		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
        String password = request.getParameter("password");
      
        if(Model.dbUtil.login(username, password))
        {
            RequestDispatcher rs = request.getRequestDispatcher("seller.jsp");
            rs.forward(request, response);
        }
        else
        {
           
           RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
           rs.include(request, response);
        }
    
    
	}

}
