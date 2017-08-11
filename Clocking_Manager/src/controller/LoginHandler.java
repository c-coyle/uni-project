
/*
 * LoginHandler.java
*/

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import com.mysql.jdbc.AbandonedConnectionCleanupThread;
import com.mysql.jdbc.Statement;

import beans.User;
import database.ClockingRetriever;
import database.UserAccount;
import database.UserPreferenceRetriever;

@WebServlet("/LoginHandler")
public class LoginHandler extends HttpServlet
{

   private static final long serialVersionUID = 1L;
   private DataSource ds;
   private String dailyHours;
   private String target;
   private String targetDate;
   private String previousBalance;
   private String week1day1in1;

   Connection connection;
   Statement statement;
   
   public LoginHandler()
   {
	   super();		
   }

   public void init(ServletConfig config) throws ServletException {
   	try {
   		InitialContext initContext = new InitialContext();
   		
   		Context env = (Context)initContext.lookup("java:comp/env");
   		
//   		ds = (DataSource)env.lookup("jdbc/cmanagerdb");
   	}
   	catch (NamingException e) {
   		throw new ServletException();
   	}
   }

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String action = request.getParameter("action");

		if (action == null) {
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

//		PrintWriter out = response.getWriter();
//
//		String action = request.getParameter("action");
//
//		try {
//			Class.forName("com.mysql.jdbc.Driver");
//		} catch (ClassNotFoundException e) {
//			System.out.println("Can't load database driver");
//			return;
//		}
//
//		try {
//			connection = ds.getConnection();
//		} catch (SQLException e) {
//			System.out.println("Can't connect to database");
//			e.printStackTrace();
//			return;
//		}		
//		
//		if (action == null) {
//			out.println("unrecognised action");
//			return;
//		}
//		
//		System.out.println("Connected to database");
//
//		UserAccount account = new UserAccount(connection);
//		
//		if(action.equals("dologin")) {
//			String username = request.getParameter("username");
//			String password = request.getParameter("password");
//			
//			request.setAttribute("username", username);
//			request.setAttribute("password", "");
//			
//			try {
//				if(account.login(username, password)) {
//					HttpSession session = request.getSession();
//					ClockingRetriever cRetriever = new ClockingRetriever(connection);
//					UserPreferenceRetriever uPRetriever = new UserPreferenceRetriever(connection, username);
//					dailyHours = uPRetriever.getDailyHours();
//					target = uPRetriever.getTarget();
//					targetDate = uPRetriever.getTargetDate();
//					previousBalance = uPRetriever.getPreviousBalance();
//					week1day1in1 = cRetriever.getTarget();
//					session.setAttribute("dailyHours", dailyHours);
//					session.setAttribute("target", target);
//					session.setAttribute("targetDate", targetDate);
//					session.setAttribute("previousBalance", previousBalance);
//					session.setAttribute("week1day1in1", week1day1in1);
//					request.getRequestDispatcher("/mainpage.jsp").forward(request, response);
//				}
//				else {
//					request.setAttribute("loginmessage", "Username does not exist or password is incorrect");
//					request.getRequestDispatcher("/index.jsp").forward(request, response);
//				}
//			} catch (SQLException e) {
//				request.setAttribute("username", "Database error: please try again later.");
//				request.getRequestDispatcher("/index.jsp").forward(request, response);
//			}
//			
//		}
//		else if(action.equals("doregister")) {
//			String username = request.getParameter("username");
//			String password = request.getParameter("password");
//			String passwordConfirmation = request.getParameter("passwordconfirmation");
//			
//			request.setAttribute("username", username);
//			request.setAttribute("password", "");
//			request.setAttribute("passwordconfirmation", "");
//			request.setAttribute("registermessage", "");
//			
//			if(!password.equals(passwordConfirmation)) {
//				// Passwords don't match.
//				request.setAttribute("registermessage", "Passwords don't match. Please try again.");
//				request.getRequestDispatcher("/index.jsp").forward(request, response);
//			}
//			else {
//				User user = new User(username, password);
//				
//				if(!user.validate()) {
//					// Password or email address has wrong format.
//					request.setAttribute("registermessage", user.getMessage());
//					request.getRequestDispatcher("/index.jsp").forward(request, response);
//				}
//				else {
//					try {
//						if(account.exists(username)) {
//							// This email address already exists in the user database.
//							request.setAttribute("registermessage", "This username already exists. Please choose another.");
//							request.getRequestDispatcher("/index.jsp").forward(request, response);
//						}
//						else {
//							// We create the account.
//							account.create(username, password);
//							request.setAttribute("registermessage", "Account successfully created");
//							request.getRequestDispatcher("/index.jsp").forward(request, response);
//						}
//					} catch (SQLException e) {
//						
//						request.getRequestDispatcher("/index.jsp").forward(request, response);
//					}
//				}
//				
//			}
//		}
//		else {
//			System.out.println("unrecognised action");
//		}
//		
//
//		try {
//			connection.close();
//		} catch (SQLException e) {
//			throw new ServletException();
//		}
//		
//	
//		try {
//			AbandonedConnectionCleanupThread.shutdown();
//		} catch (InterruptedException e) {
//			System.out.println("SEVERE problem cleaning up: " + e.getMessage());
//			e.printStackTrace();
//		}
	}
 
}
