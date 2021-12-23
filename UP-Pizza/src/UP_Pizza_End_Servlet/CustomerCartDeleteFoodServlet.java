package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import UP_Pizza_End_DAO.ChowDAO;
import UP_Pizza_End_Entity.Customer;


public class CustomerCartDeleteFoodServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerCartDeleteFoodServlet() {
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

		// 获取要删除的购物项编号
		//System.out.println(request.getParameter("cid"));
		
		int cid = Integer.parseInt(request.getParameter("cid"));
		// 调用方法
		ChowDAO sc = new ChowDAO();
		sc.deleteCaritem(cid);

		// 重新获取数量和总价
		HttpSession s = request.getSession();
		Customer us = (Customer) s.getAttribute("cus");
	
		int count = sc.getCount(us.getId());
		double totalMoney = sc.getMoney(us.getId());
		String jsonStr = "{\"count\":" + count + ",\"totalMoney\":"
				+ totalMoney + "}";
		out.print(jsonStr);
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
