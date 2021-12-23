package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UP_Pizza_End_DAO.UserDAOS;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Service.UserService;

public class CustPageServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustPageServlet() {
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
	 * @throws ServletException if an error occurr	ed
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

			
			response.setContentType("text/html;charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			HttpSession session = request.getSession();
			request.setCharacterEncoding("utf-8");
			int pageNum = 1;
			int pageSize = 5;
			if(request.getParameter("pageNum")!=null)
			{
				pageNum = Integer.parseInt(request.getParameter("pageNum"));
			}
			if(request.getParameter("pageSize")!=null)
			{
				pageSize = Integer.parseInt(request.getParameter("pageSize"));
			}
			if(pageNum<1)
			{
				pageNum = 1;
			}
			
			UserDAOS us=new UserDAOS();
			int count = us.getCusCount(null);
			ArrayList<Customer> custList = us.selectCusPageAll(pageNum, pageSize);
			if(request.getParameter("seach")!=null)
			{			
				String seach = request.getParameter("seach");
				ArrayList<Customer> custLists = us.selectCusPageBy(pageNum, pageSize, seach);
				count = 0;
				custList = null;
				count = us.getCusCount(seach);
				custList = custLists;
				session.setAttribute("seach", seach);
			}
			
			/*if(pageNum>(count%pageSize==0?count/pageSize:(count/pageSize)+1))
			{
				
				pageSize = 5;
				pageNum = count%pageSize==0?count/pageSize:(count/pageSize)+1;
			}*/
			session.setAttribute("count", count);
			session.setAttribute("pageSize", pageSize);
			session.setAttribute("custList", custList);
			session.setAttribute("pageNum", pageNum);
			session.setAttribute("pageCount",count%pageSize==0?count/pageSize:(count/pageSize)+1 );
			session.setAttribute("index", request.getParameter("index"));
			//request.getRequestDispatcher("/UP-Pizza/Manager/UP-Index/user_list.jsp").forward(request, response);
			response.sendRedirect("/UP-Pizza/Manager/UP-Index/user_list.jsp");
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
