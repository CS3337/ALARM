package alarm;

import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/CS3337/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		//Instantiate an arraylist of users for credentials to check
		ArrayList<User> users = new ArrayList<User>();
		users.add(new User("John", "Doe", "abcd", "1234"));
		
		//Add the users to the servlet context named "users"
		getServletContext().setAttribute("users", users);
	}
	
	//Function to create a valid hash string
	private static String bytesToHex(byte[] hash) {
	    StringBuffer hexString = new StringBuffer();
	    for (int i = 0; i < hash.length; i++) {
	    String hex = Integer.toHexString(0xff & hash[i]);
	    if(hex.length() == 1) hexString.append('0');
	        hexString.append(hex);
	    }
	    return hexString.toString();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Search for any cookies created for a saved session
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(Cookie c: cookies) {
				if(c.getName().equals("authUser")) {
					response.sendRedirect("Homepage");
					return;
				}
			}
		}
		request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the credentials from the request object
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		// If the user submitted bad input, just redisplay the form
		if (username == null || username.trim().length() == 0 ||
			password == null || password.trim().length() == 0) {
			
			doGet(request, response);
			return;
		}
		
		//Fetch the arraylist of users in the database 
		ArrayList<User> users = (ArrayList<User>) getServletContext().getAttribute("users");
		
		//Look through all users of the arraylist 
		for(User user: users) {
			if (user.getEmail().toLowerCase().equals(username.trim().toLowerCase()) &&
					user.getPassword().equals(password)) {
				// If the user credentials are correct, then create a session attribute 
				HttpSession session = request.getSession();
				session.setAttribute("authenticatedUser", user);

				// If the user checks the "Remember Me" checkbox...create the sha-256 hash for the cookie
				if(request.getParameter("rememberMe") != null) {
					MessageDigest digest = null;
					try {
						digest = MessageDigest.getInstance("SHA-256");
					} catch (NoSuchAlgorithmException e) {
						e.printStackTrace();
					}
					byte[] encodedhash = digest.digest(
							username.getBytes(StandardCharsets.UTF_8));

					String hash = bytesToHex(encodedhash);
					Cookie userCookie = new Cookie("authUser", hash);
					response.addCookie(userCookie);
				}

				// Redirected to the homepage if a valid user was found
				response.sendRedirect("Homepage");
				return;				
			}
		}
		
		//Redirect to the login page when invalid credentials are inputted
		request.getRequestDispatcher("/WEB-INF/Login.jsp").forward(request, response);
		return;
	}

}
