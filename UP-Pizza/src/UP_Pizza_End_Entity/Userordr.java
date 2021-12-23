package UP_Pizza_End_Entity;

public class Userordr {

	private int id ;
	private int uid;
	private String info;
	private int kid ;
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	private int yd;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getYd() {
		return yd;
	}
	public void setYd(int yd) {
		this.yd = yd;
	}
	public Userordr(int id, int uid,int kid,String info, int yd) {
		super();
		this.id = id;
		this.uid = uid;
		this.info = info;
		this.yd = yd;
		this.kid = kid;
	}
	public Userordr() {
		super();
	}
	
}
