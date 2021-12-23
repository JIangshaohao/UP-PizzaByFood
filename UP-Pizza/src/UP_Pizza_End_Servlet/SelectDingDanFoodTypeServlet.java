package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.OrederDAO;
import UP_Pizza_End_Entity.Dingdan;

public class SelectDingDanFoodTypeServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SelectDingDanFoodTypeServlet() {
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
		OrederDAO o = new OrederDAO();
		int ia = Integer.parseInt(request.getParameter("f"));
		System.out.println(ia);
		if (ia == 0) {
			//System.out.println("执行了汉堡查询");
			ArrayList<Dingdan> par = o.selectHanbao();
			request.setAttribute("listas", par);
			// System.out.println(par);
		} else if (ia == 1) {
			ArrayList<Dingdan> par = o.selectDrink();
			request.setAttribute("listas", par);
		} else if (ia == 2) {
			ArrayList<Dingdan> par = o.selectBreakfast();
			request.setAttribute("listas", par);
		} else if (ia == 3) {
			ArrayList<Dingdan> par = o.selectPizza();
			request.setAttribute("listas", par);
		} else if (ia == 4) {
			ArrayList<Dingdan> par = o.selectIce();
			request.setAttribute("listas", par);
		} else if (ia == 5) {
			ArrayList<Dingdan> par = o.selectSweets();
			request.setAttribute("listas", par);
		}

		// response.sendRedirect("Manager/UP-Index/Orderform.jsp");
		request.getRequestDispatcher("Manager/UP-Index/Orderform.jsp").forward(
				request, response);
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
