package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;





import javax.servlet.http.HttpSession;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.JSONSerializer;

import UP_Pizza_End_DAO.UserDAOS;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Service.UserService;

public class CusTjPageServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CusTjPageServlet() {
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
	 * @throws ServletException if an error occurred
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

		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		

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
		String tj = request.getParameter("tj");
		int count = us.getCusCount(tj);
		ArrayList<Customer> Tjlist = us.selectPageByTj(tj);
		String result = net.sf.json.JSONSerializer.toJSON(Tjlist).toString();
		response.getWriter().print(result);
		out.flush();
		out.close();
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
