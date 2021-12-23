package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import UP_Pizza_End_DAO.OutinfoDAO;
import UP_Pizza_End_Entity.Outinfo;
import UP_Pizza_End_Service.UserService;

public class OutInfoPageServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public OutInfoPageServlet() {
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
			OutinfoDAO os=new OutinfoDAO();
			int pagen = 1;
			int pages = 4;
			String tj = request.getParameter("tj");
			if(request.getParameter("pagen") != null){
 				pagen = Integer.parseInt(request.getParameter("pagen"));
			}
			if(request.getParameter("pages") != null){
				pages = Integer.parseInt(request.getParameter("pages"));
			}
			ArrayList<Outinfo> list = os.selectPageAll(pagen, pages);
			int count = os.getCount(tj);
			if(request.getParameter("ajax")!=null){
				String result = net.sf.json.JSONSerializer.toJSON(list).toString();
				response.getWriter().print(result+","+"$"+pagen+"*"+(count%pages==0?count/pages:(count/pages)+1)+"#"+count);
			}else{
				request.setAttribute("pagen", pagen);
				request.setAttribute("pages", pages);
				request.setAttribute("pagec", count%pages==0?count/pages:(count/pages)+1);
				request.setAttribute("cnt", count);
 				request.setAttribute("otlist", list);
				//response.sendRedirect("/UP-Pizza/Manager/UP-Index/Refund.jsp");
				request.getRequestDispatcher("/Manager/UP-Index/Refund.jsp").forward(request, response);
			}

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
