package com.Presenter.Controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/*import java.util.Map;
import java.util.HashMap;*/

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Presenter.Util.DatabaseUtil;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/NewUserServlet")
public class NewUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewUserServlet() {
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
		String firstname = request.getParameter("fname");
		String lastname = request.getParameter("lname");
		String emailid = request.getParameter("email");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		System.out.println(firstname + lastname + emailid + username + password);
		int generatedKey =0;
		DatabaseUtil jdbc = DatabaseUtil.getInstance();
		
		try {
			dataList = new ArrayList<Object>();
			columnList = new ArrayList<Object>();
			dataList.add(firstname);
			dataList.add(lastname);
			dataList.add(emailid);
			dataList.add(username);
			dataList.add(password);
			columnList.add("First_name");
			columnList.add("Last_name");
			columnList.add("Email_id");
			columnList.add("Username");
			columnList.add("Password");
			String tableName = "user";
			generatedKey = jdbc.insert(tableName , dataList , columnList);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		/* Map<String, HashMap<String,Object>> tableWithData = new HashMap<String, HashMap<String,Object>>();
		try{
			HashMap<String,Object> dataMap = new HashMap<String, Object>();
			dataMap.put("First_name",firstname);
			dataMap.put("Last_name",lastname);
			dataMap.put("Email_id",emailid);
			tableWithData.put("user",dataMap);
			generatedKey = jdbc.insert(tableWithData);
			System.out.print(generatedKey);
		}catch(Exception e){
			e.printStackTrace();
		}*/
        response.sendRedirect(request.getContextPath()+"/content/welcomepage.jsp");
    	//request.getRequestDispatcher("/ViewPresentations").forward(request, response);
	}		
}

