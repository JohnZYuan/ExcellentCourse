package dao;

import java.util.List;

import entity.Users;

//用户业务逻辑接口
public interface UsersDao {

	//用户登录方法
//	public boolean usersLogin(Users u);
	//用户注册方法
//	public boolean usersRegister(Users u);
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
	
//	//增加Students
//	public boolean AddStudents(Students s);
//	//删除Students
//	public boolean DeletStudents(Students s);
//	//查询Students
//	public boolean FindStudents(Students s);
//	//修改Students
//	public boolean UpdateStudents(Students s);
//	
//	//增加Teachers
//	public boolean AddTeachers(Teachers t);
//	//删除Users
//	public boolean DeletTeachers(Teachers t);
//	//查询Users
//	public boolean FindTeachers(Teachers t);
//	//修改Users
//	public boolean UpdateTeachers(Teachers t);
//	
//	//增加Admins
//	public boolean AddAdmins(Admins a);
//	//删除Users
//	public boolean DeletAdmins(Admins a);
//	//查询Users
//	public boolean FindAdmins(Admins a);
//	//修改Users
//	public boolean UpdateAdmins(Admins a);
	
}
