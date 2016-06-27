package dao.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import entity.Users;
import dao.impl.UsersDaoImpl;

public class TestUsersDaoImpl {
	
	//����user�Ĳ��뷽��
	@Test
	public void testAddUsers(){	
		Users user = new Users();
		user.setUsername("������");
		user.setPassword("123456");
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		usersDaoImpl.AddUsers(user);
	}

////����user�ĸ��·���
	@Test
	public void testUpdateUsers(){	
		Users user = new Users();
		user.setUsername("������");
		user.setPassword("123456");
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		usersDaoImpl.UpdateUsers(1, user);
		
	}

////����user�Ĳ�ѯ����
	@Test
	public void testFindAllUsers(){	
		List<Users> list= null;
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		list=usersDaoImpl.FindAllUsers();
		for(Users user: list){
			System.out.println(user.getUsername());
		}
		
	}
//	//����FindUserById����
	@Test
	public void testFindUserById(){	
		Users user =new Users();
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		user=usersDaoImpl.FindUserById(3);
		
			System.out.println(user.getUsername());
	
		
	}

	//����DeletUsers����
		@Test
		public void testDeletUsers(){	
			@SuppressWarnings("unused")
			Users user =new Users();
			UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
			usersDaoImpl.DeletUsers(4);	
		}

	//����FindUserByName����
	@Test
	public void testFindUserByName(){	
		Users user =new Users();
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		user=usersDaoImpl.FindUserByName("������");
		Assert.assertEquals("������", user.getUsername());
			System.out.println(user.getUsername());
			System.out.println(user.getPassword());
	
		
	}

}
