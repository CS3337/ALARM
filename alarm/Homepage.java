package alarm;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CS3337/Homepage")
public class Homepage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Homepage() {
        super();
        
    }

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		
		String sql = "SELECT * FROM alarm";
		getServletContext().setAttribute("sql", sql);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    final String driver = "com.mysql.jdbc.Driver";
	    final String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu02";
	    final String user = "cs3337stu02";
	    final String password = "jHhtJPQl";
	    try {
	        Class.forName(driver);
	        Connection conn = DriverManager.getConnection(url, user, password);

	        PreparedStatement stmt = conn.prepareStatement("select img from users where id=?");
	        stmt.setLong(1, Long.valueOf(request.getParameter("id")));
	        ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	            response.getOutputStream().write(rs.getBytes("img"));
	        }
	        conn.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		request.getRequestDispatcher( "/WEB-INF/Homepage.jsp" ).forward(
	            request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
