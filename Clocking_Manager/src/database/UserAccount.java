package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserAccount {

	private Connection connection;

	public UserAccount(Connection connection) {
		this.connection = connection;
	}
	/* Checks whether the database contains an entry with the provided username
	 * and password for login validation.  */
	public boolean login(String username, String password) throws SQLException {

		String statement = "select count(*) as count from USER_TABLE where username=? and password=?";

		PreparedStatement preparedStatement = connection.prepareStatement(statement);

		preparedStatement.setString(1, username);
		preparedStatement.setString(2, password);

		ResultSet resultSet = preparedStatement.executeQuery();

		int count = 0;

		if (resultSet.next()) {
			count = resultSet.getInt("count");
		}
		
		resultSet.close();

		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	/* Inserts a new user record into the USER_TABLE, with username and password
	 * as specified, and other values set to zero */
	public void create(String username, String password) throws SQLException {
		String statement = "insert into USER_TABLE (username, password, daily_hours,"
				+ " target_time, target_hours) values (?, ?, 000, 000, 000)";

		PreparedStatement preparedStatement = connection.prepareStatement(statement);

		preparedStatement.setString(1, username);
		preparedStatement.setString(2, password);
		
		preparedStatement.executeUpdate();
		
		preparedStatement.close();
	}
	
	// Confirms whether the specified username exists in the database.
	public boolean exists(String username) throws SQLException {

		String statement = "select count(*) as count from USER_TABLE where username=?";

		PreparedStatement preparedStatement = connection.prepareStatement(statement);

		preparedStatement.setString(1, username);

		ResultSet resultSet = preparedStatement.executeQuery();

		int count = 0;

		if (resultSet.next()) {
			count = resultSet.getInt("count");
		}
		
		resultSet.close();

		if (count == 0) {
			return false;
		} else {
			return true;
		}
	}

}
