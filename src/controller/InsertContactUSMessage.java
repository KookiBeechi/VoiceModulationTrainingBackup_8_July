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
 * Servlet implementation class InsertContactUSMessag
 */
@WebServlet("/InsertContactUSMessage")
public class InsertContactUSMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertContactUSMessage() {
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
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String city = request.getParameter("city");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		java.util.Date utilDate = new java.util.Date(); 
		java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			    
		Connection con = DbConnection.getConnection();
		Statement stmt;
		try {
			stmt = con.createStatement();
		
	
		ResultSet resultCount = stmt.executeQuery("SELECT COUNT(*) FROM user_query");
		String QueryId = "";
		resultCount.next();
		int queryCount = resultCount.getInt(1);
	 	
		++queryCount;
	  
		QueryId = queryCount+"";
		
		System.out.println("ready");
		
		String addBlog =  "INSERT INTO user_query VALUES (?,?,?,?,?,?,?,?,?)";
		
		
		PreparedStatement pstmt = con.prepareStatement(addBlog);
		pstmt.setString(1, QueryId);
		pstmt.setString(2, name);
		pstmt.setString(3, phone);
		pstmt.setString(4, email);
		pstmt.setString(5, subject);
		pstmt.setString(6, city);
		pstmt.setString(7, message);
		pstmt.setDate(8, sqlDate);
		pstmt.setDate(9, null);
		
		
		pstmt.executeUpdate();
		System.out.println("done");
	
		
	    con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
