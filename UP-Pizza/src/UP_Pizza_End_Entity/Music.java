package UP_Pizza_End_Entity;

/**
 * 音乐
 * @author vov
 *
 */
public class Music {

	private int id;
	private String name;
	private String music;
	private String info;
	
	public Music(int id, String name, String music, String info) {
		super();
		this.id = id;
		this.name = name;
		this.music = music;
		this.info = info;
	}

	public Music() {
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

	public String getMusic() {
		return music;
	}

	public void setMusic(String music) {
		this.music = music;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}
	
	
}
