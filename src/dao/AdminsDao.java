package dao;

import entity.Admins;

public interface AdminsDao {
			//�����û�������
			public Admins FindAdminByName(String aname);
			//����Students
			public boolean AddAdmins(Admins a);
			//ɾ��Students
			public void DeletAdmins(int anum);

}
