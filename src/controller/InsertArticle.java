package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class InsertArticle
 */
@WebServlet("/InsertArticle")
public class InsertArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertArticle() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		// TODO Auto-generated method stub
		
		try {
			
			
			
			DateFormat dateFormat = new SimpleDateFormat("dd-MMM-yyyy HH:mm:ss");
			Date date = new Date();
			String lastUpdated = dateFormat.format(date);
			String blogID = request.getParameter("blogID");
			String title = request.getParameter("title");
			String author = request.getParameter("author");
			String intro = request.getParameter("intro");
			String tags = request.getParameter("tags");
			String content = request.getParameter("content");
			String coverPic= request.getParameter("coverPic");
			String thumbPic= request.getParameter("thumbPic");
			//String orderNo= "";
			
			System.out.println("blogID " + blogID);
			System.out.println("tags " + tags);
		
			
			Connection con = DbConnection.getConnection();
			
			String updateBlog =  "UPDATE BLOGS SET title=?, author =?, introduction =?, content =?, tags = ?, cover_Pic = ?, thumbnail_Pic = ?, last_Updated= ? WHERE blog_ID = '"+blogID+"'";
			
			System.out.println("updateBlog" + updateBlog  );
			
			PreparedStatement pstmt = con.prepareStatement(updateBlog);
			pstmt.setString(1, title);
			pstmt.setString(2, author);
			pstmt.setString(3, intro);
			pstmt.setString(4, content);
			pstmt.setString(5, tags);
			pstmt.setString(6, coverPic);
			pstmt.setString(7, thumbPic);
			pstmt.setString(8, lastUpdated);
			
			pstmt.executeUpdate();
		
		    System.out.println("done");
		    con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				 request.getSession().removeAttribute("blogList");
				 request.getSession().removeAttribute("blogIDSelected");				 
			}
		
	}

}
