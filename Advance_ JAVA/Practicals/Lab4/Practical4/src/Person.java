import java.sql.*;
import java.util.*;
import java.util.Scanner;

public class Person {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/persondb";
        String dbUsername = "root";
        String dbPassword = "sbalas";
        Scanner scanner = new Scanner(System.in);

        try {
            Connection connection = DriverManager.getConnection(jdbcURL, dbUsername, dbPassword);

            int x = 1;
            while (x == 1) {
                System.out.print(
                        "1.Insert data into person\n2.Display person data\n3.Exit\nEnter Your Choice: ");
                int choice = scanner.nextInt();

                if (choice == 1) {
                    System.out.println("Enter person id: ");
                    int id = scanner.nextInt();
                    System.out.println("Enter person name: ");
                    String name = scanner.next();
                    System.out.println("Enter person salary: ");
                    float salary = scanner.nextFloat();
                    
                    CallableStatement cstmt = connection.prepareCall("{call Insert_data(?,?,?)}");
                    cstmt.setInt(1, id);
                    cstmt.setString(2, name);
                    cstmt.setFloat(3, salary);
                    cstmt.execute();
                    System.out.println("A new user has been inserted successfully");
                    cstmt.close();
                    System.out.println();
                }

                else if (choice == 2) {
                    String query = "SELECT * FROM person";

                    Statement stmt = connection.createStatement();
                    ResultSet result = stmt.executeQuery(query);

                    while (result.next()) {
                        int p_id = result.getInt("p_id");
                        String p_name = result.getString("p_name");
                        float p_salary = result.getFloat("p_salary");

                        System.out.println(p_id + " " + p_name + " " + p_salary);
                    }
                    result.close();
                    stmt.close();
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