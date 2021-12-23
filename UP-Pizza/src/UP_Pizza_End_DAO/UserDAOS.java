package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Staff;

public class UserDAOS extends BaseDAOS{

	/**
	 * �жϹ���Ա�Ƿ���ȷ,���е�¼��֤
	 */
	public Staff checkLogin(String name, String pwd) {
		Staff s = null;
		Connection conn = getConnection();
		PreparedStatement statement=null;
		// sql���
		String sql = "select * from b_user where name=? and pwd=?";
		ArrayList<Object> par = new ArrayList<Object>();
		par.add(name);
		par.add(pwd);
		// ����basedao�ķ���
		ResultSet rs = executeQuery(sql, par,conn,statement);
		try {
			if (rs.next()) {
				s = new Staff(rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6),rs.getString(7),rs.getString(8));
			}
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		
		return s;
	}
	
	public Customer checkCusLogin(String username,String pwd)
	{
		/*String Sql="select * from customer where name=? and pwd=?";
		Customer cus = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(pwd);
		ResultSet rs = executeQuery(Sql, params);
		try {
			if(rs.next())
			{
				System.out.println(123);
				cus = new Customer(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getInt(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cus; */
		Connection conn = getConnection();
		PreparedStatement statement=null;
		String Sql="select * from customer where name=? and pwd=? or tel=? and pwd=? or email=? and pwd=?";
		Customer cus = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(pwd);
		params.add(username);
		params.add(pwd);
		params.add(username);
		params.add(pwd);
		ResultSet rs = executeQuery(Sql, params,conn,statement);
		try {
			if(rs.next())
			{
				cus = new Customer(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getInt(6),rs.getString(7),rs.getString(8),rs.getString(9),rs.getString(10));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		
		return cus;
		
	}
	
	//查询用户是否禁用
	public boolean checkCustomerTid(String username,String pwd)
	{

		Connection conn = getConnection();
		PreparedStatement statement=null;
		String Sql="select tid from customer where name=? and pwd=? or tel=? and pwd=? or email=? and pwd=?";
		Customer cus = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(username);
		params.add(pwd);
		params.add(username);
		params.add(pwd);
		params.add(username);
		params.add(pwd);
		int tid = 0;
		ResultSet rs = executeQuery(Sql, params,conn,statement);
		try {
			if(rs.next())
			{
				tid = rs.getInt(1);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rs);
		}
		
		return tid==1?true:false;
		
	}
	
	public boolean registerUE(String eamil)
	{
		Connection conn = getConnection();
		PreparedStatement statement=null;
		String Sql="select * from Customer where email=?";
		Customer cus = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(eamil);
		ResultSet rs = executeQuery(Sql, params,conn,statement);
		try {
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public boolean increase(Customer cus)
	{
		String Sql="insert into Customer values(default,?,?,?,1,default,?,?,?)";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(cus.getName());
		params.add(cus.getPwd());
		params.add(cus.getUserName());
		params.add(cus.getTel());
		params.add(cus.getAddress());
		params.add(cus.getEmail());
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	//查询用户信息分页
	public ArrayList<Customer> selectCusPageAll(int pageNum,int pageSize)
	{	
		Connection conn = getConnection();
		PreparedStatement statement=null;
		String Sql="select * from customer limit ? , ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add((pageNum-1)*pageSize);
		params.add(pageSize);
		ArrayList<Customer> pageList = new ArrayList<Customer>();
		ResultSet rsSet = executeQuery(Sql, params,conn,statement);
		try {
			while(rsSet.next())
			{
				Customer cus = new Customer(
						 rsSet.getInt(1),rsSet.getString(2),rsSet.getString(3),rsSet.getString(4),rsSet.getString(5)
						,rsSet.getInt(6),rsSet.getInt(7),rsSet.getString(8),rsSet.getString(9),rsSet.getString(10),rsSet.getString(11),rsSet.getString(12)
				);
				pageList.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rsSet);
		}
		
		
		return pageList;
		
	}
	
	//获取用户数量
	public int getCusCount(String seach)
	{
		PreparedStatement statement=null;
		Connection conn = getConnection();
		int count=0;
		String Sql="select count(*) from Customer";
		ArrayList<Object> params = new ArrayList<Object>();
		if(seach!=null)
		{
			Sql+=" where username like ? '%' or tel like ? '%'  or email like ? '%'";
			params.add(seach);
			params.add(seach);
			params.add(seach);
		}
		ResultSet rs = executeQuery(Sql, params,conn,statement);
		try {
			if(rs.next())
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
	
	//用户列表 模糊查
	public ArrayList<Customer> selectCusPageBy(int pageNum,int pageSize,String search)
	{
		Connection conn = getConnection();
		PreparedStatement statement=null;
		String Sql="select * from Customer where username like ? '%' or tel like ? '%'  or email like ? '%'  limit ? , ?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(search);
		params.add(search);
		params.add(search);
		params.add((pageNum-1)*pageSize);
		params.add(pageSize);
		ArrayList<Customer> pageList = new ArrayList<Customer>();
		ResultSet rsSet = executeQuery(Sql, params,conn,statement);
		try {
			while(rsSet.next())
			{
				Customer cus = new Customer(
						 rsSet.getInt(1),rsSet.getString(2),rsSet.getString(3),rsSet.getString(4),rsSet.getString(5)
						,
						rsSet.getInt(6),rsSet.getInt(7),rsSet.getString(8),rsSet.getString(9),rsSet.getString(10),rsSet.getString(11),rsSet.getString(12)
				);
				pageList.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rsSet);
		}
		
		return pageList;
		
	}
	
	//用户列表页 根据id删除用户
	public boolean deleteCusById(int id)
	{
		String Sql="delete from Customer where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	//用户列表页 根据id禁用用户
	public boolean updateCusTidById(int id,int tid)
	{
		String Sql="update Customer set tid=? where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tid);
		params.add(id);
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	//用户列表页 修改用户基本信息
	public boolean updateCusInfo(Customer cus)
	{
		String Sql="update Customer set name=?,username=?,sex=?,birthday=?,tel=?,email=?,address=?,tid=? where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(cus.getName());
		params.add(cus.getUserName());
		params.add(cus.getSex());
		params.add(cus.getBirthday());
		params.add(cus.getTel());
		params.add(cus.getEmail());
		params.add(cus.getAddress());
		params.add(cus.getTid());
		params.add(cus.getId());
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	//根据用户编号查询用户信息
	public Customer selectCusById(int id)
	{
		Connection conn = getConnection();
		PreparedStatement statement=null;
		String Sql="select * from Customer where id=?";
		Customer cus =null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(id);
		ResultSet rsSet = executeQuery(Sql, params,conn,statement);
		try {
			if(rsSet.next())
			{
				 cus = new Customer(
						 rsSet.getInt(1),rsSet.getString(2),rsSet.getString(3),rsSet.getString(4),rsSet.getString(5)
						,
						rsSet.getInt(6),rsSet.getInt(7),rsSet.getString(8),rsSet.getString(9),rsSet.getString(10),rsSet.getString(11),rsSet.getString(12)
				);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rsSet);
		}
		return cus;
	}
	
	//用户列表页  批量删除
	public boolean deletesCustomer(String ids)
	{
		String Sql="delete from Customer where id=?";
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(Integer.parseInt(ids));
		return executeUpdate(Sql, params)>0?true:false;
	}
	
	public ArrayList<Customer> selectCusItems(String tj)
	{
		String Sql="select * from Customer where username like ? '%' or tel like ? '%'  or email like ? '%'";
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tj);
		params.add(tj);
		params.add(tj);
		ResultSet rsSet = executeQuery(Sql, params, conn, psmt);
		ArrayList<Customer> list = new ArrayList<Customer>();
		try {
			while(rsSet.next())
			{
				Customer cus = new Customer(
						 rsSet.getInt(1),rsSet.getString(2),rsSet.getString(3),rsSet.getString(4),rsSet.getString(5)
						,
						rsSet.getInt(6),rsSet.getInt(7),rsSet.getString(8),rsSet.getString(9),rsSet.getString(10),rsSet.getString(11),rsSet.getString(12)
				);
				list.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rsSet);
		}
		return list;
		
	}
	
	//条件查询分页
	public ArrayList<Customer> selectPageByTj(String tj)
	{
		String Sql="select * from Customer where username like '%' ? '%' or tel like '%' ? '%'  or email like '%' ? '%'";
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		ArrayList<Object> params = new ArrayList<Object>();
		params.add(tj);
		params.add(tj);
		params.add(tj);
		ResultSet rsSet = executeQuery(Sql, params, conn, psmt);
		ArrayList<Customer> list = new ArrayList<Customer>();
		try {
			while(rsSet.next())
			{
				Customer cus = new Customer(
						 rsSet.getInt(1),rsSet.getString(2),rsSet.getString(3),rsSet.getString(4),rsSet.getString(5)
						,
						rsSet.getInt(6),rsSet.getInt(7),rsSet.getString(8),rsSet.getString(9),rsSet.getString(10),rsSet.getString(11),rsSet.getString(12)
				);
				list.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, null, rsSet);
		}
		return list;
		
	}
	
	public boolean select_CusID_IF_Extis(int uid){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String Sql = "select * from Customer where id = ?";
		ArrayList<Object> params = new ArrayList<>();
		params.add(uid);
		ResultSet rs = executeQuery(Sql, params, conn, psmt);
		try {
			if(rs.next()){
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	
	
}
