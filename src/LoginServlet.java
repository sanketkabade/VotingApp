/*
 * import java.io.FileInputStream; import java.io.IOException; import
 * java.io.PrintWriter; import java.sql.Connection; import
 * java.sql.DriverManager; import java.sql.PreparedStatement; import
 * java.sql.ResultSet; import java.sql.SQLException; import
 * java.util.Properties;
 * 
 * import javax.servlet.RequestDispatcher; import
 * javax.servlet.ServletException; import javax.servlet.http.HttpServlet; import
 * javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * public class LoginServlet extends HttpServlet {
 * 
 * @Override
 * 
 * protected void doPost(HttpServletRequest req, HttpServletResponse resp)
 * throws ServletException, IOException { try {
 * 
 * Class.forName("com.mysql.cj.jdbc.Driver"); System.out.println("driver load");
 * 
 * Connection
 * con=DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC","root",
 * "sanket");
 * 
 * System.out.println("conected");
 * 
 * PrintWriter out=resp.getWriter(); String user=req.getParameter("uname");
 * String pwd=req.getParameter("pass");
 * 
 * PreparedStatement
 * psm=con.prepareStatement("select * from login where uname=? and password=?");
 * 
 * psm.setString(1, user); psm.setString(2, pwd);
 * 
 * ResultSet rs=psm.executeQuery();
 * 
 * if(rs.next()) { RequestDispatcher rd=req.getRequestDispatcher("/Welcome");
 * rd.forward(req, resp);
 * 
 * } else {
 * 
 * RequestDispatcher rd=req.getRequestDispatcher("/login.html"); rd.include(req,
 * resp); out.println("Invalid user");
 * 
 * 
 * } } catch (ClassNotFoundException | SQLException e) { // TODO Auto-generated
 * catch block e.printStackTrace(); }
 * 
 * } }
 */
