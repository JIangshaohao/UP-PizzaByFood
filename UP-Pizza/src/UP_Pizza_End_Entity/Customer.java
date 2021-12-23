package UP_Pizza_End_Entity;

/**
 * 用户
 * 
 * @author vov
 * 
 */
public class Customer {

	private int id;
	private String name;
	private String pwd;
	private String userName;
	private String sex;
	private int tid; // 禁用
	private int cvid;
	private String birthday;
	private String time;
	private String tel;
	private String address;
	private String email;
	private String images;
	

	

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Customer(int id, String name, String pwd, String userName,
			String sex, int tid, int cvid, String birthday, String time,
			String tel, String address, String email) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.userName = userName;
		this.sex = sex;
		this.tid = tid;
		this.cvid = cvid;
		this.birthday = birthday;
		this.time = time;
		this.tel = tel;
		this.address = address;
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getCvid() {
		return cvid;
	}

	public void setCvid(int cvid) {
		this.cvid = cvid;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}



	public Customer() {
		super();
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return id;
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

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public Customer(int id, String name, String pwd, String userName,String sex, int tid,
			String birthday, String tel, String address ,String email) {
		super();
		this.sex=sex;
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.userName = userName;
		this.tid = tid;
		this.birthday = birthday;
		this.tel = tel;
		this.address = address;
		this.email = email;
	}


}
