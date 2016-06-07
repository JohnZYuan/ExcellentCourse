package dao.impl;

import java.util.List;

import org.junit.Assert;
import org.junit.Test;

import entity.Students;
import entity.Users;
import dao.impl.StudentsDaoImpl;
import dao.impl.UsersDaoImpl;

public class TestUsersDaoImpl {
	
	//����user�Ĳ��뷽��
	@Test
	public void testAddUsers(){	
		Users user = new Users();
		user.setUsername("������");
		user.setPassword("123456");
		user.setRole_id(1);
		UsersDaoImpl usersDaoImpl = new UsersDaoImpl();
		usersDaoImpl.AddUsers(user);
	}

////����user�ĸ��·���
	@Test
	public void testUpdateUsers(){	
		Users user = new Users();
		user.setUsername("������");
		user.setPassword("123456");
		user.setRole_id(3);
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


////����Student�Ĳ��뷽��
	@Test
	public void testAddStudents(){	
		Students student = new Students();
		student.setSname("������");
		student.setSpassword("12345678");
		student.setSgender("��");
		student.setSclass("���һ��");
		student.setSemail("625824116@qq.com");
		
		StudentsDaoImpl studentsDaoImpl = new StudentsDaoImpl();
		studentsDaoImpl.AddStudents(student);
	}
//
////����Student��ɾ������
	@Test
	public void testDeletStudents(){	
	
		StudentsDaoImpl studentsDaoImpl = new StudentsDaoImpl();
		studentsDaoImpl.DeletStudents(2);
	}

}
