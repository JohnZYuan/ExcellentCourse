package entity;
/*
 * ΩÃ ¶¿‡
 */
public class Teachers {
	
	private int tnum;
	
	private String tname;
	private String tpassword;
	private String tgender;
	private String temail;
	private int uid;
	
	public Teachers( int tnum,String tname,String tpassword,
			String tgender,String temail,int uid){
		this.tnum = tnum;
		this.tname = tname;
		this.tpassword = tpassword;
		this.tgender = tgender;
		this.temail = temail;
		this.uid= uid;
		
	}
	public Teachers(){
		
	}
	
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTpassword() {
		return tpassword;
	}
	public void setTpassword(String tpassword) {
		this.tpassword = tpassword;
	}
	public String getTgender() {
		return tgender;
	}
	public void setTgender(String tgender) {
		this.tgender = tgender;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
	
	

}
