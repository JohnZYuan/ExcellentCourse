package entity;

//”√ªß¿‡
public class Users {

	private int id;
	private String username;
	private String password;
	private String uid;
	private String role;


	public Users() {

	}

	public Users(int id, String username, String password,String uid,String role) {
		this.id = id;
		this.username = username;
		this.password = password;
		this.uid= uid;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
}
