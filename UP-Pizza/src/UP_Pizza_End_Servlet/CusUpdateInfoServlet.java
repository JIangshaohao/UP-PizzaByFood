package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import UP_Pizza_End_DAO.UserDAOS;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Service.UserService;

public class CusUpdateInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CusUpdateInfoServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

			this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		UserDAOS us=new UserDAOS();
		
		if(request.getParameter("load")!=null)
		{
			int load = Integer.parseInt(request.getParameter("load"));
			Customer cust = us.selectCusById(load);
			//session.setAttribute("load", cust);
			
			String custJson="{\"name\":\""+cust.getName()+"\",\"username\":\""+cust.getUserName()+"\",\"sex\":\""+cust.getSex()+"\",\"tel\":\""+cust.getTel()+"\",\"birthday\":\""+cust.getBirthday()+"\",\"email\":\""+cust.getEmail()+"\",\"address\":\""+cust.getAddress()+"\",\"tid\":\""+cust.getTid()+"\"}";
			out.print(custJson);
		}
		if(request.getParameter("up")!=null){
		Customer cus = new Customer();
		cus.setName(request.getParameter("name"));
		cus.setUserName(request.getParameter("username"));
		cus.setSex(request.getParameter("sex"));
		cus.setBirthday(request.getParameter("thday"));
		cus.setTel(request.getParameter("tel"));
		cus.setEmail(request.getParameter("email"));
		cus.setAddress(request.getParameter("address"));
		cus.setTid(Integer.parseInt(request.getParameter("tid")));
		cus.setId(Integer.parseInt(request.getParameter("id")));
		boolean f = us.updateCusInfo(cus);
		out.print(f);
		}
		
		//boolean flag = us.updateCusInfo(cus);
		//out.print(flag);
			out.flush();
			out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
