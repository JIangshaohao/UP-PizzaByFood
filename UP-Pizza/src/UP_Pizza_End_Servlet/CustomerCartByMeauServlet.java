package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UP_Pizza_End_DAO.ChowDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Scart;

public class CustomerCartByMeauServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerCartByMeauServlet() {
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
		ChowDAO c = new ChowDAO();
		String fids = request.getParameter("fids");

		double mo = Double.parseDouble(request.getParameter("money"));
		 System.out.println("mo"+mo);
		// System.out.println(fids);
		HttpSession s = request.getSession();
		// 获取用户编号和商品编号
		Customer u = (Customer) s.getAttribute("cus");
		ArrayList<Scart> list = c.selectAll(u.getId());
		String[] arr = null;
		// 如果fid数量大于1，拆分，否则返回这一个fid
		if (fids.length() > 1) {
			arr = fids.split(",");
		} else {
			arr = new String[] { fids };
		}
		ArrayList<Scart> scartlist = new ArrayList<Scart>();
		for (int i = 0; i < arr.length; i++) {
			// 获取食物编号
			int fid = Integer.parseInt(arr[i]);
			// System.out.println("fid"+fid);
			// 根据食物编号遍历购物车的食物
			for (int j = 0; j < list.size(); j++) {
				Scart scart = list.get(j);
				if (scart.getF().getId() == fid) {
					scartlist.add(scart);

				}
			}
		}
		HttpSession session = request.getSession();
		session.setAttribute("scartlist", scartlist);
		 request.setAttribute("mo", mo);
		request.getRequestDispatcher("Customer/CheckOut.jsp").forward(request,
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
