package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import UP_Pizza_End_DAO.ChowDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Scart;


public class CustomerCartServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerCartServlet() {
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
		HttpSession s=request.getSession();
		//获取用户编号和商品编号
		Customer u=(Customer)s.getAttribute("cus");
		if(u==null){
			response.sendRedirect("Customer/Login.jsp");
			return;
		}

		int uid=u.getId();
		System.out.println(uid);
		//根据用户id获取对应的购物车
		ChowDAO sc=new ChowDAO();
		/*ArrayList<Scart> items=sc.selectUserAll(uid);*/
		ArrayList<Scart> items = sc.selectAll(uid);
		System.out.println(items);
		//获取总件数
		int count=sc.getCount(uid);
		//获取总金额
		double totalMoney=sc.getMoney(uid);
		//将数据放入作用域
		request.setAttribute("items", items);		
		request.setAttribute("count", count);
		request.setAttribute("totalMoney", totalMoney);
		
		request.getRequestDispatcher("Customer/ShoppingCart.jsp").forward(request, response);;
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
