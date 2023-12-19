import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class registerForm  extends HttpServlet{

	protected void doPost( HttpServletRequest req, HttpServletResponse resp) {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("load");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/JDBC", "root", "sanket");
			System.out.println("conected");
			
			PrintWriter out=resp.getWriter();
			String id=req.getParameter("id");
			String name=req.getParameter("name");
			String contact=req.getParameter("contact");			
			String user=req.getParameter("email");
			String pwd=req.getParameter("Password");
			String adderss=req.getParameter("address");
			String gen=req.getParameter("Gen");
			
//			System.out.println(id);
//			System.out.println(name);
//			System.out.println(contact);
//			System.out.println(user);
//			System.out.println(pwd);
//			System.out.println(adderss);
//			System.out.println(gen);
			
			PreparedStatement ps =con.prepareStatement("insert into studentdata (Sname,Saddress,Scontact,email,pass)values(?,?,?,?,?)");
			
			ps.setString(1, name);
			ps.setString(2, adderss);
			ps.setString(3, contact);			
			ps.setString(4, user);
			ps.setString(5, pwd);
			ps.execute();
			System.out.println("Data enterd Sucessfully");
			
		} catch (ClassNotFoundException | SQLException | IOException e) {
			
			e.printStackTrace();
		}
	}
}
