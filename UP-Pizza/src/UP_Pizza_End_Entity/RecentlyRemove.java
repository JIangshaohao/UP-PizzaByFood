package UP_Pizza_End_Entity;

public class RecentlyRemove {

	private int rid;
	private int fid;
	private String name;
	private int qry;
	private double price;
	private String imageName;
	private int uid;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQry() {
		return qry;
	}
	public void setQry(int qry) {
		this.qry = qry;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public RecentlyRemove() {
		super();
	}
	public RecentlyRemove(int rid, int fid, String name, int qry, double price,
			String imageName, int uid) {
		super();
		this.rid = rid;
		this.fid = fid;
		this.name = name;
		this.qry = qry;
		this.price = price;
		this.imageName = imageName;
		this.uid = uid;
	}
	
	
}
