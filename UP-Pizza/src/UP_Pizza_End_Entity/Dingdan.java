package UP_Pizza_End_Entity;

public class Dingdan {

	private int id;
	private String did;
	private Customer u;
	private Food fo;
	private int qty;
	private String jytime;
	private double price;
	private Type t;
	private Expres e;
	private int tid;
	private int typeId;

	public Dingdan() {
		super();
		// TODO Auto-generated constructor stub
	}

	/*
	 * public Dingdan(int id, String did, Customer u, Food fo, int qty, String
	 * jytime, double price, Type t, Expres e, int tid) { super(); this.id = id;
	 * this.did = did; this.u = u; this.fo = fo; this.qty = qty; this.jytime =
	 * jytime; this.price = price; this.t = t; this.e = e; this.tid = tid; }
	 */

	public Dingdan(int int1, String string, Customer c, Food f, int int2,
			String string2, Type t2, double double1, Expres e2, int int3) {
		// TODO Auto-generated constructor stub
		super();
		this.id = int1;
		this.did = string;
		this.u = c;
		this.fo = f;
		this.qty = int2;
		this.jytime = string2;
		this.t = t2;
		this.price = double1;
		this.e = e2;
		this.tid = int3;
	}

	
	public Dingdan(int int1, String string, String string2, double double1,
			int int2) {
		// TODO Auto-generated constructor stub
		super();
		this.id=int1;
		this.did = string;
		this.jytime = string2;
		this.price = double1;
		this.tid = int2;
	}

	public int getTypeId() {
		return typeId;
	}

	public void setTypeId(int typeId) {
		this.typeId = typeId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public Customer getU() {
		return u;
	}

	public void setU(Customer u) {
		this.u = u;
	}

	public Food getFo() {
		return fo;
	}

	public void setFo(Food fo) {
		this.fo = fo;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public String getJytime() {
		return jytime;
	}

	public void setJytime(String jytime) {
		this.jytime = jytime;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Type getT() {
		return t;
	}

	public void setT(Type t) {
		this.t = t;
	}

	public Expres getE() {
		return e;
	}

	public void setE(Expres e) {
		this.e = e;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}
	
	

}
