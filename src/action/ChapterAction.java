package action;

import java.util.ArrayList;
import java.util.List;

import dao.ChapterDao;
import dao.impl.ChapterDaoImpl;
import entity.Chapter;

public class ChapterAction {
	
	private ChapterDao cdao = new ChapterDaoImpl();
	
	/*获得所有章节的名字*/
	public List<String> getAllChaptersName(){
		List<String> resualt = new ArrayList<>();
		List<Chapter> chapters=cdao.queryAllChapter();
		for (int i= 0;i<chapters.size();i++){
			resualt.add(chapters.get(i).getName());
		}
		return resualt;
	}
	
	/*获得所有章节的完整数据模型*/
	public List<Chapter> getAllChapters(){
		List<Chapter> chapters=cdao.queryAllChapter();
		return chapters;
	}
	
	/*根据id查找某一章节的名字*/
	public String getChapterNameById(int id ){
		Chapter chapter = cdao.queryChapterById(id);
		String name = chapter.getName();
		return name;
	}
	
	/*根据id查找某一章节的视频地址*/
	public String getChapterVideoById(int id){
		Chapter chapter = cdao.queryChapterById(id);
		String video = chapter.getVideo();
		return video;
	}
	
	/*根据id查找某一章节的ppt地址*/
	public String getChapterPptById(int id){
		Chapter chapter = cdao.queryChapterById(id);
		String Ppt = chapter.getPpt();
		return Ppt;
	}
	
	/*添加新的章节*/
	public void addChapter (String name , String ppt , String video){
		Chapter chapter = new Chapter();
		chapter.setName(name);
		chapter.setPpt(ppt);
		chapter.setVideo(video);
		cdao.addChapter(chapter);
	}
	
	/*更新章节，根据id*/
	public void updateChapterById(int id , String name ,String ppt , String video){
		Chapter chapter = new Chapter();
		chapter.setName(name);
		chapter.setPpt(ppt);
		chapter.setVideo(video);
		cdao.updateChapterById(id, chapter);
	}
}
