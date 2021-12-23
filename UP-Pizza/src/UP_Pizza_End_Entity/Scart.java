package UP_Pizza_End_Entity;

/**
 * 购物车 
 * @author vov
 *
 */
public class Scart {

	private int cid; //编号
	private int uid; //用户id
	private Food f; //商品id
	private int qty; //购买数量
	public Scart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Scart(int cid, int uid, Food f, int qty) {
		super();
		this.cid = cid;
		this.uid = uid;
		this.f = f;
		this.qty = qty;
	}
	public Scart(int uid, Food f, int qty) {
		super();
		this.uid = uid;
		this.f = f;
		this.qty = qty;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public Food getF() {
		return f;
	}
	public void setF(Food f) {
		this.f = f;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	
	
	
}
