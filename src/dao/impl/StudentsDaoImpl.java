package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.StudentsDao;
import db.MyhibernateSessionFactory;
import entity.Students;

public class StudentsDaoImpl  implements StudentsDao{

	@Override
	public boolean AddStudents(Students s) {
		Transaction tx = null ;
		@SuppressWarnings("unused")
		String hql = "";
		try 
		{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
//			Users users = new Users();
			int n =(Integer)session.save(s);
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
	public void DeletStudents(int snum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Students student =session.load(Students.class, snum);
			session.delete(student);
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
	public List<Students> FindAllStudents() {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			List<Students> list = null;
			Query query = session.createQuery("from Students");
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
	public Students FindStudentById(int snum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Students student = new Students();
			student = session.load(Students.class,snum);
			System.out.println(student.getSname());
			tx.commit();
			return student;
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
	public Students FindStudentByName(String sname) {
		Transaction tx = null ;
		String hql = "";
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from students where sname=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, sname);
			@SuppressWarnings("unchecked")
			List<Students> list = query.list();
			Students student = new Students();
			student = list.get(0);
			return student;
			
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
	public void UpdateStudents(int id, Students s) {

		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Students old_student =session.load(Students.class, id);
			if(s.getSname()!=null){
				old_student.setSname(s.getSname());
			}
			if(s.getSpassword()!=null){
				old_student.setSpassword(s.getSpassword());
			}
			if(s.getSgender()!=null){
				old_student.setSgender(s.getSgender());
			}
			if(s.getSclass()!=null){
				old_student.setSclass(s.getSclass());
			}
			if(s.getSemail()!=null){
				old_student.setSemail(s.getSemail());;
			}
			session.update(old_student);
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
