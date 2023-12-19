<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%
	     Cookie c[]=request.getCookies();
      	String sectionid=c[0].getValue();
    	String username=c[1].getValue();
	
	 /*    System.out.println("uname is:"+username); */
	    
	 String selectedVoter = request.getParameter("food");
	
	 Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("Driver loded");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdata", "root", "sanket");
	System.out.println("connection establish");
	
	PreparedStatement ps =con.prepareStatement("select CandidateName , vote from candidate where  CandidateName=?");
	 
	ps.setString(1, selectedVoter);
	
	ResultSet rs = ps.executeQuery();
     
	while(rs.next()){	
			  
	  int votes =rs.getInt("vote");
	
	  int newVote=0;
	
	if (selectedVoter != null) {
		
		  // this statement is use to change candidate status non vote to vote
 	   PreparedStatement p1 =con.prepareStatement("update voters set votingStatus = 1 where email=?");
	       	 
     	p1.setString(1, username);
     	p1.execute();
     	
     	
     	
	    switch (selectedVoter) {
	    
	        case "modi":
	        
	        	 newVote= votes+1;
	        	//  this statement is use to add vote to candidate table
	        	PreparedStatement ps1 =con.prepareStatement("UPDATE candidate SET vote = ?  WHERE id=1");
	       	 
	        	ps1.setInt(1, newVote);
	        	ps1.execute();
	        	%> myFunction(); <%
	            break;
	            
	        case "rahul":
	        	
	           newVote= votes+1;
	        	
	        	PreparedStatement ps2 =con.prepareStatement("UPDATE candidate SET vote = ? WHERE id=2");
	       	 
	        	ps2.setInt(1, newVote);
	        	ps2.execute();
	            break;
	            
	        case "raj":
	        	
	             newVote= votes+1;
	        	
	        	PreparedStatement ps3 =con.prepareStatement("UPDATE candidate SET vote = ? WHERE id=3");
	       	 
	        	ps3.setInt(1, newVote );
	        	ps3.execute();
	            break;
	            
		   case "yogi":
		        	
				 newVote= votes+1;
	        	
	        	PreparedStatement ps4 =con.prepareStatement("UPDATE candidate SET vote = ? WHERE id=4");
	       	 
	        	ps4.setInt(1, newVote);
	        	ps4.execute();  
		         break;
		   case "ajit":
		  	
				 newVote= votes+1;
	        	
	        	PreparedStatement ps5 =con.prepareStatement("UPDATE candidate SET vote = ? WHERE id=5");
	       	 
	        	ps5.setInt(1, newVote);
	        	ps5.execute();
		      
		      break;
		       
		   case "uddhav":
		  	
				 newVote= votes+1;
	        	
	        	PreparedStatement ps6 =con.prepareStatement("UPDATE candidate SET vote = ? WHERE id=6");
	       	 
	        	ps6.setInt(1, newVote);
	        	ps6.execute();
	           break;
	      
	    
	    }
	} 
		
	}
	%>
	
<script>
function myFunction() {
  alert("Hello\nHow are you?");
}
</script>
</body>
</html>