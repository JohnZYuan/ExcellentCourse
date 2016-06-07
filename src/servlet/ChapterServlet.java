package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ChapterAction;
import entity.Chapter;


/**
 * Servlet implementation class ChapterServlet
 */
@WebServlet("/ChapterServlet")
public class ChapterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ChapterAction chapterAction = new ChapterAction();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChapterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String method = request.getParameter("method");
		if (method.equals("getall")){
			List<Chapter> chapters = chapterAction.getAllChapters();
			request.setAttribute("getChapter", chapters);
			
		}
		if (method.equals("getallname")){
			List<String > names = chapterAction.getAllChaptersName();
			request.setAttribute("allNames", names);
		}
		if (method.equals("getnamebyid")){
			int id = Integer.parseInt(request.getParameter("id"));
			String chapter_name = chapterAction.getChapterNameById(id);
			request.setAttribute("name", chapter_name);
			PrintWriter out = response.getWriter();
			out.println(request.getAttribute("name"));
		}
		if (method.equals("getpptbyid")){
			int id = Integer.parseInt(request.getParameter("id"));
			String ppt = chapterAction.getChapterPptById(id);
			request.setAttribute("ppt", ppt);
		}
		if (method.equals("getvideobyid")){
			int id = Integer.parseInt(request.getParameter("id"));
			String video = chapterAction.getChapterVideoById(id);
			request.setAttribute("video", video);
		}
		if (method.equals("addchapter")){
			String name = request.getParameter("name");
			String ppt = request.getParameter("ppt");
			String video = request.getParameter("video");
			chapterAction.addChapter(name, ppt, video);
		}
		if (method.equals("updatebyid")){
			int id = Integer.parseInt(request.getParameter("id"));
			String name = request.getParameter("name");
			String ppt = request.getParameter("ppt");
			String video = request.getParameter("video");
			chapterAction.updateChapterById(id, name, ppt, video);
		}
	}

}
