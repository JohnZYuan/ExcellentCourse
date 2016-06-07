package entity;
/*
 * —ß…˙¿‡
 */
public class Students {
	
	private int snum;
	private String sname;
	private String spassword;
	private String sgender;
	private String sclass;
	private String semail;
	private int uid;
	
	public Students( int snum,String sname,String spassword,
			String sgender,String sclass,String semail,int uid){
		this.snum = snum;
		this.sname = sname;
		this.spassword = spassword;
		this.sgender = sgender;
		this.sclass = sclass;
		this.semail = semail;
		this.uid = uid;
		
	}
	public Students(){
		
	}
	
	
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSpassword() {
		return spassword;
	}
	public void setSpassword(String spassword) {
		this.spassword = spassword;
	}
	public String getSgender() {
		return sgender;
	}
	public void setSgender(String sgender) {
		this.sgender = sgender;
	}
	public String getSclass() {
		return sclass;
	}
	public void setSclass(String sclass) {
		this.sclass = sclass;
	}
	public String getSemail() {
		return semail;
	}
	public void setSemail(String semail) {
		this.semail = semail;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}

	
}
