package action;

import dao.StudentsDao;
import entity.Students;
import dao.impl.StudentsDaoImpl;

public class StudentsAction {
	private StudentsDao sDao = new StudentsDaoImpl();
	
	public void update(int id, Students s){
		sDao.UpdateStudents(id, s);
	}

}
