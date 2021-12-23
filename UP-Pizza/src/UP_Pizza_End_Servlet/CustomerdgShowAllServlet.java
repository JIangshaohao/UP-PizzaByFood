package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.DingdanDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Dingdan;

public class CustomerdgShowAllServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerdgShowAllServlet() {
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
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		DingdanDAO dg = new DingdanDAO();

		int pageNum = 1;
		int pageSize = 4;
		if (request.getParameter("pageNum") != null) {
			pageNum = Integer.parseInt(request.getParameter("pageNum"));
		}
		String tj = request.getParameter("tj");

		String date = request.getParameter("date");
		Customer cus = (Customer) request.getSession().getAttribute("cus");
		String names = request.getParameter("names");
		 int uid = cus.getId();
		//int uid = 1;
		if (request.getParameter("obj") != null) {
			ArrayList<Dingdan> dgitem = dg.selectDgAll(uid, tj, date, pageNum,
					pageSize, names);
			int count = dg.getCount(uid, tj, date, names);

			String result = net.sf.json.JSONSerializer.toJSON(dgitem)
					.toString();
			int aa = count % pageSize == 0 ? count / pageSize
					: (count / pageSize) + 1;
			response.getWriter().print(result + "$" + pageNum + "/" + aa);
		} else {
			ArrayList<Dingdan> dgitem = dg.selectDgAll(uid, null, "null",
					pageNum, pageSize, null);
			int count = dg.getCount(uid, null, null, null);

			request.setAttribute("dgitem", dgitem);
			request.setAttribute("count", count);
			request.setAttribute("pageSize", pageSize);
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("pageCount", count % pageSize == 0 ? count
					/ pageSize : (count / pageSize) + 1);
			request.getRequestDispatcher("Customer/jd_dg.jsp").forward(request,
					response);
			out.flush();
			out.close();
		}
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
