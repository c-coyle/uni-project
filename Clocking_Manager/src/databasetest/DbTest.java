package databasetest;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;


import com.mysql.jdbc.AbandonedConnectionCleanupThread;


/**
 * Servlet implementation class DbTest
 */
@WebServlet("/DbTest")
public class DbTest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	Connection connection = null;
	Statement statement;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DbTest() {
        super();
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("Can't load database driver");
			return;
		}
		
		try {
			connection = DriverManager.getConnection("jdbc:mysql://cmanagerdb.cvulvuavrnlj.eu-west-1.rds.amazonaws.com/cmanagerdb", "cmanageradmin", "72734622510");
			statement = connection.createStatement();
		} catch (SQLException e) {
			System.out.println("Can't connect to database");
			//e.printStackTrace();
			return;
		}
		
		System.out.println("Connected to database");

        try
        {
           statement.execute("drop table USER_TABLE");
           statement.execute("drop table TIME_SHEET_TABLE");
        }
        catch (SQLException e)
        {
           System.out.println("Table did not previously exist " + e);
        }			
		
        try {
			statement.execute("create table " +
			        "USER_TABLE (" +
			        "ID int(5) primary key not null auto_increment, " +
			        "USERNAME varchar(24), " +
			        "PASSWORD varchar(24)," +
			        "DAILY_HOURS TIME(6)," +
			        "TARGET_TIME TIME(6)," +
			        "TARGET_DATE varchar(8)," +
			        "PREVIOUS_BALANCE TIME(6) )" ) ;	
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
        
        try {
			statement.execute("create table " +
			        "TIME_SHEET_TABLE (" +
			        "TIME_SHEET_ID int(5) primary key not null auto_increment, " +
			        "USER_ID int(5) not null, " +
			        "WORK_DATE varchar(8)," +
			        "IN_TIME1 TIME(6)," +
			        "OUT_TIME1 TIME(6)," +
			        "IN_TIME2 TIME(6)," +
			        "OUT_TIME2 TIME(6)," +
			        "DAY_TYPE_ID int(2),"
			        + "FOREIGN KEY (USER_ID) "
			        + "REFERENCES USER_TABLE(ID) )" ) ;	
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

        try
        {
           statement.execute("insert into USER_TABLE values " +
                 "(00001, 'Test1', 'password1', 123400, 045600, '01082016', 000000)");
           statement.execute("insert into USER_TABLE values " +
                 "(00002, 'Test2', 'password2', 111100, 222200, '01072016', 111111)");         
        }
        catch (SQLException sqle)
        {
           System.err.println("Problem populating data:" + sqle);
        }

        try
        {
           statement.execute("insert into TIME_SHEET_TABLE values " +
                 "(00001, 00001, 01012016, 083000, 1200000, 130000, 170000, 000010)");
           statement.execute("insert into TIME_SHEET_TABLE values " +
                   "(00002, 00002, 01012016, 083000, 1200000, 130000, 170000, 000010)");        
        }
        catch (SQLException sqle)
        {
           System.err.println("Problem populating data:" + sqle);
        }
       
        try
        {
           // check the contents of the table
           System.out.println("DB contents:");
           
           // select all records
           statement.execute("select * from USER_TABLE a");
           
           // get the result set and display the names
           ResultSet results = statement.getResultSet();
           while (results.next())
           {
              System.out.println(results.getString("ID") + "  "
                    + results.getString("USERNAME") + " " + results.getString("PASSWORD") + " "
                    + results.getString("DAILY_HOURS") + " " + results.getString("TARGET_TIME")
                    + results.getString("TARGET_HOURS") + " " + results.getString("PREVIOUS_BALANCE"));
           }
        }
        catch (SQLException e)
        {
           // nothing wrong
        }

		try {
			connection.close();
		} catch (SQLException e) {
			//e.printStackTrace();
		}
	
		try {
			AbandonedConnectionCleanupThread.shutdown();
		} catch (InterruptedException e) {
			System.out.println("SEVERE problem cleaning up: " + e.getMessage());
			//e.printStackTrace();
		}

    }
}
