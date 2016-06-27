package action;


import dao.UsersDao;

import dao.impl.UsersDaoImpl;
import entity.Users;

public class UsersAction {
	private UsersDao uDao = new UsersDaoImpl(); 

	
	public boolean login(String uid,String psd){
		Users user = uDao.FindUserByUid(uid);
		if (user.getPassword().equals(psd)){
			return true;
		}
		return false;
	}
	
	public Users getUsersByUid (String uid){
		return uDao.FindUserByUid(uid);
	}
	
	public String getUserRoleByUid (String uid){
		Users usr = uDao.FindUserByUid(uid);
		String usr_role = usr.getRole();
		return usr_role;
	}
}
