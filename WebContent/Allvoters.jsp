<%@ page import="java.util.List" %>
<%@ page import="userData.data" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Voters Data</title>
    <style type="text/css">
    table {
	  
	  border-collapse: collapse;
	  
          } 
	 th, td{
	 padding: 10px 15px;
	 text-align: left;
	 
	}
	tr:nth-child(even) {
      	background-color: #f2f2f2
}
    
    </style>
</head>
<body>
    <h2>Voters Data</h2>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Email</th>
            <th>Password</th>
        </tr>

        <%
            List<String[]> dataList = data.getDataFromDatabase();
            for (String[] data : dataList) {
        %>
            <tr>
                <td><%= data[0] %></td>
                <td><%= data[1] %></td>
                <td><%= data[2] %></td>
                <td><%= data[3] %></td>
                <td><%= data[4] %></td>
            </tr>
        <%
            }
        %>
    </table>
</body>
</html>
