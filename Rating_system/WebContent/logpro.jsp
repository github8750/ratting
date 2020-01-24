<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","System", "root");
		Statement smt=con.createStatement();
		String rol=request.getParameter("rol");
		String pas=request.getParameter("paswd");
		ResultSet re=smt.executeQuery("select rollno from student where rollno='"+rol+"' and password='"+pas+"'");
		//ResultSet pa=smt.executeQuery("select password from student where );
		if(re.next())
		{
			out.print("Successfull .......");
		}
		else{
			out.print("unsuccess .........");
		}
		con.close();
		smt.close();
		re.close();
		
	}catch(Exception e)
		{
			out.print(e);
		}

%>