package dao.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import dao.ChapterDao;
import entity.Chapter;

/*ȫ������ͨ��---5.30---Yz*/
public class TestChapterDaoImpl {

	@Test
	public void testChapterQueryAll(){
		ChapterDao cdao = new ChapterDaoImpl();
		List<Chapter> chapters=cdao.queryAllChapter();
		Assert.assertEquals(1, chapters.size());
	}
	@Test 
	public void testChapterAdd(){
		Chapter chapter = new Chapter();
		chapter.setName("��һ��");
		chapter.setPpt("/ppt/��һ��");
		chapter.setVideo("/video/��һ��");
		ChapterDao cdao = new ChapterDaoImpl();
		cdao.addChapter(chapter);
	}
	@Test
	public void testChapterQueryById(){
		ChapterDao cdao = new ChapterDaoImpl();
		Chapter chapter = cdao.queryChapterById(5);
		Assert.assertEquals("��һ��", chapter.getName());
	}
	@Test
	public void testChapterDelete(){
		ChapterDao cdao = new ChapterDaoImpl();
		cdao.deleteChapter(5);
	}
	@Test
	public void testChapterUpdate(){
		ChapterDao cdao = new ChapterDaoImpl();
		Chapter  chapter = new Chapter();
		chapter.setName("��һ��-��һ��");
		cdao.updateChapterById(3, chapter);
		Chapter new_chapter = cdao.queryChapterById(5);
		Assert.assertEquals("��һ��-��һ��", new_chapter.getName());
	}
}
