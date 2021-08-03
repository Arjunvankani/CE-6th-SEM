import java.sql.*;
import java.util.*;
import java.util.Scanner;

public class JdbcProgram2 {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/user";
        String dbUsername = "root";
        String dbPassword = "sbalas";
        Scanner scanner = new Scanner(System.in);

        try {
            Connection connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            int x = 1;
            while (x == 1) {
                System.out.print(
                        "1.Insert data into student\n2.Display student data\n3.Delete data from student\n4.Exit\nEnter Your Choice: ");
                int choice = scanner.nextInt();

                if (choice == 1) {
                    System.out.println("Enter student id: ");
                    int std_id = scanner.nextInt();
                    System.out.println("Enter student name: ");
                    String std_name = scanner.next();
                    System.out.println("Enter student age: ");
                    int std_age = scanner.nextInt();
                    System.out.println("Enter student email: ");
                    String std_email = scanner.next();
                    CallableStatement cstmt = connection.prepareCall("{call Insert_data(?,?,?,?)}");
                    cstmt.setInt(1, std_id);
                    cstmt.setString(2, std_name);
                    cstmt.setInt(3, std_age);
                    cstmt.setString(4, std_email);
                    cstmt.execute();
                    System.out.println("A new user has been inserted successfully");
                    cstmt.close();
                    System.out.println();
                }

                else if (choice == 2) {
                    String query = "SELECT * FROM student";

                    Statement stmt = connection.createStatement();
                    ResultSet result = stmt.executeQuery(query);

                    while (result.next()) {
                        int stdId = result.getInt("std_id");
                        String stdName = result.getString("std_name");
                        int stdAge = result.getInt("std_age");
                        String stdEmail = result.getString("std_email");

                        System.out.println(stdId + " " + stdName + " " + stdAge + " " + stdEmail);
                    }
                    result.close();
                    stmt.close();
                    System.out.println();
                }

                else if (choice == 3) {
                    System.out.println("Enter the Id for deleting student data: ");
                    int del_id = scanner.nextInt();

                    String query = "DELETE FROM student WHERE std_id= ?";
                    PreparedStatement pstmt = connection.prepareStatement(query);
                    pstmt.setInt(1, del_id);
                    int rows = pstmt.executeUpdate();

                    if (rows > 0) {
                        System.out.println("The user's information has been deleted");
                    }
                    pstmt.close();
                    System.out.println();

                }

                else {
                    x = 0;
                }
            }
            connection.close();
            /*
             * if(connection != null){ System.out.println("Connected to database");
             * 
             * connection.close(); }
             */
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}