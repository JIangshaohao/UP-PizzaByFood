package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSON;

import UP_Pizza_End_DAO.Product_SortDao;
import UP_Pizza_End_Entity.Food;

public class ShowUpdateInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public ShowUpdateInfoServlet() {
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
		Product_SortDao ps = new Product_SortDao();
		int ids = Integer.parseInt(request.getParameter("load"));

		System.out.println(ids);
		/*
		 * request.getParameter("name");
		 * Double.parseDouble(request.getParameter("yprice"));
		 * Double.parseDouble(request.getParameter("xprice"));
		 * request.getParameter("info");
		 * Integer.parseInt(request.getParameter("saleNum"));
		 * Integer.parseInt(request.getParameter("typeId"));
		 * request.getParameter("imageName");
		 * Integer.parseInt(request.getParameter("tid"));
		 */
		ArrayList<Food> lista = ps.selectFoodById(ids);
		
		String jsonString = JSON.toJSONString(lista);
		
		System.out.println(jsonString);
		
		out.print(jsonString);
		//response.sendRedirect("Manager/UP-Index/Products_List.jsp");

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
