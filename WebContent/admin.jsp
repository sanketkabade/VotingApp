<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.SQLException"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="WEB-INF\styles.css">
<script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
<style type="text/css">
body {
	padding: 50px 50px;
	background-image: url('images/beautiful.jpg');
	font-family: cursive;
}

h2 {
	font-family: cursive;
}

.col1 {
	height: 200px;
	box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
	border: none;
}

.cd {
	margin-block-start: 100px;
	padding-inline-start: 139px;
}

.cd1 {
	text-align: center;
	margin-top: 43px;
}
</style>
</head>
<body>
	<%-- <sql:setDataSource var="db" driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/votingdata" user="root"
		password="sanket" />

	<sql:query var="rs" dataSource="${db}">select count(distinct id) as record from votingdata.voters; </sql:query>
 --%>

	<%-- 	<!--   number ofcandidate -->
	<c:forEach var="rec" items="${rs.rows}">
  
       <c:out value="${rs.count}" />
		<c:set var="TotatVote" value="0" scope="application" />

		<c:set value="TotatVote++" />

		<c:out value="${TotatVote}" />

	</c:forEach>
	
	value of a :
	<c:out value="${TotatVote}" />


	<!-- //number of votes -->
	<c:forEach var="rec" items="${rs.rows}">

		<c:if test="${rec.votingStatus } == 0 ">

			<c:set var="vote" value="0" scope="application" />
			<c:set value="vote++" />
		</c:if>

	</c:forEach>

	<!-- number of non-voters -->

 --%>


	<h1 style="text-align: center;">Admin Panel</h1>
	<div class="row" style="margin-bottom: 30px; margin-top: 45px;">
		<div class="col">
			<div class="card border-dark mb-3 col1" style="max-width: 20rem;">
				<div class="card-body text-dark">

					<h5 class="card-title">Total No Of Votes</h5>
					<h2 class="cd1">
						<c:out value="${TotatVote}" />
					</h2>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card border-dark mb-3 col1" style="max-width: 20rem;">
				<div class="card-body text-dark">
					<h5 class="card-title">Given Votes</h5>
					<h2 class="cd1">
						<c:out value="${vote}" />
					</h2>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card border-dark mb-3 col1" style="max-width: 20rem;">
				<div class="card-body text-dark">
					<h5 class="card-title">Remening Votes</h5>
					<h2 class="cd1">
						<c:out value="${Remening}" />
					</h2>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="card border-dark mb-3 col1" style="max-width: 20rem;">

				<div class="card-body text-dark">
					<h5 class="card-title">Total Voting Percent</h5>
					<h2 class="cd1">
						<c:out value="${Percent}" />
					</h2>
				</div>
			</div>
		</div>
	</div>





	<div class="card">
		<!--  <div class="card-header">
    Quote
  </div>
  <div class="card-body"> -->



		<div class="row">

			<div class="col-sm-2 cd">
				<div class="card border-primary mb-3" style="width: 103px;">
					<img class="card-img-top" src="images/modi.jpg"
						alt="Card image cap">
				</div>
				<div class="card border-primary mb-3"
					style="width: 103px; margin-top: 2px;">
					<img class="card-img-top" src="images/Modi12.jpg"
						alt="Card image cap">
				</div>
				<div class="card border-primary mb-3"
					style="width: 103px; margin-top: 2px;">
					<img class="card-img-top" src="images/Modi12.jpg"
						alt="Card image cap">
				</div>
				<div class="card border-primary mb-3"
					style="width: 103px; margin-top: 2px;">
					<img class="card-img-top" src="images/Modi12.jpg"
						alt="Card image cap">
				</div>
				<div class="card border-primary mb-3"
					style="width: 103px; margin-top: 2px;">
					<img class="card-img-top" src="images/Modi12.jpg"
						alt="Card image cap">
				</div>
				<div class="card border-primary mb-3"
					style="width: 103px; margin-top: 2px;">
					<img class="card-img-top" src="images/Modi12.jpg"
						alt="Card image cap">
				</div>
			</div>
			<div class="col-sm-10">

				<div id="myPlot"
					style="width: 100%; max-width: 1200px; height: 600px"></div>



				<%
				// Create an ArrayList to store the salaries
				ArrayList<Integer> votes = new ArrayList<>();

				try {

					Class.forName("com.mysql.cj.jdbc.Driver");
					System.out.println("Driver loded");

					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdata", "root", "sanket");

					// Execute the SQL query to retrieve salaries
					String sql = "SELECT vote FROM votingdata.candidate;";
					PreparedStatement statement = con.prepareStatement(sql);
					ResultSet result = statement.executeQuery();

					while (result.next()) {
						int vote = result.getInt("vote");
						votes.add(vote);
					}

					// Close resources
					result.close();
					statement.close();
					con.close();
				} catch (SQLException e) {
					// Handle any database errors
					e.printStackTrace();
				}
				%>
				

				<script>
					const xArray = [ <%
				        for (int vo : votes) {
				            %>
				            <%= vo %>,
				            <%
				            }
				            %> ];
					const yArray = [ "Modi ", "RAJ Thakre ", "Yogi ",
							"Uddhav ", "Ajit", "Rahul" ];

					const data = [ {
						x : xArray,
						y : yArray,
						type : "bar",
						orientation : "h",
						marker : {
							color : "rgba(255,0,0,0.6)"
						}
					} ];

					const layout = {
						title : "Total Votes Graphical Representation"
					};

					Plotly.newPlot("myPlot", data, layout);
				</script>

			</div>

		</div>

	</div>
	</div>
</body>
</html>