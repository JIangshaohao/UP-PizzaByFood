package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Type;

public class FoodDAO extends BaseDAOS {

	public Food selectFoodById(int fid) {
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		Food food = null;
		String Sql = "select * from food where id = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(fid);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while (rs.next()) {
				food = new Food();
				food.setId(rs.getInt("id"));
				food.setName(rs.getString("name"));
				food.setYprice(rs.getDouble("yprice"));
				food.setXprice(rs.getDouble("xprice"));
				food.setImageName(rs.getString("imageName"));
				food.setTypeId(rs.getInt("typeId"));
				food.setInfo(rs.getString("info"));
				food.setSaleNum(rs.getInt("saleNum"));
				food.setTime(rs.getString("time"));
				food.setTid(rs.getInt("tid"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll(conn, null, rs);
		}
		return food;
	}

	public ArrayList<Food> selectFoodBytype(int type) {
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select * from food where typeId = ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(type);
		ArrayList<Food> list = new ArrayList<Food>();
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			while (rs.next()) {
				Food food = new Food();
				food.setId(rs.getInt("id"));
				food.setName(rs.getString("name"));
				food.setYprice(rs.getDouble("yprice"));
				food.setXprice(rs.getDouble("xprice"));
				food.setImageName(rs.getString("imageName"));
				food.setTypeId(rs.getInt("typeId"));
				food.setInfo(rs.getString("info"));
				food.setSaleNum(rs.getInt("saleNum"));
				food.setTime(rs.getString("time"));
				food.setTid(rs.getInt("tid"));
				list.add(food);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeAll(conn, null, rs);
		}
		return list;
	}
}
