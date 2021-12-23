package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.ChowDAO;
import UP_Pizza_End_Entity.Food;

public class CustomerSeachFoodServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerSeachFoodServlet() {
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
		// 1.指定当前页
		int pageNum = 1;
		// 2.如果请求中带pageNum
		if (request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		// 3.定义页大小
		int pageSize = 9;// 每页显示4条
		// 4.访问数据库
		ChowDAO dao = new ChowDAO();
		String info = request.getParameter("info");
		System.out.println(info);
		ArrayList<Food> food = dao.selectBreakfastInfoByInfo(info, pageNum,
				pageSize);
		// 查询商品的总条数
		int count = dao.getCount();
		// 计算总页数
		int pageCount = count % pageSize == 0 ? count / pageSize : count
				/ pageSize + 1;

		// 5.将数据存储到作用域
		request.setAttribute("food", food);
		//System.out.println(food);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("pageCount", pageCount);
		// 6.跳转到主页面
		request.getRequestDispatcher("Customer/index-1.jsp").forward(request,
				response);
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
