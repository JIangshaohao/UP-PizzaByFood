package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.RecentlyRemoveDAO;
import UP_Pizza_End_DAO.ScartDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.RecentlyRemove;
import UP_Pizza_End_Entity.Scart;

public class CustomerScartRemoveServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerScartRemoveServlet() {
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
		response.setContentType("text/html;charset=UTF-8");
		int id = Integer.parseInt(request.getParameter("id"));
		int fid = Integer.parseInt(request.getParameter("fid"));
		Customer customer = (Customer) request.getSession().getAttribute("cus");
		// int uid = customer.getId();
		int uid = customer.getId();
		System.out.println(uid);
		ScartDAO cs = new ScartDAO();
		RecentlyRemoveDAO resc = new RecentlyRemoveDAO();
		RecentlyRemove re = resc.selectRecenextits(uid, fid);
		Scart scrt = cs.selectById(id);
		boolean flag = cs.deleteScart(id);
		boolean fg = false;
		if (re != null) {
			fg = resc.updateRecently((re.getQry() + scrt.getQty()),
					(scrt.getQty() + re.getQry()) * scrt.getF().getXprice(),
					re.getRid());
		} else {
			fg = resc.addRecently(scrt);
		}
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
