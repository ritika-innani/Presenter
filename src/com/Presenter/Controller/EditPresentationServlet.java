package com.Presenter.Controller;

import java.io.IOException;
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
 * Servlet implementation class EditPresentationServlet
 */
@WebServlet("/EditPresentationServlet")
public class EditPresentationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPresentationServlet() {
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
		ResultSet res = null, res1 = null;
		DatabaseUtil jdbc = DatabaseUtil.getInstance();
		try{
			dataList = new ArrayList<Object>();
			columnList = new ArrayList<Object>();
			dataList.add(pid);
			columnList.add("Presentation_id");
			String tableName = "presentation"; 
			res = jdbc.fetchDataByParameter(tableName, dataList, columnList);
		}catch(Exception e){
			e.printStackTrace();
		}
		
		try{
			dataList = new ArrayList<Object>();
			columnList = new ArrayList<Object>();
			dataList.add(pid);
			columnList.add("Presentation_id");
			String tableName = "slide"; 
			res1 = jdbc.fetchDataByParameter(tableName, dataList, columnList);
		}catch(Exception e){
			e.printStackTrace();
		}
		request.setAttribute("presentation",res);
		request.setAttribute("slide",res1);
		request.getRequestDispatcher("content/product.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
