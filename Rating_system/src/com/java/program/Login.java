package com.java.program;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) {
		String rol=req.getParameter("rol");
		String pass=req.getParameter("paswd");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","root");
			Statement smt=con.createStatement();
			ResultSet r=smt.executeQuery("select rollno from student where rollno='"+rol+"' and password='"+pass+"'");
			if(r.next()) {
				req.getRequestDispatcher("Home.jsp");
			}
			else {
				System.out.println("unsuccess");
			}
		}catch(Exception e) {
			System.out.println(e);
		}
	}

}
