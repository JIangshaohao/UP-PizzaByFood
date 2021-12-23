package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.Product_SortDao;

public class UpdateInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateInfoServlet() {
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
		Product_SortDao ps = new Product_SortDao();
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");	
		double yprice = Double.parseDouble(request.getParameter("yprice"));
		double xprice = Double.parseDouble(request.getParameter("xprice"));
		/*System.out.println("原价"+yprice);
		System.out.println("现价"+xprice);*/
		String imageNamess = request.getParameter("imageNamess");
		
		//System.out.println("图片名："+imageNamess);
		int typeId = Integer.parseInt(request.getParameter("typeId"));
		String info = request.getParameter("info");
		int saleNum = Integer.parseInt(request.getParameter("saleNum"));
		int tid = Integer.parseInt(request.getParameter("tid"));
		//System.out.println("禁用："+tid);
		boolean flag = ps.UpdateFoodInfo(name, yprice, xprice,
				imageNamess, typeId, info, saleNum,tid,id);
		out.print(flag);
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
