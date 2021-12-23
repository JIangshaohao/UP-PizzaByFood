package UP_Pizza_End_DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import UP_Pizza_End_Entity.Breakfast;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Drink;
import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Hanbao;
import UP_Pizza_End_Entity.Ice;
import UP_Pizza_End_Entity.Picture;
import UP_Pizza_End_Entity.Pizza;
import UP_Pizza_End_Entity.Type;
import UP_Pizza_End_Entity.Sweets;

public class Product_SortDao extends BaseDAO {

	/**
	 * 查询所有汉堡信息
	 * 
	 * 
	 */
	public ArrayList<Food> selectAllHanbao() {
		Food h = null;
		String sql = "select * from food where typeId=3";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				h = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询所有早餐信息
	 * 
	 * 
	 */
	public ArrayList<Food> selectAllBreakfast() {
		Food h = null;
		String sql = "select * from food where typeId=1";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				h = new Food(rs.getInt(1), rs.getString(2),
						rs.getDouble(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8),
						rs.getString(9), rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询所有饮料信息
	 * 
	 * 
	 */
	public ArrayList<Food> selectAllDrink() {
		Food h = null;
		String sql = "select * from food where typeId=2";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				h = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询所有冰淇淋信息
	 * 
	 * 
	 */
	public ArrayList<Food> selectAllIce() {
		Food h = null;
		String sql = "select * from food where typeId=4";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				h = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询所有甜点信息
	 * 
	 * 
	 */
	public ArrayList<Food> SelectAllSweets() {
		Food h = null;
		String sql = "select * from food where typeId=6";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				h = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 查询所有披萨
	 * 
	 * 
	 */
	public ArrayList<Food> SelectAllPizza() {
		Food h = null;
		String sql = "select * from food where typeId=5";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				h = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}
	
	/**
	 * 查询food表所有条数
	 */
	public int SelectAllFood() {
		int count=0;
		String sql = "select count(*) from food";
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				count=rs.getInt(1);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;

	}
	
	/**
	 * 查询food表所有数据
	 */
	public ArrayList<Food> selectAllFoodCount() {
		ArrayList<Food> list = new ArrayList<Food>();
		String sql = "select * from Food";
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Food h = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(h);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}
	

	/**
	 * 查询所有类别
	 */
	public ArrayList<Type> selectAllType() {
		ArrayList<Type> list = new ArrayList<Type>();
		String sql = "select * from type";
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				Type ty = new Type(rs.getInt(1), rs.getInt(2), rs.getString(3));
				list.add(ty);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}

	/**
	 * 根据id删除所选商品id
	 * 
	 */
	public boolean dele(int id) {
		String sql = "delete from food where id=?";
		ArrayList<Object> par = new ArrayList<Object>();	
		par.add(id);
		int row = executeUpdate(sql, par);
		return row > 0 ? true : false;

	}

	/**
	 * 将所选中商品id变为禁用
	 */
	public boolean updateSelectIdClose(int id) {
		String sql = "update food set tid=2 where id=?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add(id);
		int row = executeUpdate(sql, par);
		return row > 0 ? true : false;
	}

	/**
	 * 将所选中商品id变为启用
	 */
	public boolean updateSelectIdOpen(int id) {
		String sql = "update food set tid=1 where id=?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add(id);
		int row = executeUpdate(sql, par);
		return row > 0 ? true : false;
	}

	/**
	 * 分页查询
	 */
	public ArrayList<Object> selectByPage( int pageNum,
			int pageSize) {
		ArrayList<Object> list = new ArrayList<Object>();
		String sql = "select * from food limit ?,?";
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
	 * 增加食物的方法
	 */
	public int insertFood( String name, double yprice,
			double xprice, String imagesName, int typeid, String info,
			int saleNum, int tid) {
		ArrayList<Object> list = new ArrayList<Object>();
		String sql = "insert into food values(null,?,?,?,?,?,?,?,now(),?)";
		list.add(name);
		list.add(yprice);
		list.add(xprice);
		list.add(imagesName);
		list.add(typeid);
		list.add(info);
		list.add(saleNum);
		list.add(tid);
		int row = executeUpdate(sql, list);
		return row;

	}

	/**
	 * 查询图标，展示数据
	 */
	public ArrayList<Picture> selectAllPicture() {
		Picture p = null;
		String sql = "select * from picture";
		ArrayList<Picture> list = new ArrayList<Picture>();
		ResultSet rs = executeQuery(sql, null);
		try {
			while (rs.next()) {
				p = new Picture(rs.getInt(1), rs.getString(2),rs.getString(3), rs.getString(4),
						rs.getString(5));
				list.add(p);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 批量删除
	 * 
	 * @param ids
	 * @return
	 */
	public boolean deletesFood(String ids) {
		String sql = "delete from food where id=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(Integer.parseInt(ids));
		int row = executeUpdate(sql, list);
		return row > 0 ? true : false;

	}

	// 根据食物哪个食物表来修改食物信息
	public boolean UpdateFoodInfo(String name,double yprice,double xprice,String imageName,int typeId,String info,int saleNum,int tid,int id) {
		ArrayList<Object> list = new ArrayList<Object>();
		String sql = "update food set name=?,yprice=?,xprice=?,imageName=?,typeId=?,info=?,saleNum=?,tid=? where id=?";
		list.add(name);
		list.add(yprice);
		list.add(xprice);
		list.add(imageName);
		list.add(typeId);
		list.add(info);
		list.add(saleNum);
		list.add(tid);
		list.add(id);
		int row = executeUpdate(sql, list);
		return row > 0 ? true : false;

	}

	/* 根据食物id来获取对应的信息
	public ArrayList<Object> selectFoodById(String table, int id) {

		String sql = "select * from ";
		sql += table + " where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		ResultSet rsSet = executeQuery(sql, params);
		Food food = null;
		switch (table) {
		case "hanbao":
			food = new Hanbao();
			break;
		case "breakfast":
			food = new Breakfast();
			break;
		case "ice":
			food = new Ice();
			break;
		case "sweets":
			food = new Sweets();
			break;
		case "drink":
			food = new Drink();
			break;
		case "pizza":
			food = new Pizza();
			break;

		}
		ArrayList<Object> list = new ArrayList<Object>();
		try {

			while (rsSet.next()) {
				food.setId(rsSet.getInt(1));
				food.setName(rsSet.getString(2));
				food.setYprice(rsSet.getDouble(3));
				food.setXprice(rsSet.getDouble(4));
				food.setImageName(rsSet.getString(5));
				food.setTypeId(rsSet.getInt(6));
				food.setInfo(rsSet.getString(7));
				food.setSaleNum(rsSet.getInt(8));
				food.setTime(rsSet.getString(9));
				food.setTid(rsSet.getInt(10));
				list.add(food);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}*/
	
	public ArrayList<Food> selectFoodById(int id) {

		String sql = "select * from food where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		ResultSet rsSet = executeQuery(sql, params);
		Food food = null;
		ArrayList<Food> list = new ArrayList<Food>();
		try {

			while (rsSet.next()) {
				food=new Food();
				food.setId(rsSet.getInt(1));
				food.setName(rsSet.getString(2));
				food.setYprice(rsSet.getDouble(3));
				food.setXprice(rsSet.getDouble(4));
				food.setImageName(rsSet.getString(5));
				food.setTypeId(rsSet.getInt(6));
				food.setInfo(rsSet.getString(7));
				food.setSaleNum(rsSet.getInt(8));
				food.setTime(rsSet.getString(9));
				food.setTid(rsSet.getInt(10));
				list.add(food);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}
	
	
	
	
	/**
	 * 修改meaus的数据
	 */
	public boolean updateMeausInfo(int id,String picture,String name,String info,String face){
		String sql="update picture set picture=?,title=?,info=?,face=? where id=?";
		ArrayList<Object> list=new ArrayList<Object>();
		list.add(picture);
		list.add(name);
		list.add(info);
		list.add(face);
		list.add(id);
		int row=executeUpdate(sql, list);
		return row>0?true:false;
		
	}
	
	/**
	 * 根据id展示meaus的数据
	 */
	public ArrayList<Object> selectPicture(int id){
		Picture p=null;
		String sql="select * from picture where id=?";
		ArrayList<Object> list=new ArrayList<Object>();
		list.add(id);
		ResultSet rs=executeQuery(sql, list);
		try {
			while(rs.next()){
				p=new Picture(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				list.add(p);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
	/**
	 * 展示上架早餐啊信息
	 */
	public ArrayList<Food> selectUPBreakfast(){
		Food f=null;
		String sql="select * from food where typeId=1 and tid=1";
		ArrayList<Food> list=new ArrayList<Food>();
		ResultSet rs=executeQuery(sql, null);
		try {
			while(rs.next()){
				f = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
	/**
	 * 展示下架早餐啊信息
	 */
	public ArrayList<Food> selectOutBreakfast(){
		Food f=null;
		String sql="select * from food where typeId=1 and tid=2";
		ArrayList<Food> list=new ArrayList<Food>();
		ResultSet rs=executeQuery(sql, null);
		try {
			while(rs.next()){
				f = new Food(rs.getInt(1), rs.getString(2), rs.getDouble(3),
						rs.getDouble(4), rs.getString(5), rs.getInt(6),
						rs.getString(7), rs.getInt(8), rs.getString(9),
						rs.getInt(10));
				list.add(f);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
		
	}
	
	
	
	/**
	 * 根据食物id查询相应所有的记录
	 */

	public Food selectById(int id) {//ChowDAO调用
		Food flo = null;
		String sql = "select * from Food where id=?";
		ArrayList<Object> list = new ArrayList<Object>();
		list.add(id);
		ResultSet rs = executeQuery(sql, list);
		try {
			if (rs.next()) {
				flo = new Food(rs.getInt(1), rs.getString(2),
						rs.getDouble(3), rs.getDouble(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8),
						rs.getString(9), rs.getInt(10));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flo;
	}
	

}
