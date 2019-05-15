package com.Presenter.Controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Presenter.Util.DatabaseUtil;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
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
		String Username = request.getParameter("uname");
		String Password = request.getParameter("pass");
		int flag=0; int uid=0;
		DatabaseUtil jdbc = DatabaseUtil.getInstance();
		try{
			dataList = new ArrayList<Object>();
			columnList = new ArrayList<Object>();
			dataList.add(Username);
			dataList.add(Password);
			columnList.add("Username");
			columnList.add("Password");
			String tableName = "user";
			ResultSet res = jdbc.fetchDataByParameter(tableName , dataList , columnList);
			while(res.next()){
				flag=1;
				uid = Integer.parseInt(res.getString(1));
				request.setAttribute("name", res.getString(2));
				request.setAttribute("email", res.getString(4));
			}
			if(flag == 1){
				HttpSession session = request.getSession();
				session.setAttribute("Username", Username);
				session.setAttribute("Uid",uid);
				System.out.println("Session Created Successfully");
				//response.sendRedirect("ViewRepositoryServlet");
				//response.sendRedirect(request.getContextPath()+"/ViewPresentations");
				request.getRequestDispatcher("/ViewPresentations").forward(request, response);
			} else{
				request.setAttribute("errorMessage", "The username or password you entered is incorrect");
				request.getRequestDispatcher("content/index.jsp").forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
