package UP_Pizza_End_Service;

import java.util.ArrayList;
import java.util.List;

import UP_Pizza_End_DAO.AlsoDao;
import UP_Pizza_End_Entity.Also;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Staff;

public class AlsoService {

	AlsoDao also = new AlsoDao();
	
	
	//getAlsoCusInfoServlet01.java
	public List<Also> getLeftAlso(int customer,int staff){
		return also.getLeftAlso(customer,staff);
	}
	public List<Also> getRigthAlso(int Staff,int customer){
		return also.getRigthAlso(Staff,customer);
	}
	//getAlsoCusServlet01.java
	public ArrayList<Customer> getCustomer(){
		return also.getCustomer();
	}
	public ArrayList<Staff> getStaff(){
		return also.getStaff();
	}
	//getAlsogetCount.java
	public int getAlsoCount(int customer,int staff){
		return also.getAlsoCount(customer, staff);
	}
	public int getAlsoCount1(int customer,int staff){
		return also.getAlsoCount1(customer, staff);
	}
	//addAlsoServlet
	public boolean addAlsoinfo(Also as){
		return also.addAlsoinfo(as);
	}
}
