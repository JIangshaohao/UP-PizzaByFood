package UP_Pizza_End_Entity;

public class Outinfo {

	private int id;
	private Dingdan dg;
	private int uid;
	private int fid;
	private int qty;
	private String tktime;
	private double price;
	private String info;
	private int tktid;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Dingdan getDg() {
		return dg;
	}

	public void setDg(Dingdan dg) {
		this.dg = dg;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getTktime() {
		return tktime;
	}

	public void setTktime(String tktime) {
		this.tktime = tktime;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public int getTktid() {
		return tktid;
	}

	public void setTktid(int tktid) {
		this.tktid = tktid;
	}

	public Outinfo(Dingdan dg,int id,int qty, String tktime, double price,
			String info, int tktid) {
		super();
		this.id = id;
		this.dg = dg;
		this.qty = qty;
		this.tktime = tktime;
		this.price = price;
		this.info = info;
		this.tktid = tktid;
	}

	public Outinfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
