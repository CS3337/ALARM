package alarm;

import java.io.IOException;
import java.io.PrintWriter;

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
		//response.setContentType("text/html");
		//PrintWriter printWriter = response.getWriter();
		//printWriter.println("<h1> Hello, World! </h1>");
		request.getRequestDispatcher( "/WEB-INF/Homepage.jsp" ).forward(
	            request, response );
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
