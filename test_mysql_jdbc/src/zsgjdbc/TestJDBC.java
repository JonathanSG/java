/**
 * 2016-06-01
 */
package zsgjdbc;
import java.sql.*;

import javax.sql.*;

public class TestJDBC {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// 1.
		//
		Connection conn=null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/testjdbc", "root", "");
			System.out.println( conn);
			//stmt = conn.createStatement(ResultSet.TYPE_FORWARD_ONLY,ResultSet.CONCUR_READ_ONLY);
			stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_READ_ONLY);
			//boolean b = stmt.execute("CREATE TABLE user1(name VARCHAR(32) NOT NULL, birth DATETIME)");
			//System.out.println( b ? "success." : "fail.");
			//stmt.executeUpdate("INSERT INTO user1 VALUES('Wang', '1976-4-8 12:00:00')");
			//stmt.executeUpdate("INSERT INTO user1 VALUES('Son', '2008-2-8 12:00:00')");
			rs = stmt.executeQuery("SELECT * from user1");
			while( rs.next() ) {
				System.out.println(rs.getString("Name") + ": " + rs.getString("birth"));
			}
			System.out.println("**********************");
			rs.beforeFirst();
			while( rs.next() ) {
				System.out.println(rs.getString("Name") + ": " + rs.getString("birth"));
			}
			
			
			while( rs.previous() ) {
				System.out.println(rs.getString("Name") + ": " + rs.getString("birth"));
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
