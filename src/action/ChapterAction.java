package action;

import java.util.ArrayList;
import java.util.List;

import dao.ChapterDao;
import dao.impl.ChapterDaoImpl;
import entity.Chapter;

public class ChapterAction {
	
	private ChapterDao cdao = new ChapterDaoImpl();
	
	/*��������½ڵ�����*/
	public List<String> getAllChaptersName(){
		List<String> resualt = new ArrayList<>();
		List<Chapter> chapters=cdao.queryAllChapter();
		for (int i= 0;i<chapters.size();i++){
			resualt.add(chapters.get(i).getName());
		}
		return resualt;
	}
	
	/*��������½ڵ���������ģ��*/
	public List<Chapter> getAllChapters(){
		List<Chapter> chapters=cdao.queryAllChapter();
		return chapters;
	}
	
	/*����id����ĳһ�½ڵ�����*/
	public String getChapterNameById(int id ){
		Chapter chapter = cdao.queryChapterById(id);
		String name = chapter.getName();
		return name;
	}
	
	/*����id����ĳһ�½ڵ���Ƶ��ַ*/
	public String getChapterVideoById(int id){
		Chapter chapter = cdao.queryChapterById(id);
		String video = chapter.getVideo();
		return video;
	}
	
	/*����id����ĳһ�½ڵ�ppt��ַ*/
	public String getChapterPptById(int id){
		Chapter chapter = cdao.queryChapterById(id);
		String Ppt = chapter.getPpt();
		return Ppt;
	}
	
	/*����µ��½�*/
	public void addChapter (String name , String ppt , String video){
		Chapter chapter = new Chapter();
		chapter.setName(name);
		chapter.setPpt(ppt);
		chapter.setVideo(video);
		cdao.addChapter(chapter);
	}
	
	/*�����½ڣ�����id*/
	public void updateChapterById(int id , String name ,String ppt , String video){
		Chapter chapter = new Chapter();
		chapter.setName(name);
		chapter.setPpt(ppt);
		chapter.setVideo(video);
		cdao.updateChapterById(id, chapter);
	}
}
