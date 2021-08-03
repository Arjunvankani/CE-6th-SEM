import java.sql.*;
import java.util.*;
import java.util.Scanner;

class Practical3 {

	public static void main(String[] args) {
		Statement smt;
		PreparedStatement pre_smt;
		ResultSet res;
		CallableStatement call_smt;
		Scanner sc = new Scanner(System.in);
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost/collage_info", "root", "");
			int flag = 1;
			while (flag == 1) {
				System.out.print(
						"1.Display All Data\n2.Insert Data Into Table.\n3.Delete Data From Table.\n4.Exit\nEnter Your Choice:");
				int ch = sc.nextInt();
				if (ch == 1) {
					String fe_data = "Select * from userinfo";
					smt = con.createStatement();
					res = smt.executeQuery(fe_data);
					while (res.next()) {
						System.out.println("ID:" + res.getInt("id") + "\tNAME:" + res.getString("Name"));
					}
					System.out.println();
					System.out.println();

				} else if (ch == 2) {
					System.out.println("Enter Id Of Student");
					int stu_id = sc.nextInt();
					System.out.println("Enter Name Of Student");
					String stu_name = sc.next();
					call_smt = con.prepareCall("{call Insert_data(?,?)}");
					call_smt.setInt(1, id);
					call_smt.setString(2, Name);
					call_smt.execute();
					System.out.print("Insert Data Successfull");
					System.out.println();
					System.out.println();

				} else if (ch == 3) {
					String fetch_data = "Select id FROM userinfo";
					pre_smt = con.prepareStatement(fetch_data);
					res = pre_smt.executeQuery();
					int count = 0;
					while (res.next()) {
						count++;
					}
					int check_arr[] = new int[count];
					int i = 0;
					fetch_data = "Select id FROM userinfo";
					pre_smt = con.prepareStatement(fetch_data);
					res = pre_smt.executeQuery();
					while (res.next()) {
						int id = res.getInt("id");
						check_arr[i] = id;
						i++;
					}
					System.out.println("Enter Id Number To Delete The Student_data:");
					int temp_id = sc.nextInt();
					for (int j = 0; j < check_arr.length; j++) {
						if (check_arr[j] == temp_id) {
							String qur = "Delete FROM userinfo where id = ?";
							pre_smt = con.prepareStatement(qur);
							pre_smt.setInt(1, temp_id);
							pre_smt.execute();
							System.out.println("Delete Data Successful");
							break;
						}

					}

				} else {
					flag = 0;
				}

			}

		} catch (Exception e) {
			System.out.print(e);
		}
	}
}