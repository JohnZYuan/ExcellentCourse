package dao;

import java.util.List;

import entity.Students;

public interface StudentsDao {
	
	//增加Students
		public boolean AddStudents(Students s);
		//删除Students
		public void DeletStudents(int snum);
		//查询全部Students
		public List<Students> FindAllStudents();
		//根据用户id查找
		public Students FindStudentById(int snum);
		//根据用户名查找
		public Students FindStudentByName(String sname);
		//修改Students
		public void UpdateStudents(int n,Students s);

}
