package dao;

import java.util.List;

import entity.Users;

//�û�ҵ���߼��ӿ�
public interface UsersDao {

	//�û���¼����
//	public boolean usersLogin(Users u);
	//�û�ע�᷽��
//	public boolean usersRegister(Users u);
	//����Users
	public boolean AddUsers(Users u);
	//ɾ��Users
	public void DeletUsers(int snum);
	//��ѯȫ��Users
	public List<Users> FindAllUsers();
	//�����û�id����
	public Users FindUserById(int unum);
	//�����û�������
	public Users FindUserByName(String uname);
	//�޸�Users
	public void UpdateUsers(int n,Users u);
	
//	//����Students
//	public boolean AddStudents(Students s);
//	//ɾ��Students
//	public boolean DeletStudents(Students s);
//	//��ѯStudents
//	public boolean FindStudents(Students s);
//	//�޸�Students
//	public boolean UpdateStudents(Students s);
//	
//	//����Teachers
//	public boolean AddTeachers(Teachers t);
//	//ɾ��Users
//	public boolean DeletTeachers(Teachers t);
//	//��ѯUsers
//	public boolean FindTeachers(Teachers t);
//	//�޸�Users
//	public boolean UpdateTeachers(Teachers t);
//	
//	//����Admins
//	public boolean AddAdmins(Admins a);
//	//ɾ��Users
//	public boolean DeletAdmins(Admins a);
//	//��ѯUsers
//	public boolean FindAdmins(Admins a);
//	//�޸�Users
//	public boolean UpdateAdmins(Admins a);
	
}
