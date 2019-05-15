package com.Presenter.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Presenter.Util.DatabaseUtil;

/**
 * Servlet implementation class SavePresentationServlet
 */
@WebServlet("/SavePresentationServlet")
public class SavePresentationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SavePresentationServlet() {
        super();
    }
    List<Object> dataList = null;
	List<Object> columnList = null;
	List<Object> slideList = null;

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
		String pid = request.getParameter("pid");
		int slideno = Integer.parseInt(request.getParameter("slide-number"));
		String PresentationName = request.getParameter("PresentationName");
		String Favourite = request.getParameter("favourite");
		System.out.println(pid);
		System.out.println(slideno);
		slideno--;
		int generatedKey = 0;
		
		/* **********Saving new Presentation************ */
		if(pid == null || pid.equals("") )
		{
			/* Storing Presentation Information */
			int userid = 0;
			if(request.getSession(false).getAttribute("Uid") != null){
				userid = (int) (request.getSession(false).getAttribute("Uid"));
				DatabaseUtil jdbc = DatabaseUtil.getInstance();
				try{
					dataList = new ArrayList<Object>();
					columnList = new ArrayList<Object>();
					dataList.add(PresentationName);
					dataList.add(Favourite);
					dataList.add(userid);
					columnList.add("Presentation_name");
					columnList.add("Favourite");
					columnList.add("User_id");
					String tableName = "presentation"; 
					generatedKey = jdbc.insert(tableName, dataList, columnList);
				}catch(Exception e){
					e.printStackTrace();
				}
				
				/* Storing Presentation slides */
				for(int slideindex = 1; slideindex <= slideno; slideindex++)
				{
					slideList = new ArrayList<Object>();
					columnList = new ArrayList<Object>();
					for(int i = 1; i <= 8; i++ )
					{
						String slidecontent=request.getParameter("sinput" + slideindex + i);
						slideList.add(slidecontent);	
					}
					slideList.add(generatedKey);
					columnList.add("Sheader"); columnList.add("Stext1"); columnList.add("Stext2");
					columnList.add("Stext3"); columnList.add("Stext4"); columnList.add("Stext5");
					columnList.add("Stext6"); columnList.add("Sfooter"); columnList.add("Presentation_id");
					String tableName = "slide"; 
					try {
						jdbc.insert(tableName, slideList, columnList);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				request.getRequestDispatcher("/ViewPresentations").forward(request, response);
			
				/* For Storing text format 
				String Style = request.getParameter("text-font");
				String Size = request.getParameter("text-size");
				String Align = request.getParameter("text-align");
				String Spacing = request.getParameter("text-spacing");
				try{
					dataList = new ArrayList<Object>();
					columnList = new ArrayList<Object>();
					dataList.add(Style); dataList.add(Size); dataList.add(Align); 
					dataList.add(Spacing); dataList.add(generatedKey);
					
					columnList.add("Font_Family"); columnList.add("Font_Size"); columnList.add("Alignment"); 
					columnList.add("Line_Spacing"); columnList.add("Presentation_id");
					String tableName = "textformat"; 
					jdbc.insert(tableName, dataList, columnList);
				}catch(Exception e){
					e.printStackTrace();
				} */
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
		/* ********* Updating database ********** */
		else{
			int userid = 0;
			if(request.getSession(false).getAttribute("Uid") != null){
				userid = (int) (request.getSession(false).getAttribute("Uid"));
				DatabaseUtil jdbc = DatabaseUtil.getInstance();
				int Pid=Integer.parseInt(pid);
				try{
					// updating presentation table
					dataList = new ArrayList<Object>();
					columnList = new ArrayList<Object>();
					dataList.add(PresentationName); dataList.add(Favourite); dataList.add(Pid);
					
					columnList.add("Presentation_name"); columnList.add("Favourite"); columnList.add("Presentation_id"); 
					String tableName = "presentation";
					
					jdbc.updateSlides(tableName, dataList, columnList);
				}catch(Exception e){
					e.printStackTrace();
				}
				
				try{
					// deleting old slides 
					dataList = new ArrayList<Object>();
					columnList = new ArrayList<Object>();
					dataList.add(Pid);
					columnList.add("Presentation_id"); 
					String tableName = "slide";
					jdbc.delete(tableName, dataList, columnList);
				}catch(Exception e){
					e.printStackTrace();
				}
				
				/* Storing slides */
				for(int slideindex = 1; slideindex <= slideno; slideindex++)
				{
					slideList = new ArrayList<Object>();
					columnList = new ArrayList<Object>();
					for(int i = 1; i <= 8; i++ )
					{
						String slidecontent=request.getParameter("sinput" + slideindex + i);
						slideList.add(slidecontent);	
					}
					slideList.add(generatedKey);
					columnList.add("Sheader"); columnList.add("Stext1"); columnList.add("Stext2");
					columnList.add("Stext3"); columnList.add("Stext4"); columnList.add("Stext5");
					columnList.add("Stext6"); columnList.add("Sfooter"); columnList.add("Presentation_id");
					String tableName = "slide"; 
					try {
						jdbc.insert(tableName, slideList, columnList);
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				request.getRequestDispatcher("/ViewPresentations").forward(request, response);
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

}
