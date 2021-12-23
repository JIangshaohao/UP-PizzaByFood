package UP_Pizza_End_DAO;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;






import UP_Pizza_End_Entity.*;
public class OutinfoDAO extends BaseDAOS{

	//退款表查询信息分页
	public ArrayList<Outinfo> selectPageAll(int pageNum,int pageSize)
	{
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String  Sql = "select a.id,b.did,c.name,b.price,a.tktime,a.price,a.qty,a.tktid,a.info from outinfo as a inner join dingdan as b on a.did = b.id inner join food  as c on b.fid = c.id  limit ?,?";
		ArrayList<Object> params = new ArrayList<Object>();
		ArrayList<Outinfo> list = new ArrayList<Outinfo>();
		params.add((pageNum-1)*pageSize);
		params.add(pageSize);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while (rs.next()) {
				Food food = new Food();
				Dingdan dg = new Dingdan();
				dg.setDid(rs.getString(2));
				dg.setPrice(rs.getDouble(4));
				food.setName(rs.getString(3));
				dg.setFo(food);
				Outinfo outinfo = new Outinfo(dg,rs.getInt(1),rs.getInt(7),rs.getString(5),rs.getDouble(6),rs.getString(9),rs.getInt(8));
				list.add(outinfo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			closeAll(conn, null, rs);
		}
		return list;
	}
	
	public int getCount(String tj)
	{
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select count(*) from outinfo as a inner join dingdan as b on a.did = b.id";
		ArrayList<Object> params = new ArrayList<Object>();
		if(tj!=null){
			Sql += " where id=?";
			params.add(tj);
		}
		int count = 0;
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while(rs.next()){
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
	
	
	
	
	public boolean updatetk(int tktid,int id){
		String Sql = "update outinfo set tktid = ? where id = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tktid);
		params.add(id);
		return executeUpdate(Sql, params)>0;
	}
	
	public Outinfo selectById(int id){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select c.`userName`,c.`tel`,a.`qty`,d.`expres`,a.`price`,a.`tktime`,a.`tktid` ,e.`id`,e.`name`,e.`info`,e.`xprice`,a.id,a.info,e.imagename from outinfo as a inner join dingdan as b on a.`did` = b.`id` inner join customer as c on c.`id` = b.`uid` inner join express as d on b.`expid`=d.`id` inner join food as e on b.`fid` = e.`id`  where a.id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		Outinfo ot = null;
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while(rs.next()){
				ot = new Outinfo();
				Food f=new Food();
				Expres exp = new Expres();
				Customer cus = new Customer();
				Dingdan dg = new Dingdan();
				cus.setUserName(rs.getString("userName"));
				cus.setTel(rs.getString("tel"));
				ot.setQty(rs.getInt("qty"));
				exp.setExpres(rs.getString("expres"));
				ot.setPrice(rs.getDouble("price"));
				ot.setTktime(rs.getString("tktime"));
				ot.setTktid(rs.getInt("tktid"));
				ot.setId(rs.getInt("a.id"));
				f.setImageName(rs.getString("e.imagename"));
				System.out.println(rs.getString("e.imagename")+"111");
				ot.setInfo(rs.getString("a.info"));
				f.setId(rs.getInt("id"));
				f.setName(rs.getString("name"));
				f.setInfo(rs.getString("e.info"));
				dg.setFo(f);
				dg.setE(exp);;
				dg.setU(cus);
				ot.setDg(dg);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return ot;
	}
	
	public ArrayList<Outinfo> selectByTid(int tid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select c.`userName`,c.`tel`,a.`qty`,d.`expres`,a.`price`,a.`tktime`,a.`tktid` ,e.`id`,e.`name`,e.`info`,e.`xprice`,a.id,a.info,b.did,b.price from outinfo as a inner join dingdan as b on a.`did` = b.`id` inner join customer as c on c.`id` = b.`uid` inner join express as d on b.`expid`=d.`id` inner join food as e on b.`fid` = e.`id`  where a.tktid=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tid);
		ArrayList<Outinfo> list = new ArrayList<Outinfo>();
		Outinfo ot = null;
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while(rs.next()){
				ot = new Outinfo();
				Food f=new Food();
				Expres exp = new Expres();
				Customer cus = new Customer();
				Dingdan dg = new Dingdan();
				dg.setDid(rs.getString("b.did"));
				dg.setPrice(rs.getDouble("b.price"));
				cus.setUserName(rs.getString("userName"));
				cus.setTel(rs.getString("tel"));
				ot.setQty(rs.getInt("qty"));
				exp.setExpres(rs.getString("expres"));
				ot.setPrice(rs.getDouble("price"));
				ot.setTktime(rs.getString("tktime"));
				ot.setTktid(rs.getInt("tktid"));
				ot.setId(rs.getInt("a.id"));
				ot.setInfo(rs.getString("a.info"));
				f.setId(rs.getInt("id"));
				f.setName(rs.getString("e.name"));
				f.setInfo(rs.getString("e.info"));
				dg.setFo(f);
				dg.setE(exp);;
				dg.setU(cus);
				ot.setDg(dg);
				list.add(ot);
				}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return list;
	}
	
	//批量删除
	public boolean deletesOutinfo(String ids)
	{
		String Sql="delete from outinfo where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(Integer.parseInt(ids));
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	//删除单个
	public boolean deleteOutinfo(int id)
	{
		String Sql="delete from outinfo where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	public ArrayList<Outinfo> selectOutinfoItems(String tj)
	{
		String Sql = "select c.`userName`,c.`tel`,a.`qty`,d.`expres`,a.`price`,a.`tktime`,a.`tktid` ,e.`id`,e.`name`,e.`info`,e.`xprice`,a.id,a.info,b.did,b.price from outinfo as a inner join dingdan as b on a.`did` = b.`id` inner join customer as c on c.`id` = b.`uid` inner join express as d on b.`expid`=d.`id` inner join food as e on b.`fid` = e.`id` where c.username like '%' ? '%' or e.name like '%' ? '%' ";
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tj);
		params.add(tj);
		ResultSet rs= executeQuery(Sql, params, conn, psmt);
		ArrayList<Outinfo> list = new ArrayList<Outinfo>();
		try {
			while(rs.next())
			{
				Outinfo ot = new Outinfo();
				Food f=new Food();
				Expres exp = new Expres();
				Customer cus = new Customer();
		
				Dingdan dg = new Dingdan();
				dg.setDid(rs.getString("b.did"));
				dg.setPrice(rs.getDouble("b.price"));
				cus.setUserName(rs.getString("userName"));
				cus.setTel(rs.getString("tel"));
				ot.setQty(rs.getInt("qty"));
				exp.setExpres(rs.getString("expres"));
				ot.setPrice(rs.getDouble("price"));
				ot.setTktime(rs.getString("tktime"));
				ot.setTktid(rs.getInt("tktid"));
				ot.setId(rs.getInt("a.id"));
				ot.setInfo(rs.getString("a.info"));
				f.setId(rs.getInt("id"));
				f.setName(rs.getString("e.name"));
				f.setInfo(rs.getString("e.info"));
				dg.setFo(f);
				dg.setE(exp);;
				dg.setU(cus);
				ot.setDg(dg);
				list.add(ot);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return list;
		
	}
	
	public int getSeachCount(String tj)
	{
		int count = 0;
		String Sql = "select count(*) from outinfo as a inner join dingdan as b on a.`did` = b.`id` inner join customer as c on c.`id` = b.`uid` inner join express as d on b.`expid`=d.`id` inner join food as e on b.`fid` = e.`id` where c.username like '%' ? '%' or e.name like '%' ? '%' ";
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tj);
		params.add(tj);
		ResultSet rs= executeQuery(Sql, params, conn, psmt);
		ArrayList<Outinfo> list = new ArrayList<Outinfo>();
		try {
			while(rs.next())
			{
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
	
	public boolean foodtkAdd(int id,int qty,double price,String info){
		String Sql = "insert into outinfo values(null,?,?,now(),?,?,1,null)";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		params.add(qty);
		params.add(price);
		params.add(info);
		return executeUpdate(Sql, params)>0;
	}
	
	public Outinfo checkExistence(String did,int uid,int fid){
		String Sql = "select a.tktid from outinfo as a inner join dingdan as b on a.did = b.id inner join food as c on b.fid = c.id where b.did = '"+did+"' and b.fid = ? and b.uid = ?";
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(fid);
		params.add(uid);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		Outinfo out = null;
		try {
			if(rs.next()){
				out = new Outinfo();
				out.setTktid(rs.getInt("a.tktid"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		return out;
	}
}
