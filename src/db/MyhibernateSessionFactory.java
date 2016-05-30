package db;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class MyhibernateSessionFactory {
	private static SessionFactory sessionFactory;//�Ự��������
	
	//���췽��˽�л� ��֤����ģʽ
	private MyhibernateSessionFactory()
	{
		
	}
	
	//���еľ�̬��������ûỰ��������
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
