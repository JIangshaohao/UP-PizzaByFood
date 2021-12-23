package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.Product_SortDao;
import UP_Pizza_End_Entity.Breakfast;
import UP_Pizza_End_Entity.Drink;
import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Hanbao;
import UP_Pizza_End_Entity.Ice;
import UP_Pizza_End_Entity.Pizza;
import UP_Pizza_End_Entity.Sweets;

public class SelectAllHanbao extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SelectAllHanbao() {
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

		// String id=request.getAttribute(arg0);
		Product_SortDao ps = new Product_SortDao();
		int i = Integer.parseInt(request.getParameter("fid"));
		// int a = Integer.parseInt(request.getParameter("f"));
		System.out.println("i::" + i);
		// System.out.println("a::" + a);
		// request.getSession().setAttribute("fid", i);
		if (i == 0) {
			ArrayList<Food> list = ps.selectAllBreakfast();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("table", "hanbao");
		} /*
		 * else if (i==0&&a == 0) { ArrayList<Food> list =
		 * ps.selectUPBreakfast(); request.getSession().setAttribute("list",
		 * list); }else if (i==0&&a == 1) { ArrayList<Food> list =
		 * ps.selectOutBreakfast(); request.getSession().setAttribute("list",
		 * list); }
		 */else if (i == 1) {
			ArrayList<Food> list = ps.selectAllDrink();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("table", "breakfast");
		} else if (i == 2) {
			ArrayList<Food> list = ps.selectAllHanbao();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("table", "sweets");
		} else if (i == 3) {
			ArrayList<Food> list = ps.selectAllIce();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("table", "drink");
		} else if (i == 4) {
			ArrayList<Food> list = ps.SelectAllPizza();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("table", "pizza");
		} else if (i == 5) {
			ArrayList<Food> list = ps.SelectAllSweets();
			request.getSession().setAttribute("list", list);
			request.getSession().setAttribute("table", "ice");
		}
		response.sendRedirect("Manager/UP-Index/Products_List.jsp");
		// out.print(1);
		// response.sendRedirect("Manager/index.jsp");
		// request.getRequestDispatcher("../UP-Index/Products_List.jsp").forward(request,
		// response);
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
