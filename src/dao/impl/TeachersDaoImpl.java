package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.TeachersDao;
import db.MyhibernateSessionFactory;
import entity.Teachers;

public class TeachersDaoImpl implements TeachersDao{

	@Override
	public boolean AddTeachers(Teachers t) {
		Transaction tx = null ;
		@SuppressWarnings("unused")
		String hql = "";
		try 
		{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
//			Users users = new Users();
			int n =(Integer)session.save(t);
			tx.commit();
			if( n!=0 ){
				return true;
			}else{
				return false;
			}
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
			return false ;
		}
		finally
		{
			if (tx != null )
			{
				tx = null ;
			}
		}
	}

	@Override
	public void DeletTeachers(int tnum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Teachers teacher =session.load(Teachers.class, tnum);
			session.delete(teacher);
			tx.commit();
		}catch (Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if (tx != null )
			{
				tx = null ;
			}
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Teachers> FindAllTeachers() {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			List<Teachers> list = null;
			Query query = session.createQuery("from Teachers");
			list = query.list();
			tx.commit();
			return list;
			
		}catch (Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally
		{
			if (tx != null )
			{
				tx = null ;
			}
		}
	}

	@Override
	public Teachers FindTeacherById(int tnum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Teachers teacher = new Teachers();
			teacher = session.load(Teachers.class,tnum);
			System.out.println(teacher.getTname());
			tx.commit();
			return teacher;
		}catch (Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally
		{
			if (tx != null )
			{
				tx = null ;
			}
		}
	}

	@Override
	public Teachers FindTeacherByName(String tname) {
		Transaction tx = null ;
		String hql = "";
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Teachers where tname=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, tname);
			@SuppressWarnings("unchecked")
			List<Teachers> list = query.list();
			Teachers teacher = new Teachers();
			teacher = list.get(0);
			return teacher;
			
		}catch (Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally
		{
			if (tx != null )
			{
				tx = null ;
			}
		}
	}

	@Override
	public void UpdateTeachers(int id, Teachers t) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Teachers old_teacher =session.load(Teachers.class, id);
			if(t.getTname()!=null){
				old_teacher.setTname(t.getTname());;
			}
			if(t.getTpassword()!=null){
				old_teacher.setTpassword(t.getTpassword());
			}
			if(t.getTgender()!=null){
				old_teacher.setTgender(t.getTgender());
			}
			if(t.getTemail()!=null){
				old_teacher.setTemail(t.getTemail());;
			}
	
			session.update(old_teacher);
			tx.commit();
		}catch (Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			if (tx != null )
			{
				tx = null ;
			}
		}
		
	}

}
