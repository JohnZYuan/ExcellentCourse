package action;

import entity.Users;

public class UsersAction {
	private Users user=new Users();
	
	public void login(Users user){
		this.user= user;
	}
}
