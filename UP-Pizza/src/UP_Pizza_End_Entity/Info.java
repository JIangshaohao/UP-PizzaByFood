package UP_Pizza_End_Entity;

/**
 * 上下架
 * @author vov
 *
 */
public class Info {

	private int id;
	private int fid;
	private String name;
	private String time;
	private String info;
	private double price;
	private int tid;
	
	public Info(int id, String name, String time, String info, double price,
			int tid) {
		super();
		this.id = id;
		this.name = name;
		this.time = time;
		this.info = info;
		this.price = price;
		this.tid = tid;
	}
	
	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}


	public Info() {
		super();
	}

	public int getId() {
		return id;
	}

	public Info(int id, int fid, String name, String time, String info,
			double price, int tid) {
		super();
		this.id = id;
		this.fid = fid;
		this.name = name;
		this.time = time;
		this.info = info;
		this.price = price;
		this.tid = tid;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}
	
	
}
