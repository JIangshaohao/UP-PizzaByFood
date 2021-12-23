package UP_Pizza_End_Entity;

public class Vip {

	private int id;
	private int cvid;
	public Vip() {
		super();
	}
	public Vip(int id, int cvid) {
		super();
		this.id = id;
		this.cvid = cvid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCvid() {
		return cvid;
	}
	public void setCvid(int cvid) {
		this.cvid = cvid;
	}
}
