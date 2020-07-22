package Controller;

import java.io.IOException;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
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
 * Servlet implementation class propertyController
 */

@WebServlet("/propertyController")
@MultipartConfig(maxFileSize = 16177215) 
public class propertyController extends HttpServlet {
	
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
				theCommand = "listProperty";
			}
			switch (theCommand) {
			
			case "LIST":
				listProperty(request, response);
				break;
				
			case "ADD":
				addProperty(request, response);
				break;
		
			case "LOAD":
				loadProperty(request,response);
				break;
				
			case "UPDATE":
				updateProperty(request,response);
				break;
			case "DELETE":
				deleteProperty(request,response);
				break;
			
			default:
				listProperty(request,response);
			}
		}

		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	

	
	
	
	public void deleteProperty(HttpServletRequest request, HttpServletResponse response) throws Exception {

		// read student id from form data
		String propertyId = request.getParameter("propertyId");

		// delete student from database

		dbUtil.deleteUser(propertyId);

		// send them back to "list student" page

		listProperty(request, response);
	}

	

	private void loadProperty(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String propertyId = request.getParameter("propertyId");

		property theproperty = dbUtil.getProperty(propertyId);

		request.setAttribute("THE_PROPERTY", theproperty);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/updateProperty.jsp");
		dispatcher.forward(request, response);

	}


	private void listProperty(HttpServletRequest request, HttpServletResponse response) throws Exception {

		List<property> property = Model.dbUtil.getProperty();

		request.setAttribute("PROPERTY_LIST", property);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/seller.jsp");
		dispatcher.forward(request, response);
	}

	
	
 
	
	private void addProperty(HttpServletRequest request, HttpServletResponse response) throws Exception {
		

		String propertyName = request.getParameter("propertyName");
		String propertyType = request.getParameter("propertyType");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String amount = request.getParameter("amount");
	    String termID = request.getParameter("termID");
	    String duration = request.getParameter("duration");
	    String statusID = request.getParameter("statusID");
		String description = request.getParameter("description");
		String advertID = request.getParameter("advertID");
		String dateAdvertised = request.getParameter("dateAdvertised");
		
		 InputStream inputStream = null; // input stream of the upload file
         
	        // obtains the upload file part in this multipart request
	        Part propertyImage = request.getPart("propertyImage");
	        if (propertyImage != null) {
	            // prints out some information for debugging
	            System.out.println(propertyImage.getName());
	            System.out.println(propertyImage.getSize());
	            System.out.println(propertyImage.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = propertyImage.getInputStream();
	        }
		
		HttpSession session=request.getSession();
		
		Connection myConn = null;
		PreparedStatement myStmt = null;
		String message = null; 

		try {
			myConn = dataSource.getConnection();

			String sql = "insert into `property` (`propertyName`,`propertyType`, `price`,`quantity`, `amount`, `termID`, `duration`, `statusID`, `description`,`advertID`, `dateAdvertised`,`propertyImage`) values(?,?,?, ?, ?,?,?,?,?,?,?,?)";

			myStmt = myConn.prepareStatement(sql);

			myStmt.setString(1, propertyName);
			myStmt.setString(2, propertyType);
			myStmt.setString(3,  price);
			myStmt.setString(4,  quantity);
			myStmt.setString(5,  amount);
			myStmt.setString(6, termID);
			myStmt.setString(7,duration );
			myStmt.setString(8, statusID);
			myStmt.setString(9, description);
			myStmt.setString(10, advertID);
			myStmt.setString(11, dateAdvertised);
			if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
				myStmt.setBlob(12, inputStream);
            }
 
            // sends the statement to the database server
            int row = myStmt.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }

			myStmt.execute();
		
		} catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (myConn != null) {
                // closes the database connection
                try {
                    myConn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/checkout.jsp").forward(request, response);
            
  
        }
		
	}
	
	
	private void updateProperty(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String propertyName = request.getParameter("propertyName");
		String propertyType = request.getParameter("propertyType");
		String price = request.getParameter("price");
		String quantity = request.getParameter("quantity");
		String amount = request.getParameter("amount");
	    String termID = request.getParameter("termID");
	    String duration = request.getParameter("duration");
	    String statusID = request.getParameter("statusID");
		String description = request.getParameter("description");
		String advertID = request.getParameter("advertID");
		String dateAdvertised = request.getParameter("dateAdvertised");
		
		 InputStream inputStream = null; // input stream of the upload file
         
	        // obtains the upload file part in this multipart request
	        Part propertyImage = request.getPart("propertyImage");
	        if (propertyImage != null) {
	            // prints out some information for debugging
	            System.out.println(propertyImage.getName());
	            System.out.println(propertyImage.getSize());
	            System.out.println(propertyImage.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = propertyImage.getInputStream();
	        }
		
			
		Connection myConn = null;
		PreparedStatement myStmt = null;
		String message = null; 
		
		try {

			myConn = dataSource.getConnection();
			
			String sql = "Update  `property` set(`propertyName=?`,`propertyType=?`, `price=?`,`quantity=?`, `amount=?`, `termID=?`, `duration=?`, `statusID=?`, `description=?`,`advertID=?`, `dateAdvertised=?`,`propertyImage=?`) ";

			myStmt = myConn.prepareStatement(sql);

			myStmt.setString(1, propertyName);
			myStmt.setString(2, propertyType);
			myStmt.setString(3,  price);
			myStmt.setString(4,  quantity);
			myStmt.setString(5,  amount);
			myStmt.setString(6, termID);
			myStmt.setString(7,duration );
			myStmt.setString(8, statusID);
			myStmt.setString(9, description);
			myStmt.setString(10, advertID);
			myStmt.setString(11, dateAdvertised);
			if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
				myStmt.setBlob(12, inputStream);
            }
 
            // sends the statement to the database server
            int row = myStmt.executeUpdate();
            if (row > 0) {
                message = "File uploaded and saved into database";
            }

			myStmt.execute();

		} 
		catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (myConn != null) {
                // closes the database connection
                try {
                    myConn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
		
	}
	
        }
		
	}
	
}
	
	

