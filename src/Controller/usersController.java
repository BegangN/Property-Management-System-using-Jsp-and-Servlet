package Controller;

import java.io.IOException;

import java.io.InputStream;

import java.sql.Blob;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import javax.sql.DataSource;

import Model.dbUtil;
import Model.property;
import Model.users;

/**
 * Servlet implementation class usersController
 */
@WebServlet("/usersController")
public class usersController extends HttpServlet {
	
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// listStudents(request, response);
			String theCommand = request.getParameter("command");

			if (theCommand == null) {
				theCommand = "listUsers";
			}
			switch (theCommand) {
			
			case "LIST":
				listUsers(request, response);
				break;
				
			case "ADD":
				addUsers(request, response);
				break;
				
			case "login":
				login(request,response);
                break;
			case "LOAD":
				loadUser(request,response);
				break;
				
			case "UPDATE":
				updateUsers(request,response);
				break;
			case "DELETE":
				deleteUsers(request,response);
				break;
			
			default:
				listUsers(request,response);
			}
		}

		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	
	private void login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
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

	private void addUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String dateRegistered = request.getParameter("dateRegistered");
		String email = request.getParameter("email");
		String contacts = request.getParameter("contacts");
		String userType = request.getParameter("userType");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session=request.getSession();

		users theusers = new users(0,firstName,lastName,gender, address, dateRegistered,
			email,  contacts, userType, username,password);
		
		dbUtil.addUsers(theusers);
		
			session.setAttribute("Success","Successfully Registered!");
			
			RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
            rs.forward(request, response);
	}
	
	
	
	public void deleteUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student id from form data
		String userID = request.getParameter("userID");

		// delete student from database

		dbUtil.deleteUser(userID);

		// send them back to "list student" page

		listUsers(request, response);
	}

	private void updateUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {

		int userID = Integer.parseInt(request.getParameter("userID"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String address = request.getParameter("address");
		String dateRegistered = request.getParameter("dateRegistered");
		String email = request.getParameter("email");
		String contacts = request.getParameter("contacts");
		String userType = request.getParameter("userType");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		HttpSession session=request.getSession();

		users theusers = new users(userID,firstName,lastName,gender, address, dateRegistered,
			email,  contacts, userType, username,password);

		Model.dbUtil.updateUsers(theusers);

		listUsers(request, response);

	}

	private void loadUser(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String theusersId = request.getParameter("userID");

		users theusers = dbUtil.getUsers(theusersId);

		request.setAttribute("THE_USER", theusers);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateUser.jsp");
		dispatcher.forward(request, response);

	}


	private void listUsers(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<users> users = Model.dbUtil.getUsers();

		request.setAttribute("USERS_LIST", users);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/seller.jsp");
		dispatcher.forward(request, response);
	}

	
	
}  
	



