package alarm;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CS3337/Photos")
public class Photos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Photos() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 final String driver = "com.mysql.jdbc.Driver";
		    final String url = "jdbc:mysql://cs3.calstatela.edu/cs3337stu02";
		    final String user = "cs3337stu02";
		    final String password = "jHhtJPQl";
		    
		    Connection connect = null;
		    PreparedStatement stmtImg = null;
		    PreparedStatement stmtVid = null;
		    
		    try {
		        Class.forName(driver);
		        connect = DriverManager.getConnection(url, user, password);

		        stmtImg = connect.prepareStatement("SELECT IMG, VIDEO FROM ImageTable WHERE id=?");
		        stmtImg.setLong(1, Long.valueOf(request.getParameter("id")));
		        ResultSet rs = stmtImg.executeQuery();
		        if (rs.next()) 
		            response.getOutputStream().write(rs.getBytes("img"));

		    } catch (Exception e){
		        e.printStackTrace();
		    } finally {
		    	try {
					stmtImg.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    	try {
					connect.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    }
		request.getRequestDispatcher( "/WEB-INF/Photos.jsp" ).forward(
	            request, response );
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
