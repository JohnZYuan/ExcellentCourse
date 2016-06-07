package entity;

public class Admins {
	
	private int anum;
	private String aname;
	private String apassword;
	private String agender;
	private String aemail;
	private int uid;
	
	public Admins(int anum,String aname,String apassword,String agender,String aemail,int uid){
		this.anum = anum;
		this.aname =aname;
		this.apassword = apassword;
		this.agender = agender;
		this.aemail =aemail;
		this.uid = uid;
	}
	public Admins(){
		
	}

	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getApassword() {
		return apassword;
	}
	public void setApassword(String apassword) {
		this.apassword = apassword;
	}
	public String getAgender() {
		return agender;
	}
	public void setAgender(String agender) {
		this.agender = agender;
	}
	public String getAemail() {
		return aemail;
	}
	public void setAemail(String aemail) {
		this.aemail = aemail;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

}
