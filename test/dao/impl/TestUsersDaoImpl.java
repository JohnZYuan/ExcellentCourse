package dao.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import entity.Users;
import dao.impl.UsersDaoImpl;

public class TestUsersDaoImpl {
	
	//测试user的插入方法
	@Test
	public void testAddUsers(){	
		Users user = new Users();
		user.setUsername("刘进先");
		user.setPassword("123456");
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		usersDaoImpl.AddUsers(user);
	}

////测试user的更新方法
	@Test
	public void testUpdateUsers(){	
		Users user = new Users();
		user.setUsername("刘进先");
		user.setPassword("123456");
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		usersDaoImpl.UpdateUsers(1, user);
		
	}

////测试user的查询方法
	@Test
	public void testFindAllUsers(){	
		List<Users> list= null;
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		list=usersDaoImpl.FindAllUsers();
		for(Users user: list){
			System.out.println(user.getUsername());
		}
		
	}
//	//测试FindUserById方法
	@Test
	public void testFindUserById(){	
		Users user =new Users();
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		user=usersDaoImpl.FindUserById(3);
		
			System.out.println(user.getUsername());
	
		
	}

	//测试DeletUsers方法
		@Test
		public void testDeletUsers(){	
			@SuppressWarnings("unused")
			Users user =new Users();
			UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
			usersDaoImpl.DeletUsers(4);	
		}

	//测试FindUserByName方法
	@Test
	public void testFindUserByName(){	
		Users user =new Users();
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		user=usersDaoImpl.FindUserByName("刘进先");
		Assert.assertEquals("刘进先", user.getUsername());
			System.out.println(user.getUsername());
			System.out.println(user.getPassword());
	
		
	}

}
