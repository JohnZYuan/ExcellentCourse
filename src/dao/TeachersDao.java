package dao;

import java.util.List;


import entity.Teachers;


public interface TeachersDao {

	//增加Teachers
	public boolean AddTeachers(Teachers t);
	//删除Teachers
	public void DeletTeachers(int tnum);
	//查询全部Teachers
	public List<Teachers> FindAllTeachers();
	//根据用户id查找
	public Teachers FindTeacherById(int tnum);
	//根据用户名查找
	public Teachers FindTeacherByName(String tname);
	//修改Teachers
	public void UpdateTeachers(int id,Teachers t);
}
