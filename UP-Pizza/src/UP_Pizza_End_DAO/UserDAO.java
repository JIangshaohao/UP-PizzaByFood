package UP_Pizza_End_DAO;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Staff;

public class UserDAO extends BaseDAO {

	/**
	 * 验证管理员登录֤
	 */
	public Staff checkLogin(String name, String pwd) {
		Staff s = null;
		String sql = "select * from staff where name=? and pwd=? or email=? and pwd=? or tel=? and pwd=?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add(name);
		par.add(pwd);
		par.add(name);
		par.add(pwd);
		par.add(name);
		par.add(pwd);
		ResultSet rs = executeQuery(sql, par);
		try {
			if (rs.next()) {
				s = new Staff(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6),
						rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
				s.setImages(rs.getString(11));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return s;
	}

	/**
	 * 用户登录表
	 */
	public Customer checkCusLogin(String username, String pwd) {
		String Sql = "select * from customer where name=? and pwd=? or tel=? and pwd=? or email=? and pwd=?";
		Customer cus = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(pwd);
		params.add(username);
		params.add(pwd);
		params.add(username);
		params.add(pwd);
		ResultSet rs = executeQuery(Sql, params);
		try {
			if (rs.next()) {
				cus = new Customer(rs.getInt(1), rs.getString(2),
						rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getInt(6), rs.getInt(7), rs.getString(8),
						rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12));
				cus.setImages(rs.getString(13));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cus;

	}

	/**
	 * 使用Ajax判断邮箱是否可以使用
	 * @param eamil
	 * @return
	 */
	public boolean registerUE(String eamil) {
		String Sql = "select * from Customer where email=?";
		Customer cus = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(eamil);
		ResultSet rs = executeQuery(Sql, params);
		try {
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	/**
	 * 注册用户
	 * @param cus
	 * @return
	 */
	public boolean increase(Customer cus) {
		String Sql = "insert into customer values (default,?,?,?,?,1,1,default,default,?,?,?,default)";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(cus.getName());
		params.add(cus.getPwd());
		params.add(cus.getUserName());
		params.add(cus.getSex());
		params.add(cus.getTel());
		params.add(cus.getAddress());
		params.add(cus.getEmail());
		return executeUpdate(Sql, params) > 0 ? true : false;
	}
	
	
	/**
	 * 修改管理员信息
	 */
	public boolean updateinfo(Staff s){
		String sql="update staff set sex=?,userName=?,email=?,tel=?,birthday=?,address=? where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(s.getSex());
		params.add(s.getUserName());
		params.add(s.getEmail());
		params.add(s.getTel());
		params.add(s.getBirthday());
		params.add(s.getAddress());
		params.add(s.getId());
		int row=executeUpdate(sql, params);
		return row>0?true:false;
		
		
	}
	
	/**
	 * 根据id修改密码
	 */
	public boolean updatepwd(Staff s){
		String sql="update staff set pwd=? where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(s.getPwd());
		params.add(s.getId());
		int row=executeUpdate(sql, params);
		return row>0?true:false;
		
		
	}

}
