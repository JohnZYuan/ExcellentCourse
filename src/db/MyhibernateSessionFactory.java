package db;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class MyhibernateSessionFactory {
	private static SessionFactory sessionFactory;//会话工厂属性
	
	//构造方法私有化 保证单例模式
	private MyhibernateSessionFactory()
	{
		
	}
	
	//公有的静态方法，获得会话工厂对象
	public static SessionFactory getSessionFactory()
	{
		if (sessionFactory == null)
		{
			Configuration config = new Configuration().configure();
			StandardServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure().build();
			sessionFactory = config.buildSessionFactory(serviceRegistry);
			return sessionFactory;
		}
		else 
		{
			return sessionFactory ; 
		}
	}
}
