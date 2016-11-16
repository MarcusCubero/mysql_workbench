package simpleDBTest2;

import java.sql.*;
public class simpleDB2 {

    public static void main(String[] args) {
        final String QUERY = "SELECT SUM(CASE WHEN cType = 'Lecture' THEN 1 ELSE 0 END), SUM(CASE WHEN cType = 'Online' THEN 1 ELSE 0 END)FROM fall2016";
        try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mucis", "river", "mucis");
                PreparedStatement stmt = con.prepareStatement(QUERY)) {
            System.out.println(stmt.toString());
            ResultSet rs = stmt.executeQuery(QUERY);
            
            int columns = rs.getMetaData().getColumnCount();

            StringBuilder message = new StringBuilder();

            while (rs.next()) {
                for (int i = 1; i <= columns; i++) {
                    message.append(rs.getString(i) + "            ");
                    
                }
                message.append("\n");
            }

            System.out.println("Lecture vs Online");
            System.out.println("-------------------");
            System.out.println(message);
        } catch (SQLException ex) {
            System.out.println("retrieve SQLException: " + ex.getMessage());
        }
    }
}
