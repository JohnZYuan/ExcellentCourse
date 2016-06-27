package dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import dao.UsersDao;
import db.MyhibernateSessionFactory;
import entity.Users;

public class UsersDaoImpl implements UsersDao{



	@Override
	public boolean AddUsers(Users u) {
		//事务对象
				Transaction tx = null ;
				@SuppressWarnings("unused")
				String hql = "";
				try 
//				{
//					Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
//					tx = session.beginTransaction();
//					hql = "from Users where username=? and password=?";
//					Query query = session.createQuery(hql);
//					query.setParameter(0, u.getUsername());
//					query.setParameter(1, u.getPassword());
//					List list = query.list();
//					tx.commit();//提交事务
//					if (list.size()>0)
//					{
//						return true;
//					}
//					else
//					{
//						return false;
//					}
//				}
				{
					Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
					tx = session.beginTransaction();
//					Users users = new Users();
					int n =(Integer)session.save(u);
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
	public void DeletUsers(int snum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Users user =session.load(Users.class, snum);
			session.delete(user);
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
	public List<Users> FindAllUsers() {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			List<Users> list = null;
			Query query = session.createQuery("from Users");
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
	public Users FindUserById(int unum) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Users user = new Users();
			user = session.load(Users.class,unum);
			System.out.println(user.getUsername());
			tx.commit();
			return user;
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
	
	public Users FindUserByName(String uname){
		Transaction tx = null ;
		String hql = "";
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
//			Users user = new Users();
//			user = session.load(Users.class,unum);
//			System.out.println(user.getUsername());
//			tx.commit();
//			return user;
			hql = "from Users where username=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, uname);
			@SuppressWarnings("unchecked")
			List<Users> list = query.list();
			Users user = new Users();
			user = list.get(0);
			return user;
			
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
	public void UpdateUsers(int id,Users u) {
		Transaction tx = null ;
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
			Users old_user =session.load(Users.class, id);
			if(u.getUsername()!=null){
				old_user.setUsername(u.getUsername());
			}
			if(u.getPassword()!=null){
				old_user.setPassword(u.getPassword());
			}
			session.update(old_user);
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

	@Override
	public Users FindUserByUid(String uid) {
		Transaction tx = null ;
		String hql = "";
		try{
			Session session = MyhibernateSessionFactory.getSessionFactory().getCurrentSession();
			tx = session.beginTransaction();
//			Users user = new Users();
//			user = session.load(Users.class,unum);
//			System.out.println(user.getUsername());
//			tx.commit();
//			return user;
			hql = "from Users where uid=?";
			Query query = session.createQuery(hql);
			query.setParameter(0, uid);
			@SuppressWarnings("unchecked")
			List<Users> list = query.list();
			Users user = new Users();
			user = list.get(0);
			return user;
			
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



	
}
