package entity;

//�û���
public class Users {

	private int uid;
	private String username;
	private String password;
	private int role_id;

	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public Users() {

	}

	public Users(int uid, String username, String password,int role_id) {
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.role_id= role_id;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
