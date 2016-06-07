package dao.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import entity.Students;
import entity.Users;
import dao.impl.StudentsDaoImpl;
import dao.impl.UsersDaoImpl;

public class TestUsersDaoImpl {
	
	//测试user的插入方法
	@Test
	public void testAddUsers(){	
		Users user = new Users();
		user.setUsername("刘进先");
		user.setPassword("123456");
		user.setRole_id(1);
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		usersDaoImpl.AddUsers(user);
	}

////测试user的更新方法
	@Test
	public void testUpdateUsers(){	
		Users user = new Users();
		user.setUsername("刘进先");
		user.setPassword("123456");
		user.setRole_id(3);
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


////测试Student的插入方法
	@Test
	public void testAddStudents(){	
		Students student = new Students();
		student.setSname("刘大仙");
		student.setSpassword("12345678");
		student.setSgender("男");
		student.setSclass("软件一班");
		student.setSemail("625824116@qq.com");
		
		StudentsDaoImpl studentsDaoImpl = new StudentsDaoImpl();
		studentsDaoImpl.AddStudents(student);
	}
//
////测试Student的删除方法
	@Test
	public void testDeletStudents(){	
	
		StudentsDaoImpl studentsDaoImpl = new StudentsDaoImpl();
		studentsDaoImpl.DeletStudents(2);
	}

}
