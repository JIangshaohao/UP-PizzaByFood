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
import UP_Pizza_End_Entity.Dingdan;
import UP_Pizza_End_Entity.Expres;
import UP_Pizza_End_Entity.Scart;

public class CustomerMeauServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerMeauServlet() {
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
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		ArrayList<Scart> scartlist = (ArrayList<Scart>) session
				.getAttribute("scartlist");
		ChowDAO c = new ChowDAO();
		// 获取订单编号
		String did = request.getParameter("did");

		// 获取外卖商家编号
		Expres expres = new Expres();
		expres.setId(Integer.parseInt(request.getParameter("select_info")));
		// 获取用户
		Customer u = (Customer) session.getAttribute("cus");
		for (int i = 0; i < scartlist.size(); i++) {
			// 获取list集合的scart对象
			Scart scart = scartlist.get(i);
			Dingdan dingDan = new Dingdan();
			dingDan.setDid(did);
			dingDan.setE(expres);
			dingDan.setFo(scart.getF());
			dingDan.setPrice(scart.getF().getXprice() * scart.getQty());
			dingDan.setQty(scart.getQty());
			dingDan.setTypeId(scart.getF().getTypeId());
			dingDan.setU(u);
			c.insertFoodByDingdan(dingDan);
		}
		String qian=request.getParameter("qian");
		//System.out.println("前啊啊啊啊啊啊啊啊："+qian);
		request.setAttribute("qian", qian);
		request.getRequestDispatcher("Customer/zhifu.jsp").forward(request, response);

		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
