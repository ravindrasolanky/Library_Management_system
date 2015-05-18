import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;


/**
 * 
 * @author w7
 */
public class DBinfo 
{

	static
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		} 
		catch (ClassNotFoundException e)
		{
			
		e.printStackTrace();
		}
		
	}
        /**
         * 
         * @return
         */
        public static Connection getConn()
	{
	Connection con=null;	
	try
	{
		con= DriverManager.getConnection("jdbc:mysql://localhost:3306/lib_mgmt", "root", "budget");
		
		
	}
	catch(SQLException e)
	{
		e.printStackTrace();
		
	}
	return con;
		
	}
}
