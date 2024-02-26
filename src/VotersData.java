import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VotersData {
    public static List<String[]> getDataFromDatabase() throws ClassNotFoundException, SQLException {
        List<String[]> dataList = new ArrayList<>();

        Class.forName("com.mysql.cj.jdbc.Driver");
        System.out.println("Driver loaded");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/votingdata", "root", "sanket");
        System.out.println("Connection established");
        String query = "SELECT * FROM votingdata.voters;";
        try (PreparedStatement statement = con.prepareStatement(query); ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String address = resultSet.getString("address");
                String email = resultSet.getString("email");
                String password = resultSet.getString("pass");

                String[] data = {String.valueOf(id), name, address, email, password};
                dataList.add(data);
            }
        }
        return dataList;
    }
}
