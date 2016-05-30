package dao.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import dao.ChapterDao;
import entity.Chapter;

/*全部测试通过---5.30---Yz*/
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
		chapter.setName("第一章");
		chapter.setPpt("/ppt/第一章");
		chapter.setVideo("/video/第一章");
		ChapterDao cdao = new ChapterDaoImpl();
		cdao.addChapter(chapter);
	}
	@Test
	public void testChapterQueryById(){
		ChapterDao cdao = new ChapterDaoImpl();
		Chapter chapter = cdao.queryChapterById(5);
		Assert.assertEquals("第一章", chapter.getName());
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
		chapter.setName("第一章-第一讲");
		cdao.updateChapterById(3, chapter);
		Chapter new_chapter = cdao.queryChapterById(5);
		Assert.assertEquals("第一章-第一讲", new_chapter.getName());
	}
}
