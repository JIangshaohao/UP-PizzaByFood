package UP_Pizza_End_Service;

import UP_Pizza_End_DAO.UserDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Staff;

public class UserService {
	UserDAO u = new UserDAO();

	/**
	 * �жϹ���Ա�Ƿ���ȷ,���е�¼��֤
	 */
	public Staff checkLogin(String name, String pwd) {
		return u.checkLogin(name, pwd);

	}
	
	
	
	/**
	 * ע���û��ķ���
	 */
	public Customer checkCusLogin(String username, String pwd) {
		return u.checkCusLogin(username, pwd);
		
	}
	
	
	/**
	 * ʹ��Ajax�ж������Ƿ������
	 * @param eamil
	 * @return
	 */
	public boolean registerUE(String eamil) {
		return u.registerUE(eamil);
		
	}
	
	/**
	 * ע���û��ķ���
	 * @param cus
	 * @return
	 */
	public boolean increase(Customer cus) {
		return u.increase(cus);
		
	}
}
