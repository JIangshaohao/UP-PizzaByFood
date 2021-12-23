package UP_Pizza_End_Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import UP_Pizza_End_DAO.ChowDAO;
import UP_Pizza_End_Entity.Customer;
import UP_Pizza_End_Entity.Food;
import UP_Pizza_End_Entity.Scart;

public class CustomerAddFoodByCartServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public CustomerAddFoodByCartServlet() {
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
		HttpSession s=request.getSession();
		//获取用户编号和商品编号
		Customer u=(Customer)s.getAttribute("cus");
		int uid=u.getId();
		int fid=Integer.parseInt(request.getParameter("fid"));
		Food f=new Food();
		f.setId(fid);
		
		//将所有数据封装成购买项的对象
		Scart c=new Scart(uid,f,1);
		ChowDAO sc=new ChowDAO();
		Scart item=sc.selectCarItem(uid, fid);
		//System.out.println(item);
		boolean result;
		if(item==null){//添加
			result=sc.insertFoodByCart(c);
		}else{//修改
			result=sc.updateNum(item.getCid(),item.getQty()+1);
			//System.out.println("修改了");
		}
		out.print(result);
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
