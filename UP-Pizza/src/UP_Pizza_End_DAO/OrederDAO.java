package UP_Pizza_End_DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Dingdan;
import UP_Pizza_End_Entity.Expres;
import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Type;

public class OrederDAO extends BaseDAO {
	/**
	 * 查询订单表所有的信息
	 */
	public ArrayList<Dingdan> selectAllDingdan() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a INNER JOIN customer AS b ON a.`uid`=b.`id` "
				+ "INNER JOIN food AS c ON a.`fid`=c.`id` INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id`";

		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 订单管理查询不同种类的食物，早餐
	 */
	public ArrayList<Dingdan> selectBreakfast() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` WHERE d.`type` = 1";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 订单管理查询不同种类的食物，饮料
	 */
	public ArrayList<Dingdan> selectDrink() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` WHERE d.`type` = 2";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 订单管理查询不同种类的食物，汉堡
	 */
	public ArrayList<Dingdan> selectHanbao() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` WHERE d.`type` = 3";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 订单管理查询不同种类的食物，冰淇淋
	 */
	public ArrayList<Dingdan> selectIce() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` WHERE d.`type` = 4";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 订单管理查询不同种类的食物，披萨
	 */
	public ArrayList<Dingdan> selectPizza() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` WHERE d.`type` = 5";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 订单管理查询不同种类的食物，冰淇淋
	 */
	public ArrayList<Dingdan> selectSweets() {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` WHERE d.`type` = 6";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询所有外卖商家
	 */
	public ArrayList<Expres> selectAllExpres() {
		String sql = "select * from express";
		ArrayList<Expres> list = new ArrayList<Expres>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Expres ae = new Expres(rs.getInt(1), rs.getString(2));
				list.add(ae);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 设置发货id为已发货
	 */
	public boolean updateSelectIdClose(int id) {
		String sql = "update dingdan set tid=2 where id=?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add(id);
		int row = executeUpdate(sql, par);
		return row > 0 ? true : false;
	}

	/**
	 * 查询订单表交易情况
	 */
	public ArrayList<Dingdan> selectQingkuang() {
		String sql = "SELECT id,did,jytime,price,tid FROM dingdan";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Dingdan d = new Dingdan(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getDouble(4), rs.getInt(5));
				list.add(d);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询当天订单
	 */
	public ArrayList<Dingdan> selectToday() {
		String sql = "SELECT id,did,jytime,price,tid FROM dingdan WHERE DATE(jytime) = CURDATE()";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Dingdan da = new Dingdan(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getDouble(4), rs.getInt(5));
				list.add(da);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 查询当月订单
	 */
	public ArrayList<Dingdan> selectMonth() {
		String sql = "SELECT id,did,jytime,price,tid FROM dingdan WHERE  DATE_FORMAT(jytime,'%Y-%m')=DATE_FORMAT(NOW(),'%Y-%m')";
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Dingdan da = new Dingdan(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getDouble(4), rs.getInt(5));
				list.add(da);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 根据输入的时间框内容来查询订单情况
	 */
	public ArrayList<Dingdan> selectTimeByThings(String did, String time) {
		String sql = "SELECT a.`id`,a.`did`,b.`userName`,c.`name`,a.`qty`,a.`jytime`,d.`name`,a.`price`,e.`expres`,a.`tid` FROM dingdan AS a "
				+ "INNER JOIN customer AS b ON a.`uid`=b.`id` INNER JOIN food AS c ON a.`fid`=c.`id` "
				+ "INNER JOIN `type` AS d ON a.`typeid`=d.`id` "
				+ "INNER JOIN express AS e ON a.`expid`=e.`id` "
				+ "WHERE a.`did`=? AND DATE_FORMAT(a.`jytime`,'%Y-%m-%d')=DATE_FORMAT(?,'%Y-%m-%d')";
		ArrayList<Object> params = new ArrayList<Object>();
		
		
		ArrayList<Dingdan> list = new ArrayList<Dingdan>();
		params.add(did);
		params.add(time);
		ResultSet rs = executeQuery(sql, params);
		try {
			while (rs.next()) {
				Food f = new Food();
				Expres e = new Expres();
				Type t = new Type();
				Dingdan d = new Dingdan();
				Customer c = new Customer();
				c.setUserName(rs.getString(3));
				f.setName(rs.getString(4));
				t.setName(rs.getString(7));
				e.setExpres(rs.getString(9));
				Dingdan din = new Dingdan(rs.getInt(1), rs.getString(2), c, f,
						rs.getInt(5), rs.getString(6), t, rs.getDouble(8), e,
						rs.getInt(10));
				// System.out.println(rs.getString(2));
				list.add(din);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
