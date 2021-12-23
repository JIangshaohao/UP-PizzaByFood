package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.Userordr;

public class UserordrDAO extends BaseDAO{

	//查询未读的信息
	public Userordr custShowInfo(int uid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select id,info,yd,useid,kid from userordr where (kid=1 and id not in (select id from infotable where infotable.`useid`=?))or (useid=? and yd=0);";
		Userordr user = null;
		ArrayList<Object> params = new ArrayList<>();
		params.add(uid);
		params.add(uid);
		ResultSet rs = executeQuery(Sql, params , conn ,psmt);
		try {
			while(rs.next()){
				user = new Userordr();
				user.setId(rs.getInt(1));
				user.setInfo(rs.getString(2));
				user.setYd(rs.getInt(3));
				user.setUid(rs.getInt(4));
				user.setKid(rs.getInt(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn,null, rs);
		}
		return user;
	}
	
	public boolean cus_addinfo(Userordr uu){
		String Sql = "insert into userordr values(null,?,?,?,0)";
		ArrayList<Object> params = new ArrayList<>();
		params.add(uu.getKid());
		params.add(uu.getUid());
		params.add(uu.getInfo());
		return executeUpdate(Sql, params)>0;
	}
	
	//infoTable
	public boolean cus_infoTableadd(int uid,int id){
		String Sql = "insert into infotable values(?,?)";
		ArrayList<Object> params = new ArrayList<>();
		params.add(uid);
		params.add(id);
		return executeUpdate(Sql, params)>0;
	}
	
	public boolean cus_info_update(int id){
		String Sql = "update userordr set yd = 1 where id = ?";
		ArrayList<Object> params = new ArrayList<>();
		params.add(id);
		return executeUpdate(Sql, params)>0;
	}
}
