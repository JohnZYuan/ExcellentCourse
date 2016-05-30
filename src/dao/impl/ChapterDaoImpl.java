package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.ChapterDao;
import db.MyhibernateSessionFactory;
import entity.Chapter;

public class ChapterDaoImpl implements ChapterDao{

	@SuppressWarnings("unchecked")
	@Override
	public List<Chapter> queryAllChapter() {
		Transaction tx = null;
		List<Chapter> list =null;
		String hql = "";
		try
		{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx= session.beginTransaction();
			hql = "from Chapter";
			Query query = session.createQuery(hql);
			
			list = query.list();
			tx.commit();
			
			return list;
		}
		catch(Exception ex){
			ex.printStackTrace();
			tx.commit();
			return list;
		}
		finally {
			if(tx!= null){
				tx = null;
			}
		}
	}

	@Override
	public void addChapter(Chapter chapter) {
		Transaction tx = null;
		try {
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx= session.beginTransaction();
			
			session.save(chapter);
			tx.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
			tx.commit();
		}
		finally {
			if(tx!= null){
				tx = null;
			}
		}
	}

	@Override
	public void deleteChapter(int id) {
		Transaction tx = null;
		try {
			Session session =MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			
			Chapter chapter = (Chapter)session.load(Chapter.class, id);
			
			session.delete(chapter);
			tx.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
			tx.commit();
		}
		finally {
			if(tx!=null)
			{
				tx= null;
			}
		}
	}

	@Override
	public Chapter queryChapterById(int id) {
		Transaction tx = null;
//		String hql="";
		Chapter chapter ; 
		try {
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();

			chapter = session.load(Chapter.class, id);
			System.out.println(chapter.getName());
			tx.commit();
			return chapter;
//			hql = "from Chapter where id = ?";
//			Query query = session.createQuery(hql);
//			query.setParameter(0, id);
//			@SuppressWarnings("rawtypes")
//			List list = query.list();
//			tx.commit();
//			if(list.size()==1){
//				chapter = (Chapter)list.get(0);
//				return chapter;
//			}
//			return null;
		} 
		catch (Exception ex) {
			ex.printStackTrace();
			tx.commit();
			return null;
		}
		finally {
			if(tx!= null){
				tx = null;
			}
		}
		
	}

	@Override
	public void updateChapterById(int id,Chapter chapter) {
		Transaction tx = null;
		try {
			Session session =MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			
			Chapter old_chapter = session.load(Chapter.class, id);
			if(chapter.getName()!=null){
				old_chapter.setName(chapter.getName());
			}
			if(chapter.getPpt()!=null){
				old_chapter.setPpt(chapter.getPpt());
			}
			if(chapter.getVideo()!=null){
				old_chapter.setVideo(chapter.getVideo());
			}
			
			session.update(old_chapter);
			tx.commit();
		} 
		catch (Exception ex) {
			ex.printStackTrace();
			tx.commit();
		}
		finally {
			if(tx!=null)
			{
				tx= null;
			}
		}
	}

}
