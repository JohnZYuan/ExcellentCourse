package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.UsersDao;
import db.MyhibernateSessionFactory;
import entity.Users;

public class UsersDaoImpl implements UsersDao{

	@SuppressWarnings("rawtypes")
	public boolean usersLogin(Users u) {
		//�������
		Transaction tx = null ;
		String hql = "";
		try 
		{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			hql = "from Users where username=? and password=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, u.getUsername());
			query.setParameter(1, u.getPassword());
			List list = query.list();
			tx.commit();//�ύ����
			if (list.size()>0)
			{
				return true;
			}
			else
			{
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
	
}
