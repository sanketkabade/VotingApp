<%@page import="org.w3c.dom.CDATASection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String user = request.getParameter("uname");
	String pass = request.getParameter("pass");

	/* Cookie c1 = new Cookie("uid",user); */

	Cookie c2 = new Cookie("uname", user);

	/* response.addCookie(c1); */
	response.addCookie(c2);

	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver loded");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdata", "root", "sanket");
	System.out.println("connection establish");

	PreparedStatement psm = con.prepareStatement("select email , pass  from voters where email=? and pass=?;");

	psm.setString(1, user);
	psm.setString(2, pass);
	int per = 0;
	ResultSet rs = psm.executeQuery();

	if (rs.next() && user.equals("admin@gmail.com") && pass.equals("admin")) {

		response.sendRedirect("admin.jsp");

		// to set total no of vote
		int uniqueRecordCount = 0;
		String query = "SELECT COUNT(*) AS count FROM voters;";
		Statement statement = con.createStatement();
		ResultSet resultSet = statement.executeQuery(query);

		if (resultSet.next()) {
			uniqueRecordCount = resultSet.getInt(1);
		}

		session.setAttribute("TotatVote", uniqueRecordCount);

		// to set  no of vote
		int NoOfVote = 0;
		String query1 = "SELECT COUNT(*) AS count FROM voters where votingStatus= 1";
		Statement statement1 = con.createStatement();
		ResultSet resultSet1 = statement1.executeQuery(query1);

		if (resultSet1.next()) {

			NoOfVote = resultSet1.getInt(1);
		}

		session.setAttribute("vote", NoOfVote);

		//no of remaning votes

		int remainvote = 0;

		remainvote = uniqueRecordCount - NoOfVote;

		session.setAttribute("Remening", remainvote);

		// no of percent voted

		System.out.println(NoOfVote);
		System.out.println(uniqueRecordCount);

		per = NoOfVote / uniqueRecordCount * 100;

		System.out.println(per);

		session.setAttribute("Percent", per);

	} else {

		PreparedStatement psm1 = con
		.prepareStatement("select email , pass , votingStatus  from voters where email=? and pass=?;");

		psm1.setString(1, user);
		psm1.setString(2, pass);

		ResultSet rs1 = psm1.executeQuery();

		if (rs1.next()) {
			int status = rs1.getInt("votingStatus");

			if (status == 1) {
				 response.sendRedirect("loginPage.html?status=1");
				
			} else {

		     response.sendRedirect("Candidate.jsp");

			}

		} else {

			boolean x = rs.next();

			if (x == false) {
		      response.sendRedirect("loginPage.html?status=0");

			}
		}

	}
	%>


</body>
</html>