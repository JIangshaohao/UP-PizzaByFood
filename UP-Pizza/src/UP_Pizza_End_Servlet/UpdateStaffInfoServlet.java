package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.UserDAO;
import UP_Pizza_End_Entity.Staff;

public class UpdateStaffInfoServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UpdateStaffInfoServlet() {
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
		//System.out.println("进来啦啦啦啦啦啦");
		UserDAO u=new UserDAO();
		Staff s=new Staff();
		String userName=request.getParameter("name");
		//System.out.println(userName);
		String sex=request.getParameter("sex");
		String tel=request.getParameter("tel");
		String birthday=request.getParameter("birthday");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		int id=Integer.parseInt(request.getParameter("id"));
		s.setUserName(userName);
		s.setSex(sex);
		s.setTel(tel);
		s.setBirthday(birthday);
		s.setEmail(email);
		s.setAddress(address);
		s.setId(id);
		boolean f=u.updateinfo(s);
		out.print(f);
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
