package UP_Pizza_End_Entity;

/**
 * 类型表
 * @author vov
 *
 */
public class Type {

	private int id;
	private int type;
	private String name;
	
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Type(int id, int type, String name) {
		super();
		this.id = id;
		this.type = type;
		this.name = name;
	}

	public Type(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	public Type() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}
	
	
}
