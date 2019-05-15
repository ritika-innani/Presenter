package com.Presenter.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Presenter.Util.DatabaseUtil;
/**
 * Servlet implementation class AccountUpdateServlet
 */
@WebServlet("/AccountUpdateServlet")
public class AccountUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AccountUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    List<Object> dataList = null;
    List<Object> columnList = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid = 0;
		if(request.getSession(false).getAttribute("Uid") != null){
			userid = (int) (request.getSession(false).getAttribute("Uid"));
			String firstname = request.getParameter("name");
			String username = request.getParameter("uname");
			String emailid = request.getParameter("email");
			String password = request.getParameter("pass");
			
			DatabaseUtil jdbc = DatabaseUtil.getInstance();
			if(password == null || password.equals("") )
			{
				try{
					// updating user table
					dataList = new ArrayList<Object>();
					dataList.add(firstname); dataList.add(emailid); dataList.add(username); dataList.add(userid);
					String tableName = "user";
					jdbc.updateAccount2(tableName, dataList);
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			else{
				try{
					// updating user table
					dataList = new ArrayList<Object>();
					dataList.add(firstname); dataList.add(emailid); dataList.add(username); 
					dataList.add(password); dataList.add(userid);
					String tableName = "user";
					jdbc.updateAccount1(tableName, dataList);
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			try{
				dataList = new ArrayList<Object>();
				columnList = new ArrayList<Object>();
				HttpSession session=request.getSession(); 
				dataList.add(userid);
				columnList.add("User_id");
				String tableName = "user"; 
				ResultSet res = jdbc.fetchDataByParameter(tableName, dataList, columnList);
				while(res.next()){
					request.setAttribute("name", res.getString(2));
					request.setAttribute("email", res.getString(4));
					username = res.getString(5);
				}
				 
				session.setAttribute("Username", username);
				
				request.getRequestDispatcher("/ViewPresentations").forward(request, response);
			} catch(Exception e){
				e.printStackTrace();
			}
		}
		else{
			PrintWriter pw = response.getWriter();
			pw.print("<html>");
			pw.print("<head><title></title></head>");
			pw.print("<body>");
			pw.print("<p style='color:red; font-size:30px;'>" + "You are not Logged In." + "<a href='" +request.getContextPath()+"/content/index.jsp'>" + "Log In first" + "</a></p>");
			pw.print("</body>");
			pw.print("</html>");
		}
	}

}
