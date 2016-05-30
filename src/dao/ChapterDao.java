package dao;

import java.util.List;

import entity.Chapter;

//章节类数据库操作接口
public interface ChapterDao {
	
	//查询所有课程
	public List<Chapter> queryAllChapter();
	
	public void addChapter(Chapter chapter);
	
	public void deleteChapter(int id);
	
	public Chapter queryChapterById(int id);
	
	public void updateChapterById(int id,Chapter chapter);
}
