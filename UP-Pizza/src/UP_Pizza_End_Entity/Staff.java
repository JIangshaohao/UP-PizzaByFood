package UP_Pizza_End_Entity;

/**
 * UserDAO
 * 
 * @author vov
 * 
 */
public class Staff {

	private int id;
	private String name;
	private String pwd;
	private String sex;
	private String userName;
	private String tel;
	private String birthday;
	private String zhucetime;
	private String address;
	private String email;
	private String images;
	

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public Staff(int id, String name, String pwd, String sex, String userName,
			String tel, String birthday, String zhucetime, String address,
			String email) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.sex = sex;
		this.userName = userName;
		this.tel = tel;
		this.birthday = birthday;
		this.zhucetime = zhucetime;
		this.address = address;
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getZhucetime() {
		return zhucetime;
	}

	public void setZhucetime(String zhucetime) {
		this.zhucetime = zhucetime;
	}



	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Staff() {
		super();
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

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	public Staff(int id, String name, String pwd, String userName, String tel,
			String birthday, String address, String email) {
		super();
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.userName = userName;
		this.tel = tel;
		this.birthday = birthday;
		this.address = address;
		this.email = email;
	}

}
