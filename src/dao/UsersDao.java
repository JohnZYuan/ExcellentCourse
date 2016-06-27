package dao;

import java.util.List;

import entity.Users;

//用户业务逻辑接口
public interface UsersDao {


	//增加Users
	public boolean AddUsers(Users u);
	//删除Users
	public void DeletUsers(int snum);
	//查询全部Users
	public List<Users> FindAllUsers();
	//根据用户id查找
	public Users FindUserById(int unum);
	//根据用户名查找
	public Users FindUserByName(String uname);
	//修改Users
	public void UpdateUsers(int n,Users u);
	//根据uid查找用户
	public Users FindUserByUid(String uid);
}
