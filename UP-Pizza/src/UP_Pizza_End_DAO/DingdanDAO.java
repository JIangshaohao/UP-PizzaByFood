package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Dingdan;
import UP_Pizza_End_Entity.Expres;
import UP_Pizza_End_Entity.Food;

public class DingdanDAO extends BaseDAO{

	public ArrayList<Dingdan> selectDgAll(int uid,String tj,String date,int pageNum,int pageSize,String names){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select a.id,a.did,a.qty,a.jytime,a.price,a.tid,b.id,b.name,b.imageName,c.id,c.username,d.id,d.expres from dingdan as a inner join food as b on a.`fid` = b.`id` inner join customer as c on a.`uid` = c.id inner join express as d on a.expid = d.id where c.id = ? ";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(uid);
		if(tj!=null){
			Sql += " and a.tid = ?";
			params.add(tj);
		}
		if(!"null".equals(date)){
			Sql += " and jytime >= '"+date+"-1-1' and jytime <= '"+date+"-12-31' ";
		}
		if(names!=null){
			Sql += " and b.name like '%' ? '%'  ";
			params.add(names);

		}
		
		Sql += " limit ?,?";
		params.add((pageNum-1)*pageSize);
		params.add(pageSize);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		try {
			while(rs.next()){
				Dingdan dg = new Dingdan();
				Food fg = new Food();
				Customer cg = new Customer();
				Expres eg = new Expres();
				
				dg.setId(rs.getInt("a.id"));
				dg.setDid(rs.getString("a.did"));
				dg.setTid(rs.getInt("a.tid"));
				dg.setQty(rs.getInt("a.qty"));
				dg.setJytime(rs.getString("a.jytime"));
				dg.setPrice(rs.getDouble("a.price"));
				fg.setId(rs.getInt("b.id"));
				fg.setName(rs.getString("b.name"));
				fg.setImageName(rs.getString("b.imagename"));
				cg.setId(rs.getInt("c.id"));
				cg.setUserName(rs.getString("c.username"));
				eg.setId(rs.getInt("d.id"));
				eg.setExpres(rs.getString("d.expres"));
				dg.setFo(fg);
				dg.setU(cg);
				dg.setE(eg);
				
				list.add(dg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return list;
	}
	
	public int getCount(int uid,String tj,String date,String names){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		int count = 0;
		String Sql = " select count(*) from dingdan as a inner join food as b on a.fid = b.id where a.uid = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(uid);
		if(tj != null){
			Sql += " and a.tid = ?";
			params.add(tj);
		}
		if(!"null".equals(date)){
			Sql += " and a.jytime >= '"+date+"-1-1' and a.jytime <= '"+date+"-12-31' ";
		}
		if(names!=null){
			Sql += " and b.name like '%' ? '%'  ";
			params.add(names);

		}
		ResultSet rs = executeQuery(Sql, params, conn, psmt);

		try {
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return count;
	}
	
	
	
	
	
	
	
	
	public ArrayList<Dingdan> selectByDId(int uid,String did,String fid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select  a.id,a.did,a.qty,a.price,b.name from dingdan as a inner join food as b on a.fid = b.`id` where a.uid = ? and a.did = ? and b.id = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(uid);
		params.add(did);
		params.add(fid);
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while(rs.next()){
				Dingdan dg = new Dingdan();
				Food fd = new Food();
				dg.setId(rs.getInt(1));
				dg.setDid(rs.getString(2));
				dg.setQty(rs.getInt(3));
				dg.setPrice(rs.getDouble(4));
				fd.setName(rs.getString(5));
				dg.setFo(fd);
				list.add(dg);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		
		return list;
	}
	
	
	
}
