package action;


import dao.AdminsDao;
import dao.StudentsDao;
import dao.TeachersDao;
import dao.UsersDao;
import entity.Admins;
import entity.Students;
import entity.Teachers;
import dao.impl.AdminsDaoImpl;
import dao.impl.StudentsDaoImpl;
import dao.impl.TeachersDaoImpl;
import dao.impl.UsersDaoImpl;

public class UsersAction {
	@SuppressWarnings("unused")
	private UsersDao uDao = new UsersDaoImpl(); 
	private TeachersDao tDao = new TeachersDaoImpl();
	private StudentsDao sDao = new StudentsDaoImpl();
	private AdminsDao aDao = new AdminsDaoImpl();
	
	public boolean login(int role_id,String name,String psd){
		if(role_id == 1){
			Admins admin = aDao.FindAdminByName(name);
			if(admin == null){
				return false;
			}else{
				if(admin.getApassword() == psd){
					return true;
				}else{
					return false;
				}
			}
		}else if(role_id == 2){
			Teachers teacher = tDao.FindTeacherByName(name);
			if(teacher == null){
				return false;
			}else{
				if(teacher.getTpassword() == psd){
					return true;
				}else{
					return false;
				}
			}
				
		}else if(role_id == 3){
			Students student = sDao.FindStudentByName(name);
			if(student == null){
				return false;
			}else{
				if(student.getSpassword() == psd){
					return true;
				}else{
					return false;
				}
			}
		}
		return false;
	}
	public boolean Register(Students s){
		boolean b = sDao.AddStudents(s);
		if(b){
			return true;
		}else{
			return false;
		}
	}
	
}
