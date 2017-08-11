package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClockingRetriever {

	private Connection connection;

	private String dailyHours = "00.00.00";
	private String target = "00.00.00";
	private String targetDate = "20160101";
	private String previousBalance = "00.00.00";

	public ClockingRetriever(Connection connection) {
		this.connection = connection;
	}

	public String getTarget(String username) throws SQLException {
		
		String statement = "select * from USER_TABLE where username=?";
		
		PreparedStatement preparedStatement = connection.prepareStatement(statement);	
		preparedStatement.setString(1, username);
		ResultSet resultSet = preparedStatement.executeQuery();
		
		if (resultSet.next()) {
			setDailyHours(resultSet.getTime("DAILY_HOURS").toString());
			setTarget(resultSet.getTime("TARGET_TIME").toString());
			setTargetDate(resultSet.getString("TARGET_DATE"));
			setPreviousBalance(resultSet.getString("PREVIOUS_BALANCE"));
		}
		
		resultSet.close();
		
		return target;
	}

	public String getDailyHours() {
		return dailyHours;
	}

	public void setDailyHours(String dailyHours) {
		this.dailyHours = dailyHours;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}	
	
	public String getTargetDate() {
		return targetDate;
	}

	public void setTargetDate(String targetDate) {
		this.targetDate = targetDate;
	}

	public String getPreviousBalance() {
		return previousBalance;
	}

	public void setPreviousBalance(String previousBalance) {
		this.previousBalance = previousBalance;
	}
	
}
