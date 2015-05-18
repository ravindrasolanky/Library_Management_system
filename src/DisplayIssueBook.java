import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Vector;

import javax.swing.JFrame;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.UIManager;
import javax.swing.UnsupportedLookAndFeelException;
/**
 * 
 * @author w7
 */
public class DisplayIssueBook extends JFrame
{	
    /**
     * 
     * @throws ClassNotFoundException
     * @throws InstantiationException
     * @throws IllegalAccessException
     * @throws UnsupportedLookAndFeelException
     */
    public DisplayIssueBook() throws ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedLookAndFeelException 
	{
             setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE); 
               UIManager.setLookAndFeel(UIManager.getSystemLookAndFeelClassName());
		Vector header=new Vector();//for table header
		Vector records=new Vector(); //for inner vector
		Connection con=DBinfo.getConn();
		String query="select * from book_issue";
		try
		{
		PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
		
		
		//Metadata of table
		ResultSetMetaData rsmd=res.getMetaData();
		int count=rsmd.getColumnCount();
		System.out.println("col. count is:"+count);
		for(int i=1;i<=count;i++)
		{
			System.out.println(rsmd.getColumnName(i)+"\t\t"+rsmd.getColumnTypeName(i)+"\t"+rsmd.getColumnDisplaySize(i));
			header.add(rsmd.getColumnName(i));
		}
		System.out.println(header);
		System.out.println("--------------------------");
		//records from table
		
		while(res.next())//for rows
		{
			Vector inner =new Vector();
			for(int i=1;i<=count;i++)  //col.
			{
				inner.add(res.getString(i));
				
			}
			System.out.println(inner);
			records.add(inner);
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		setSize(getToolkit().getScreenSize());
		setDefaultCloseOperation(DISPOSE_ON_CLOSE);
		
		JTable table=new JTable(records, header);
		JScrollPane pane=new JScrollPane(table);
		add(pane);
		
	}
   
	
}
