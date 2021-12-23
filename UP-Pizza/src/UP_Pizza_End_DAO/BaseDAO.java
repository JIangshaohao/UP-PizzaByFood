package UP_Pizza_End_DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * 连接数据库
 */
public class BaseDAO {
	private String driver = "com.mysql.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/pizza";
	private String user = "root";
	private String password = "";

	/**
	 * ��ȡ���Ӷ��󷽷�,����Connection����
	 */
	public Connection getConnection() {
		Connection conn = null;
		try {
			// ������
			Class.forName(driver);
			// ��ȡ���Ӷ���
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * ִ�����ӣ�ɾ���޸ĵķ��� ���� sql��� params���ṩsql���ռλ��Ĳ���ֵ ���أ���Ӱ�������
	 */
	public int executeUpdate(String sql, ArrayList<Object> params) {
		int row = 0;
		Connection conn = null;
		PreparedStatement psmt = null;
		try {
			// 1�����û�ȡ��������ȡ���Ӷ���
			conn = getConnection();
			// 2: ��ȡ������󣬷���sql���ṹ
			psmt = conn.prepareStatement(sql);
			// 3: �����ռλ������ռλ���ֵ
			if (params != null) {
				for (int i = 0; i < params.size(); i++) {
					psmt.setObject(i + 1, params.get(i));
				}
			}
			// 4: ִ��sql��䣬������Ӱ�������
			row = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			// 5: �ر�
			closeAll(conn, psmt, null);
		}
		return row;
	}

	/**
	 * ִ�в�ѯ�ķ���
	 * 
	 * @param sql
	 *            :��ѯsql���
	 * @param params
	 *            ��sql�����ռλ���ֵ
	 * @return �����ز�ѯ���Ľ��
	 */
	public ResultSet executeQuery(String sql, ArrayList<Object> params) {
		ResultSet rs = null;
		Connection conn = null;
		PreparedStatement psmt = null;
		try {
			// 1�����û�ȡ��������ȡ���Ӷ���
			conn = getConnection();
			// 2: ��ȡ������󣬷���sql���ṹ
			psmt = conn.prepareStatement(sql);
			// 3: �����ռλ������ռλ���ֵ
			if (params != null) {
				for (int i = 0; i < params.size(); i++) {
					psmt.setObject(i + 1, params.get(i));
				}
			}
			// 4: ִ��sql��䣬���ؽ��
			rs = psmt.executeQuery();
			// ע��:���ܹر����ӣ�����ȵ�����е���ݶ�ȡ��ɺ���ܹر�
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	/**
	 * �ر����Ӷ��󷽷�
	 */
	public void closeAll(Connection conn, Statement st, ResultSet rs) {
		// �ж��Ƿ�Ϊnull
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (st != null) {
			try {
				st.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public ResultSet executeQuery(String sql, ArrayList<Object> params,Connection conn,PreparedStatement psmt) {
		ResultSet rs = null;
	//	Connection conn = null;
		 	
		try {
			// 1     û ȡ        ȡ   Ӷ   
			//conn = getConnection();
			// 2:   ȡ      󣬷   sql   ṹ
			psmt = conn.prepareStatement(sql);
			// 3:      ռλ      ռλ   ֵ
			if (params != null) {
				for (int i = 0; i < params.size(); i++) {
					psmt.setObject(i + 1, params.get(i));
				}
			}
			// 4: ִ  sql  䣬   ؽ  
			rs = psmt.executeQuery();
			// ע  :   ܹر    ӣ     ȵ     е   ݶ ȡ  ɺ   ܹر 
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
		
	}

}
