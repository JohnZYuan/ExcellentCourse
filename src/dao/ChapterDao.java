package dao;

import java.util.List;

import entity.Chapter;

//�½������ݿ�����ӿ�
public interface ChapterDao {
	
	//��ѯ���пγ�
	public List<Chapter> queryAllChapter();
	
	public void addChapter(Chapter chapter);
	
	public void deleteChapter(int id);
	
	public Chapter queryChapterById(int id);
	
	public void updateChapterById(int id,Chapter chapter);
}
