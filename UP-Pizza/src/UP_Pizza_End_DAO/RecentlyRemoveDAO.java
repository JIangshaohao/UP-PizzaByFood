package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.RecentlyRemove;
import UP_Pizza_End_Entity.Scart;

public class RecentlyRemoveDAO extends BaseDAO{

	public ArrayList<RecentlyRemove> showrecenRemove(int id){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select * from recentlyremove where uid = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		ArrayList<RecentlyRemove> list = new ArrayList<RecentlyRemove>();
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while(rs.next()){
				RecentlyRemove ry = new RecentlyRemove();
				ry.setRid(rs.getInt(1));
				ry.setFid(rs.getInt(2));
				ry.setName(rs.getString(3));
				ry.setQry(rs.getInt(4));
				ry.setPrice(rs.getDouble(5));
				ry.setImageName(rs.getString(6));
				ry.setUid(rs.getInt(7));
				list.add(ry);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
 		return list;
	}
	
	public RecentlyRemove selectRecenextits(int uid,int fid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select * from recentlyremove where uid = ? and fid = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(uid);
		params.add(fid);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		RecentlyRemove rely = null;
		try {
			if(rs.next()){
				rely = new RecentlyRemove();
				rely.setRid(rs.getInt(1));
				rely.setFid(rs.getInt(2));
				rely.setName(rs.getString(3));
				rely.setQry(rs.getInt(4));
				rely.setPrice(rs.getDouble(5));
				rely.setImageName(rs.getString(6));
				rely.setUid(rs.getInt(7));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		return rely;
	}
	
	public boolean addRecently(Scart rce){
		String Sql = "insert into recentlyremove values(null,?,?,?,?,?,?)";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(rce.getF().getId());
		params.add(rce.getF().getName());
		params.add(rce.getQty());
		params.add(rce.getQty()*rce.getF().getXprice());
		params.add(rce.getF().getImageName());
		params.add(rce.getUid());
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	public boolean updateRecently(int qty,double price,int rid){
		String Sql = "update recentlyremove set qty=?,price=? where rid=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(qty);
		params.add(price);
		params.add(rid);
		return executeUpdate(Sql, params)>0?true:false;
		
	}
	
	
	
	
}
