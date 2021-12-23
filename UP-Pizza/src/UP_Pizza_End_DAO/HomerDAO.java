package UP_Pizza_End_DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.Customer;

public class HomerDAO extends BaseDAO{
/**
 * 查询商城所有用户
 */
	public int selectAllUser(){
		int count=0;
		String sql="select count(*) from customer";
		ArrayList<Customer> list=new ArrayList<Customer>();
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				count=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return count;
	}
	
	/**
	 * 查询交易成功的数量
	 */
	public int selectAllSuccess(){
		int counts=0;
		String sql="SELECT COUNT(*) FROM outinfo WHERE tktid=1";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询订单所有的交易的金额
	 */
	public int selectAllDingdanMoney(){
		int counts=0;
		String sql="SELECT SUM(price) FROM dingdan";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询所有的订单数量
	 */
	public int selectAllDingdanCount(){
		int counts=0;
		String sql="SELECT count(*) FROM dingdan";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询未出餐的订单
	 */
	public int selectAllNoOutDingdan(){
		int counts=0;
		String sql="SELECT count(*) FROM dingdan where tid=1";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询待退款的数量
	 */
	public int selectAllTuikuan(){
		int counts=0;
		String sql="SELECT COUNT(*) FROM outinfo WHERE tktid=1";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询已成交订单
	 */
	public int selectAllChengjiao(){
		int counts=0;
		String sql="SELECT COUNT(*) FROM outinfo";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询交易失败订单
	 */
	public int selectAllNoDingdan(){
		int counts=0;
		String sql="SELECT COUNT(*) FROM outinfo WHERE tktid=2";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	/**
	 * 查询交易失败订单总金额
	 */
	public int selectAllNoDingdanNoMoney(){
		int counts=0;
		String sql="SELECT SUM(price) FROM outinfo WHERE tktid=2";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	
	
	
	/**
	 * 查询所有已上架商品
	 */
	public int selectAllshangjia(){
		int counts=0;
		String sql="SELECT COUNT(*) FROM food WHERE tid=1";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	
	/**
	 * 查询所有已下架商品
	 */
	public int selectAllxiajia(){
		int counts=0;
		String sql="SELECT COUNT(*) FROM food WHERE tid=2";
		ResultSet rs=executeQuery(sql, null);
		try {
			if(rs.next()){
				counts=rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return counts;
	}
	
	
	
	
	
}
