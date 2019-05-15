package com.Presenter.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Presenter.Util.DatabaseUtil;

/**
 * Servlet implementation class DeletePresentationServlet
 */
@WebServlet("/DeletePresentationServlet")
public class DeletePresentationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePresentationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    List<Object> dataList = null;
   	List<Object> columnList = null;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int pid = Integer.parseInt(request.getParameter("id"));
		System.out.println(pid);
		
		DatabaseUtil jdbc = DatabaseUtil.getInstance();
		try{
			dataList = new ArrayList<Object>();
			columnList = new ArrayList<Object>();
			dataList.add(pid);
			columnList.add("Presentation_id");
			
			String tableName = "textformat"; 
			jdbc.delete(tableName, dataList, columnList);
			
			tableName = "slide";
			jdbc.delete(tableName, dataList, columnList);
			
			tableName = "userpresentation";
			jdbc.delete(tableName, dataList, columnList);
			
			tableName = "presentation";
			jdbc.delete(tableName, dataList, columnList);
			
			response.sendRedirect(request.getContextPath()+"/ViewPresentations");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
