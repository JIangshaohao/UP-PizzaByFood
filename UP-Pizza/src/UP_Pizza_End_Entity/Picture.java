package UP_Pizza_End_Entity;

public class Picture {
private int id;
private String picture;
private String face;
private String title;
private String info;


public String getFace() {
	return face;
}
public void setFace(String face) {
	this.face = face;
}
public Picture(int id, String picture, String title, String info, String face) {
	super();
	this.id = id;
	this.picture = picture;
	this.title = title;
	this.info = info;
	this.face = face;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getPicture() {
	return picture;
}
public void setPicture(String picture) {
	this.picture = picture;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getInfo() {
	return info;
}
public void setInfo(String info) {
	this.info = info;
}
public Picture() {
	super();
	// TODO Auto-generated constructor stub
}
public Picture(int id, String picture, String title, String info) {
	super();
	this.id = id;
	this.picture = picture;
	this.title = title;
	this.info = info;
}

}
