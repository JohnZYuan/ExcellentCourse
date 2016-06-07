package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.AdminsDao;
import db.MyhibernateSessionFactory;
import entity.Admins;

public class AdminsDaoImpl  implements AdminsDao{

	//根据用户名查找
	@Override
	public Admins FindAdminByName(String aname) {
		Transaction tx = null ;
		String hql = "";
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Admins where aname=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, aname);
			@SuppressWarnings("unchecked")
			List<Admins> list = query.list();
			Admins admin= new Admins();
			admin = list.get(0);
			return admin;
			
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

	//增加Admins
	@Override
	public boolean AddAdmins(Admins a) {
		Transaction tx = null ;
		@SuppressWarnings("unused")
		String hql = "";
		try 
		{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
//			Users users = new Users();
			int n =(Integer)session.save(a);
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

	//删除Admins
	@Override
	public void DeletAdmins(int anum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Admins admin =session.load(Admins.class, anum);
			session.delete(admin);
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
