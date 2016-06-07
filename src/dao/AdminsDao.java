package dao;

import entity.Admins;

public interface AdminsDao {
			//根据用户名查找
			public Admins FindAdminByName(String aname);
			//增加Students
			public boolean AddAdmins(Admins a);
			//删除Students
			public void DeletAdmins(int anum);

}
