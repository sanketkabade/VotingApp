<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.FileInputStream"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="WEB-INF\styles.css">
<style type="text/css">

.popup-container {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.7);
    z-index: 1;
}

/* Styles for the popup content */
.popup-content {
    background-color: #fff;
    width: 300px;
    padding: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border: 1px solid #ccc;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    text-align: center;
}

/* Styles for the close button */
.close {
    position: absolute;
    top: 10px;
    right: 10px;
    cursor: pointer;
}

</style>
</head>
<body>
<%

			String name=request.getParameter("name");
			String contact=request.getParameter("contact"); 
			String address= request.getParameter("address"); 
			String age= request.getParameter("age"); 
			 String email=request.getParameter("email");
			String password=request.getParameter("password");
			String gender =request.getParameter("gender");
			
			 Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Driver loded");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdata", "root", "sanket");
			System.out.println("connection establish");
			
			
			PreparedStatement ps =con.prepareStatement("insert into voters (name,address,contact,gender,email,pass,age) values (?,?,?,?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, address);
			ps.setString(3,contact );
			ps.setString(7, age);
			ps.setString(5, email);
			ps.setString(6, password);
			ps.setString(4, gender);
			
			boolean a=ps.execute();
						
			 if (!a== true)
			 {
				 request.setAttribute("message", "Registration Successful");
			 
			 response.sendRedirect("loginPage.html");
			 }
			else{
				out.println("failed");
             response.sendRedirect("Registraction.jsp");
			}
			
%>

</body>
</html>