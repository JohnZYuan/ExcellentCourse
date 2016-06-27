package dao;

import java.util.List;

import entity.Users;

//�û�ҵ���߼��ӿ�
public interface UsersDao {


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
	//����uid�����û�
	public Users FindUserByUid(String uid);
}
