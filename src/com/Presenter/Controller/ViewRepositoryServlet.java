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

import com.Presenter.Util.DatabaseUtil;

/**
 * Servlet implementation class ViewRepositoryServlet
 */
@WebServlet("/ViewRepositoryServlet")
public class ViewRepositoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewRepositoryServlet() {
        super();
    }
    List<Object> dataList = null;
	List<Object> columnList = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userid = 0;
		if(request.getSession(false).getAttribute("Uid") != null){
			userid = (int) (request.getSession(false).getAttribute("Uid"));
			DatabaseUtil jdbc = DatabaseUtil.getInstance();
			try{
				dataList = new ArrayList<Object>();
				columnList = new ArrayList<Object>();
				dataList.add(userid);
				columnList.add("User_id");
				String tableName = "presentation"; 
				ResultSet res = jdbc.fetchDataByParameter(tableName, dataList, columnList);
				if (!res.isBeforeFirst()) {
				    System.out.println("no data");
				    request.getRequestDispatcher("content/repository.jsp").forward(request, response);
				} else{
					request.setAttribute("presentationlist",res);
					request.getRequestDispatcher("content/repository.jsp").forward(request, response);
				}
				
			}catch(Exception e){
				e.printStackTrace();
			}
		}else{
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
