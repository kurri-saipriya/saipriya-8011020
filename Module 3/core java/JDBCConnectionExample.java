import java.sql.*;

public class JDBCConnectionExample {

    public static void main(String[] args) {

        try {

            Connection con =
            DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/studentdb",
            "root",
            "root");

            Statement stmt =
            con.createStatement();

            ResultSet rs =
            stmt.executeQuery(
            "SELECT * FROM students");

            while(rs.next()) {

                System.out.println(
                    rs.getInt("id") + " "
                    + rs.getString("name") + " "
                    + rs.getInt("age"));
            }

            con.close();

        } catch(Exception e) {

            System.out.println(e);

        }
    }
}