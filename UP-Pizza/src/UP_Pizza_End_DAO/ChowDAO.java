package UP_Pizza_End_DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

import UP_Pizza_End_Entity.Dingdan;
import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Picture;
import UP_Pizza_End_Entity.Scart;

public class ChowDAO extends BaseDAO {
	/**
	 * 早餐分页查询
	 */
	public ArrayList<Food> selectByPage(int pageNum, int pageSize) {
		ArrayList<Food> list = new ArrayList<Food>();
		String sql = "select * from food where typeid=1 limit ?,?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add((pageNum - 1) * pageSize);
		par.add(pageSize);
		ResultSet rs = executeQuery(sql, par);
		try {
			while (rs.next()) {
				Food flo = new Food(rs.getInt(1), rs.getString(2),
						rs.getDouble(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8),
						rs.getString(9), rs.getInt(10));
				list.add(flo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询早餐商品的总条数，计算商品的总页数
	 */
	public int getCount() {
		int count = 0;
		String sql = "select count(*) from food where typeid=1";
		ResultSet rs = executeQuery(sql, null);
		try {
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}

	/**
	 * 甜点分页查询
	 */
	public ArrayList<Food> selectByPageSweets(int pageNum, int pageSize) {
		ArrayList<Food> list = new ArrayList<Food>();
		String sql = "select * from food where typeid=6 limit ?,?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add((pageNum - 1) * pageSize);
		par.add(pageSize);
		ResultSet rs = executeQuery(sql, par);
		try {
			while (rs.next()) {
				Food flo = new Food(rs.getInt(1), rs.getString(2),
						rs.getDouble(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8),
						rs.getString(9), rs.getInt(10));
				list.add(flo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询甜点商品的总条数，计算商品的总页数
	 */
	public int getCountSweets() {
		int count = 0;
		String sql = "select count(*) from food where typeid=6";
		ResultSet rs = executeQuery(sql, null);
		try {
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}

	/**
	 * 查询汉堡商品的总条数，计算商品的总页数
	 */
	public int getCountHanbao() {
		int count = 0;
		String sql = "select count(*) from food where typeid=3";
		ResultSet rs = executeQuery(sql, null);
		try {
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}

	/**
	 * 汉堡分页查询
	 */
	public ArrayList<Food> selectByPageHanbao(int pageNum, int pageSize) {
		ArrayList<Food> list = new ArrayList<Food>();
		String sql = "select * from food where typeid=3 limit ?,?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add((pageNum - 1) * pageSize);
		par.add(pageSize);
		ResultSet rs = executeQuery(sql, par);
		try {
			while (rs.next()) {
				Food flo = new Food(rs.getInt(1), rs.getString(2),
						rs.getDouble(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8),
						rs.getString(9), rs.getInt(10));
				list.add(flo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 菜单查全部
	 */
	public ArrayList<Picture> selectAllPicture() {
		String sql = "select * from picture";
		ArrayList<Picture> list = new ArrayList<Picture>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Picture p = new Picture(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5));
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 添加到购物车
	 */
	public boolean insertFoodByCart(Scart s) {// CustomerAddFoodByCartServlet调用
		String sqli = "insert into scart () values (null,?,?,?)";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(s.getUid());
		list.add(s.getF().getId());
		list.add(s.getQty());
		int row = executeUpdate(sqli, list);
		return row > 0 ? true : false;

	}

	// 根据uid来查询购物车是否有此商品
	/**
	 * 2.判断商品在购物车中是否存在
	 */
	public Scart selectCarItem(int uid, int fid) {// CustomerAddFoodByCartServlet调用
		Scart item = null;
		String sql = "select * from Scart where fid=? and uid=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(fid);
		list.add(uid);
		ResultSet rs = executeQuery(sql, list);
		try {
			if (rs.next()) {
				Food f = new Food();
				f.setId(fid);
				item = new Scart(rs.getInt(1), rs.getInt(2), f, rs.getInt(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return item;
	}

	/**
	 * 3.修改购买中的数量
	 */
	public boolean updateNum(int cid, int num) {// CustomerAddFoodByCartServlet调用
		String sql = "update Scart set qty=? where cid=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(num);
		list.add(cid);
		int row = executeUpdate(sql, list);
		return row > 0 ? true : false;
	}

	/**
	 * 4.查询uid所有的购物车项
	 * 
	 * 获取当前用户购买的所有购物项
	 */
	/*
	 * public ArrayList<Scart> selectUserAll(int uid) {// CustomerCartServlet调用
	 * String sql = "select * from Scart where uid=?"; ArrayList<Object> list =
	 * new ArrayList<Object>(); list.add(uid); ResultSet rs = executeQuery(sql,
	 * list); ArrayList<Scart> item = new ArrayList<Scart>(); try { while
	 * (rs.next()) { int fid = rs.getInt("fid"); Product_SortDao dao = new
	 * Product_SortDao(); Food f = dao.selectById(fid); Scart c = new
	 * Scart(rs.getInt(1), rs.getInt(2), f, rs.getInt(4)); item.add(c); } }
	 * catch (SQLException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } return item; }
	 */

	public ArrayList<Scart> selectAll(int uid) {
		String Sql = "select a.cid,f.name,f.imageName,f.xprice,a.qty,a.fid,f.typeid from scart as a inner join customer as b on a.uid = b.`id` inner join food as f on a.fid = f.`id` where b.id = ?";
		ArrayList<Scart> sArrayList = new ArrayList<Scart>();
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(uid);
		ResultSet rs = executeQuery(Sql, params);
		try {
			while (rs.next()) {
				Scart rt = new Scart();
				Food f = new Food();
				f.setName(rs.getString("name"));
				f.setImageName(rs.getString("imageName"));
				f.setTypeId(rs.getInt("typeid"));
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
		}
		return sArrayList;
	}

	/**
	 * 5.获取总件数
	 */
	public int getCount(int uid) {// CustomerCartServlet调用
		int count = 0;
		String sql = "select count(*) from Scart where uid=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(uid);
		ResultSet rs = executeQuery(sql, list);
		try {
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}

	/**
	 * 6.获取总金额(用户不一样，总金额不一样)
	 */
	public double getMoney(int uid) {// CustomerCartServlet调用
		double sum = 0;
		String sql = "SELECT SUM(f.`xprice`*c.`qty`) FROM Scart AS c INNER JOIN food AS f ON c.fid=f.`id`WHERE uid=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(uid);
		ResultSet rs = executeQuery(sql, list);
		try {
			if (rs.next()) {
				sum = rs.getDouble(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sum;
	}

	/**
	 * 7.根据购买id的编号将其对应数据删除
	 */
	public boolean deleteCaritem(int cid) {
		String sql = "delete from Scart where cid=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(cid);
		int row = executeUpdate(sql, list);
		return row > 0 ? true : false;
	}

	/**
	 * 根据用户输入的关键字查询所对应的早餐食物信息
	 */
	public ArrayList<Food> selectBreakfastInfoByInfo(String info, int pageNum,
			int pageSize) {
		ArrayList<Food> list = new ArrayList<Food>();
		String sql = "SELECT * FROM food WHERE typeId=1 AND `name` LIKE '%' ? '%' LIMIT ?,?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add(info);
		par.add((pageNum - 1) * pageSize);
		par.add(pageSize);
		ResultSet rs = executeQuery(sql, par);
		try {
			while (rs.next()) {
				Food flo = new Food(rs.getInt(1), rs.getString(2),
						rs.getDouble(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8),
						rs.getString(9), rs.getInt(10));
				list.add(flo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 从订单界面添加到订单表中
	 */
	public boolean insertFoodByDingdan(Dingdan d) {
		String sql = "insert into dingdan () values (null,?,?,?,?,now(),?,?,?,1)";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(d.getDid());
		list.add(d.getU().getId());
		list.add(d.getFo().getId());
		list.add(d.getQty());
		list.add(d.getPrice());
		list.add(d.getTypeId());
		list.add(d.getE().getId());
		int row = executeUpdate(sql, list);
		return row > 0 ? true : false;
	}

	/**
	 * 购物车添加到订单界面后删除购物车表所有本用户相关商品订单号
	 */
	public boolean deleFid(int uid, int fid) {
		String sql = "delete  from Scart where uid=? and fid=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(uid);
		list.add(fid);
		int row = executeUpdate(sql, list);
		return row > 0 ? true : false;
	}
	
	

}
