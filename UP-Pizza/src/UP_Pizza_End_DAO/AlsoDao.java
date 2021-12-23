package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import UP_Pizza_End_Entity.Also;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Staff;

public class AlsoDao extends BaseDAOS{

	public List<Also> getLeftAlso(int customer,int staff){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		List<Also> list = new ArrayList<>();
		String sql = "select a.* from also a,customer b,staff c where a.goid = b.id and a.soid = c.id and c.id = ? and b.id = ? and qub=1 or a.goid = c.id and a.soid = b.id and b.id = ? and c.id = ? and qub=2";
		ArrayList<Object> params = new ArrayList<>();
		params.add(staff);
		params.add(customer);
		params.add(customer);
		params.add(staff);
		ResultSet rs = executeQuery(sql, params, conn, psmt);
		try {
			while(rs.next()){
				Also also = new Also(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5));
				list.add(also);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
		return list;
	}
	
	public List<Also> getRigthAlso(int Staff,int Customer){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		List<Also> list = new ArrayList<>();
		String sql = "select a.* from also a,customer b,staff c where a.goid = c.id and a.soid = b.id and b.id = ? and c.id = ? and qub=2;";
		ArrayList<Object> params = new ArrayList<>();
		params.add(Customer);
		params.add(Staff);
		ResultSet rs = executeQuery(sql, params, conn, psmt);
		try {
			while(rs.next()){
				Also also = new Also(rs.getString(1),rs.getString(2),rs.getInt(3),rs.getString(4),rs.getString(5));
				list.add(also);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
		return list;
	}
	
	public ArrayList<Customer> getCustomer(){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String sql = "select id,username,images from customer";
		ArrayList<Customer> list = new ArrayList<>();
		ResultSet rs = executeQuery(sql, null, conn, psmt);
		try {
			while(rs.next()){
				Customer cus = new Customer();
				cus.setId(rs.getInt(1));
				cus.setUserName(rs.getString(2));
				cus.setImages(rs.getString(3));
				list.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
		return list;
	}
	
	public ArrayList<Staff> getStaff(){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		String sql = "select id,username,images from staff";
		ArrayList<Staff> list = new ArrayList<>();
		ResultSet rs = executeQuery(sql, null, conn, psmt);
		try {
			while(rs.next()){
				Staff cus = new Staff();
				cus.setId(rs.getInt(1));
				cus.setUserName(rs.getString(2));
				cus.setImages(rs.getString(3));
				list.add(cus);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
		return list;
	}
	
	public int getAlsoCount(int customer,int staff){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		int count = 0;
		String sql = "select count(*) from also a,customer b,staff c where a.goid = b.id and a.soid = c.id and c.id = ? and b.id = ? and qub=1";
		ArrayList<Object> params = new ArrayList<>();
		params.add(staff);
		params.add(customer);
		ResultSet rs = executeQuery(sql, params, conn, psmt);
		try {
			while(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
		return count;
	}
	
	public int getAlsoCount1(int customer,int staff){
		Connection conn = getConnection();
		PreparedStatement psmt = null;
		int count = 0;
		String sql = "select count(*) from also a,customer b,staff c where a.goid = b.id and a.soid = c.id and c.id = ? and b.id = ? and qub=2";
		ArrayList<Object> params = new ArrayList<>();
		params.add(staff);
		params.add(customer);
		ResultSet rs = executeQuery(sql, params, conn, psmt);
		try {
			while(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			closeAll(conn, psmt, rs);
		}
		return count;
	}
	
	public boolean addAlsoinfo(Also also){
		String sql = "insert into also values(?,?,?,default,?)";
		ArrayList<Object> param = new ArrayList<>();
		param.add(also.getGoid());
		param.add(also.getSoid());
		param.add(also.getQub());
		param.add(also.getInfo());
		return executeUpdate(sql, param)>0;
	}
}
