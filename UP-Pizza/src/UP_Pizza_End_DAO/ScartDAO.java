package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.RecentlyRemove;
import UP_Pizza_End_Entity.Scart;

public class ScartDAO extends BaseDAO{

	public ArrayList<Scart> selectAll(String uid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select a.cid,f.name,f.imageName,f.xprice,a.qty,a.fid from scart as a inner join customer as b on a.uid = b.`id` inner join food as f on a.fid = f.`id` where b.id = ?";
		ArrayList<Scart> sArrayList = new ArrayList<Scart>();
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(Integer.parseInt(uid));
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while(rs.next()){
				Scart rt = new Scart();
				Food f = new Food();
				f.setName(rs.getString("name"));
				f.setImageName(rs.getString("imageName"));
				f.setXprice(rs.getDouble("xprice"));
				rt.setQty(rs.getInt("qty"));
				rt.setCid(rs.getInt("cid"));
				f.setId(rs.getInt("fid"));
				rt.setF(f);
				sArrayList.add(rt);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return sArrayList;
	}
	
	public boolean updateQty(int id,String j){
		String Sql = "update scart set qty=qty-1 where cid=?";
		if(j!=null){
			Sql = "update scart set qty=qty+1 where cid=?";
		}
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	public boolean deleteScart(int id){
		String Sql = "delete from scart where cid = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	public boolean deletesScart(int uid){
		String Sql = "delete from scart where uid = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(uid);
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	public Scart selectById(int cid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select a.cid,f.name,f.imageName,f.xprice,a.qty,a.fid,a.uid from scart as a inner join customer as b on a.uid = b.`id` inner join food as f on a.fid = f.`id` where a.cid = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(cid);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		Scart rt = null;
		try {
			while(rs.next()){
				rt = new Scart();
				Food f = new Food();
				f.setName(rs.getString("name"));
				f.setImageName(rs.getString("imageName"));
				f.setXprice(rs.getDouble("xprice"));
				f.setId(rs.getInt("fid"));
				rt.setQty(rs.getInt("qty"));
				rt.setCid(rs.getInt("cid"));
				rt.setUid(rs.getInt("uid"));
				rt.setF(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return rt;
	}
	
	/*public int delete(List list){
		String sql="delete from ddd where cid in("
				for (List cid : list) {
					+?+
				}
				+ "0")"";
				ArrayList<Object> params=new ArrayList<Object>();
						for (Object object : params) {
							parmas.add(object)
						}
						
	}*/
	
	
	
	

}
