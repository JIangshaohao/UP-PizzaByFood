package UP_Pizza_End_Entity;

public class Also {

	private String goid;
	private String soid;
	private int qub;
	private String altime;
	private String info;
	
	public String getGoid() {
		return goid;
	}
	public void setGoid(String goid) {
		this.goid = goid;
	}
	public String getSoid() {
		return soid;
	}
	public void setSoid(String soid) {
		this.soid = soid;
	}
	public int getQub() {
		return qub;
	}
	public void setQub(int qub) {
		this.qub = qub;
	}
	public String getAltime() {
		return altime;
	}
	public void setAltime(String altime) {
		this.altime = altime;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	
	public Also(String goid, String soid, int qub, String altime, String info) {
		super();
		this.goid = goid;
		this.soid = soid;
		this.qub = qub;
		this.altime = altime;
		this.info = info;
	}
	public Also() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
