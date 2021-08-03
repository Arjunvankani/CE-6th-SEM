import java.sql.*;

public class JdbcProgram {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/java_practical";
        String dbUsername = "root";
        String dbPassword = "";

        
        try {
            Connection connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            System.out.println("INSERT Operation ");
            String sql = "INSERT INTO student (username, email, fullname, password) " + " VALUES ('Arjun', 'arjun@gmail.com', 'Arjun Vankani', 'arjun_vankani')";

            Statement statement = connection.createStatement();
            int rows = statement.executeUpdate(sql);
            
            if(rows > 0){
                System.out.println("A new user has been inserted successfully");
            }





            System.out.println("SELECT Operation ");
            /*String sql = "SELECT * FROM student";

            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery(sql);

            while(result.next()){
                String userId = result.getString("user_id");
                String username = result.getString("username");
                String fullname = result.getString("fullname");
                String email = result.getString("email");
                String password = result.getString("password");

                System.out.println(userId + " " + username + " " + fullname + " " + email + " " + password);
            }*/
            
            System.out.println("UPDATE Operation ");
            /*String sql = "UPDATE student SET password= 'sunil_06' WHERE username='Sunil'";

            Statement statement = connection.createStatement();
            int rows = statement.executeUpdate(sql);

            if(rows > 0){
                System.out.println("The user's information has been updated.");
            }*/

            System.out.println("DELETE Operation ");
            /*String sql = "DELETE FROM student WHERE username='Nitin'";

            Statement statement = connection.createStatement();
            int rows = statement.executeUpdate(sql);

            if(rows > 0){
                System.out.println("The user's information has been deleted");
            }*/

            connection.close();
            /*if(connection != null){
                System.out.println("Connected to database");

                connection.close();
            }*/
        } 
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}