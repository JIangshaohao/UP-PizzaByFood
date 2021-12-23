package UP_Pizza_End_Service;

import UP_Pizza_End_DAO.UserDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Staff;

public class UserService {
	UserDAO u = new UserDAO();

	/**
	 * 判断管理员是否正确,进行登录验证
	 */
	public Staff checkLogin(String name, String pwd) {
		return u.checkLogin(name, pwd);

	}
	
	
	
	/**
	 * 注册用户的方法
	 */
	public Customer checkCusLogin(String username, String pwd) {
		return u.checkCusLogin(username, pwd);
		
	}
	
	
	/**
	 * 使用Ajax判断邮箱是否可以用
	 * @param eamil
	 * @return
	 */
	public boolean registerUE(String eamil) {
		return u.registerUE(eamil);
		
	}
	
	/**
	 * 注册用户的方法
	 * @param cus
	 * @return
	 */
	public boolean increase(Customer cus) {
		return u.increase(cus);
		
	}
}
