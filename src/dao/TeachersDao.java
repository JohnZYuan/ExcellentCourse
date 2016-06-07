package dao;

import java.util.List;


import entity.Teachers;


public interface TeachersDao {

	//����Teachers
	public boolean AddTeachers(Teachers t);
	//ɾ��Teachers
	public void DeletTeachers(int tnum);
	//��ѯȫ��Teachers
	public List<Teachers> FindAllTeachers();
	//�����û�id����
	public Teachers FindTeacherById(int tnum);
	//�����û�������
	public Teachers FindTeacherByName(String tname);
	//�޸�Teachers
	public void UpdateTeachers(int id,Teachers t);
}
