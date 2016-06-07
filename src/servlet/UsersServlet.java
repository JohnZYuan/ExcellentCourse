package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.UsersAction;

/**
 * Servlet implementation class UsersServlet
 */
@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       private UsersAction uAction = new UsersAction();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8"); 
		request.setCharacterEncoding("utf-8");
		String method = request.getParameter("method");
		 if (method.equals("login")){
			 int role_id = Integer.parseInt(request.getParameter("role_id"));
			 String name = request.getParameter("name");
			 String psd = request.getParameter("psd");
			 if (uAction.login(role_id, name, psd)){
				 PrintWriter out = response.getWriter();
				 out.println("µÇÂ¼³É¹¦");
			 }
			 else{
				 PrintWriter out = response.getWriter();
				 out.print("µÇÂ¼Ê§°Ü");
			 }
		 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
