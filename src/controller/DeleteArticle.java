package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Blog;

/**
 * Servlet implementation class DeleteArticle
 */
@WebServlet("/DeleteArticle")
public class DeleteArticle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteArticle() {
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
		
        System.out.println("inside Delete Article");
		
	    String getListFlag = request.getParameter("getList");
	    String getPopulated = request.getParameter("getPopulated");
	    String blogIDSelected = request.getParameter("blogIDSelected");
	    String blogIDToDeleteSelected = request.getParameter("blogIDToDeleteSelected");
	    
	    
	    Connection con = null;
	    if(getListFlag !=null && getListFlag.equals("true")){
	 
	    	con = DbConnection.getConnection();
	    	ArrayList<Blog> blogList = new ArrayList<Blog>();
			
			Statement stmt;
		try {
			String picUrl = "";
			System.out.println("Begin");
			stmt = con.createStatement();
			ResultSet result = stmt.executeQuery("select * from Blogs order by Blog_ID");
			System.out.println("About to start");
			while (result.next()){
				Blog blog = new Blog();
                
				blog.setBlogID(result.getString("Blog_ID"));
				blog.setTitle(result.getString("Title"));
				blog.setAuthor(result.getString("Author"));
				blog.setViews(result.getString("Views"));
				blog.setTags(result.getString("Tags"));
				blog.setIntro(result.getString("Introduction"));
				blog.setContent(result.getString("Content"));
				picUrl = result.getString("Cover_Pic");
				String[] index = picUrl.split("/");
				String picId = index[index.length-1];
				picId = picId.split("_")[0];				
				blog.setCoverPic(picId);
			    blog.setThumbPic(picId);
			    blog.setPublishedOn(result.getString("Date_Published"));
			    blog.setLastUpdated(result.getString("Last_Updated"));

			    blogList.add(blog);
			  }
			
			  System.out.println("data Collected -  Size : " + blogList.size() );
			  
			  request.getSession().setAttribute("blogListToDelete", blogList);
		
			} catch (SQLException e) {

				e.printStackTrace();
			}finally{
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			
	    }
	    
	    if(getListFlag.equals("false") && blogIDSelected !=null && getPopulated.equals("true")){
	    	
	    	 
	    	 System.out.println("blogIDToBeDeleteSelected >> " + blogIDSelected );
	    	 request.getSession().setAttribute("blogIDToDeleteSelected", blogIDSelected);
	    	 
	    }
	    if(getListFlag.equals("false") && getPopulated.equals("false") && blogIDToDeleteSelected.equals("true")){
	    	
	    	 String blogIDTobeDeleted = (String)request.getSession().getAttribute("blogIDToDeleteSelected");
	    	 System.out.println("Final Blog Id : " + blogIDTobeDeleted);
	    	 
   
				Connection con1 = DbConnection.getConnection();
				
				String deleteBlog =  "DELETE FROM BLOGS WHERE blog_ID = '"+blogIDTobeDeleted+"'";
				
				System.out.println("updateBlog" + deleteBlog  );
				
				PreparedStatement pstmt;
				try {
					pstmt = con1.prepareStatement(deleteBlog);
					pstmt.executeUpdate();
					System.out.println("Deleted");
					
					
					//recreating list
					String picUrl = "";
					Statement anotherstmt = con1.createStatement();
					ResultSet result = anotherstmt.executeQuery("select * from Blogs order by Blog_ID");
					System.out.println("About to start2");
					con = DbConnection.getConnection();
			    	ArrayList<Blog> blogList = new ArrayList<Blog>();
					while (result.next()){
						Blog blog = new Blog();
		                
						blog.setBlogID(result.getString("Blog_ID"));
						blog.setTitle(result.getString("Title"));
						blog.setAuthor(result.getString("Author"));
						blog.setViews(result.getString("Views"));
						blog.setTags(result.getString("Tags"));
						blog.setIntro(result.getString("Introduction"));
						blog.setContent(result.getString("Content"));
						picUrl = result.getString("Cover_Pic");
						String[] index = picUrl.split("/");
						String picId = index[index.length-1];
						picId = picId.split("_")[0];				
						blog.setCoverPic(picId);
					    blog.setThumbPic(picId);
					    blog.setPublishedOn(result.getString("Date_Published"));
					    blog.setLastUpdated(result.getString("Last_Updated"));

					    blogList.add(blog);
					  }
					request.getSession().removeAttribute("blogListToDelete");
					System.out.println("removed");
					request.getSession().setAttribute("blogListToDelete", blogList);
					con1.close();
				
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}finally{
					
						//request.getSession().removeAttribute("blogIDToDeleteSelected");
				}
	    	 
	    }
		
	}

}
