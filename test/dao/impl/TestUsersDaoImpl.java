package dao.impl;

import org.junit.Assert;
import org.junit.Test;

import entity.Users;

public class TestUsersDaoImpl {
	
	@Test
	public void testUsersLogin()
	{
		Users u = new Users(1,"yuanzhen","wodemima");
		UsersDaoImpl udao = new UsersDaoImpl();
		Assert.assertEquals(true,udao.usersLogin(u));
	}
}
