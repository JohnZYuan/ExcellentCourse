package dao;

import java.util.List;

import entity.Students;

public interface StudentsDao {
	
	//����Students
		public boolean AddStudents(Students s);
		//ɾ��Students
		public void DeletStudents(int snum);
		//��ѯȫ��Students
		public List<Students> FindAllStudents();
		//�����û�id����
		public Students FindStudentById(int snum);
		//�����û�������
		public Students FindStudentByName(String sname);
		//�޸�Students
		public void UpdateStudents(int n,Students s);

}
