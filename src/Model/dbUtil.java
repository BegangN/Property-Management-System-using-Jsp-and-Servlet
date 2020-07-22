package Model;

import java.util.List;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;


public class dbUtil {

	
		private static DataSource dataSource;

		public dbUtil(DataSource theDataSource) {
			dataSource = theDataSource;
		}


		
		public static List<users> getUsers() throws Exception {

			List<users> users = new ArrayList<>();

			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;

			try {
				myConn = dataSource.getConnection();

				String sql = "select * from Users order by lastName";

				myStmt = myConn.createStatement();

				myRs = myStmt.executeQuery(sql);

				while (myRs.next()) {

					int userID = myRs.getInt("userID");
					
					String firstName = myRs.getString("firstName");
					String lastName = myRs.getString("lastName");
					String gender = myRs.getString("gender");
					String address = myRs.getString("address");
					String dateRegistered = myRs.getString("dateRegistered");
					String email = myRs.getString("email");
					String contacts = myRs.getString("contacts");
					String userType = myRs.getString("userType");
					String username = myRs.getString("username");
					String password = myRs.getString("password");
					
					users theusers = new users(userID,firstName,lastName,gender, address, dateRegistered,
						email,  contacts, userType, username,password);
					
					users.add(theusers);
					

				}

				return users;
			} finally {

				close(myConn, myStmt, myRs);

			}
		}

		
		

		public static List<property> getProperty() throws Exception {

			List<property> property = new ArrayList<>();

			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;

			try {
				myConn = dataSource.getConnection();

				String sql = "select * from property order by propertyName";

				myStmt = myConn.createStatement();

				myRs = myStmt.executeQuery(sql);

				while (myRs.next()) {

					int propertyId = myRs.getInt("propertyId");
					
					String propertyName = myRs.getString("propertyName");
					String propertyType = myRs.getString("propertyType");
					String price = myRs.getString("price");
					String quantity = myRs.getString("quantity");
					String amount = myRs.getString("amount");
				    String termID = myRs.getString("termID");
				    String duration = myRs.getString("duration");
				    String statusID = myRs.getString("statusID");
					String description = myRs.getString("description");
					String advertID = myRs.getString("advertID");
					String dateAdvertised = myRs.getString("dateAdvertised");
					
					property theproperty = new property(propertyId,propertyName,propertyType,price, quantity, amount,
							termID, duration, statusID, description,advertID,dateAdvertised);
					
					property.add(theproperty);
					

				}

				return property;
			} finally {

				close(myConn, myStmt, myRs);

			}
		}

		
		
		
		private static void close(Connection myConn, Statement myStmt, ResultSet myRs) {
			try {
				if (myRs != null) {
					myRs.close();
				}

				if (myStmt != null) {
					myStmt.close();
				}

				if (myConn != null) {
					myConn.close();
				}

			} catch (Exception exc) {
				exc.printStackTrace();
			}

		}

		public static boolean login(String username,String password){
			boolean status = false;
			try{
				Connection myConn = null;
				
				myConn = dataSource.getConnection();

				PreparedStatement ps = myConn.prepareStatement("select * from Users where username=? and password=? ");
	            ps.setString(1, username);
	            ps.setString(2, password);
	     
	            ResultSet rs =ps.executeQuery();
	            status = rs.next();
				
				
			}catch(Exception e){System.out.println(e);}
			return status;
			}
				
		
		public void addUsers(users theUsers) throws Exception {

			Connection myConn = null;
			PreparedStatement myStmt = null;

			try {
				myConn = dataSource.getConnection();

				String sql = "insert into `Users` (`firstName`,`lastName`,`gender`,`address`,`dateRegistered`,`email`,`contacts`,`userType`,`username`,`password`) values(?, ?, ?,?,?,?,?,?,?,?)";

				myStmt = myConn.prepareStatement(sql);

				myStmt.setString(1, theUsers.getFirstName());
				myStmt.setString(2, theUsers.getLastName());
				myStmt.setString(3, theUsers.getGender());
				myStmt.setString(4, theUsers.getAddress());
				myStmt.setString(5, theUsers.getDateRegistered());
				myStmt.setString(6, theUsers.getEmail());
				myStmt.setString(7, theUsers.getContacts());
				myStmt.setString(8, theUsers.getUserType());
				myStmt.setString(9, theUsers.getUsername());
				myStmt.setString(10, theUsers.getPassword());

				myStmt.execute();
			} finally {
				close(myConn, myStmt, null);

			}

		}
		
		
		public property getProperty(String thepropertyId) throws Exception {

			property theproperty = null;
			Connection myConn = null;
			PreparedStatement myStmt = null;
			ResultSet myRs = null;
			int propertyId;

			try {
				propertyId = Integer.parseInt(thepropertyId);

				myConn = dataSource.getConnection();

				String sql = "select * from property where propertyId=?";

				myStmt = myConn.prepareStatement(sql);

				myStmt.setInt(1, propertyId);

				myRs = myStmt.executeQuery();

				if (myRs.next()) {

					String propertyName = myRs.getString("propertyName");
					String propertyType = myRs.getString("propertyType");
					String price = myRs.getString("price");
					String quantity = myRs.getString("quantity");
					String amount = myRs.getString("amount");
				    String termID = myRs.getString("termID");
				    String duration = myRs.getString("duration");
				    String statusID = myRs.getString("statusID");
					String description = myRs.getString("description");
					String advertID = myRs.getString("advertID");
					String dateAdvertised = myRs.getString("dateAdvertised");
					
					theproperty = new property(propertyId, propertyName, propertyType, price, quantity, amount,termID, duration, statusID, description,advertID,dateAdvertised);
					

				} else {

					throw new Exception("Could not find student id:" + propertyId);

				}
				return theproperty;

			} finally {

				close(myConn, myStmt, myRs);
			}

		}
		
		
		
		public users getUsers(String theusersId) throws Exception {

			users theUser = null;
			Connection myConn = null;
			PreparedStatement myStmt = null;
			ResultSet myRs = null;
			int userID;

			try {
				userID = Integer.parseInt(theusersId);

				myConn = dataSource.getConnection();

				String sql = "select * from Users where userID=?";

				myStmt = myConn.prepareStatement(sql);

				myStmt.setInt(1, userID);

				myRs = myStmt.executeQuery();

				if (myRs.next()) {

					String firstName = myRs.getString("firstName");
					String lastName = myRs.getString("lastName");
					String gender = myRs.getString("gender");
					String address = myRs.getString("address");
					String dateRegistered = myRs.getString("dateRegistered");
					String email = myRs.getString("email");
					String contacts = myRs.getString("contacts");
					String userType = myRs.getString("userType");
					String username = myRs.getString("username");
					String password = myRs.getString("password");
					
				 theUser = new users(userID,firstName,lastName,gender, address, dateRegistered,
						email,  contacts, userType, username,password);

				} else {

					throw new Exception("Could not find student id:" + userID);

				}
				return theUser;

			} finally {

				close(myConn, myStmt, myRs);
			}

		}
		
		
		public static void updateUsers(users theUser) throws Exception {

			Connection myConn = null;
			PreparedStatement myStmt = null;

			try {
				myConn = dataSource.getConnection();
				
				
				String sql = "Update `Users` set `firstName=?`,`lastName=?`,`gender=?`,`address=?`,`dateRegistered=?`,`email=?`,`contacts=?`,`userType=?`,`username=?`,`password=?` Where userID=?";

				myStmt = myConn.prepareStatement(sql);

				myStmt.setString(1, theUser.getFirstName());
				myStmt.setString(2, theUser.getLastName());
				myStmt.setString(3, theUser.getGender());
				myStmt.setString(4, theUser.getAddress());
				myStmt.setString(5, theUser.getDateRegistered());
				myStmt.setString(6, theUser.getEmail());
				myStmt.setString(7, theUser.getContacts());
				myStmt.setString(8, theUser.getUserType());
				myStmt.setString(9, theUser.getUsername());
				myStmt.setString(10, theUser.getPassword());

				myStmt.execute();

			} finally {
				close(myConn, myStmt, null);

			}

		}
		
		public void deleteUser(String theuserId) throws Exception {

			Connection myConn = null;
			PreparedStatement myStmt = null;

			try {

				// convert student id to int
				int userID= Integer.parseInt(theuserId);

				// get connection to database
				myConn = dataSource.getConnection();

				// create sql to delete student

				String sql = "delete from Users where userID=?";

				// prepare statement
				myStmt = myConn.prepareStatement(sql);

				// set params

				myStmt.setInt(1, userID);

	//execute sql statements

				myStmt.execute();
			}

			finally {
				close(myConn, myStmt, null);

			}
		}

	
		
		}

		
	


