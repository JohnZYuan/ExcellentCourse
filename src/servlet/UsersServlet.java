package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import action.UsersAction;
import entity.Users;

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
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		String method = request.getParameter("method");
		 if (method.equals("login")){
			 String uid = request.getParameter("uid");
			 String psd = request.getParameter("psd");
			 if (uAction.login(uid, psd)){
				 Users rstuser = uAction.getUsersByUid(uid);
				 session.setAttribute("username", rstuser.getUsername());
				 session.setAttribute("useruid", rstuser.getUid());
				 session.setAttribute("userrole", rstuser.getRole());
				 Boolean result = uAction.login(uid, psd);
				 out.print(result);
			 }
			 else{
				 session.setAttribute("err", "用户名或密码错误");
				 Boolean result = uAction.login(uid, psd);
				 out.print(result);
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
