package action;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;


public class TestChapterAction {
	
	@Test
	public void testGetAllChapterName()
	{
		ChapterAction cAction = new ChapterAction();
		List<String> resualt=cAction.getAllChaptersName();
		for (String res : resualt){
			System.out.println(res);
		}
	}
	
	@Test
	public void testGetChapterNameById()
	{
		ChapterAction cAction = new ChapterAction();
		String name = cAction.getChapterNameById(7);
		Assert.assertEquals("╣зр╩уб", name);
	}
}
