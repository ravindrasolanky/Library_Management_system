
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;


/**
 * 
 * @author w7
 */
public class GetValuesFromDB 
{
    /**
     * 
     * @return
     */
    public static Vector getAuthor()
    {
       Vector v=new Vector();
               Connection con= DBinfo.getConn();
               String query="select name from author order by name";
               try
               {
                   PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
                   while(res.next())
                   {
                       String str=res.getString(1);
                       v.add(str);
                   }
                   con.close();
                   
                   
               }
               catch(Exception e)
               {
                 e.printStackTrace();  
               }
               return v;
    }
    
    /**
     * 
     * @return
     */
    public static Vector  getPublication()
    {
       Vector v=new Vector();
               Connection con=DBinfo.getConn();
               String query="select name from publication order by name";
               try
               {
                   PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
                   while(res.next())
                   {
                       String str=res.getString(1);
                       v.add(str);
                   }
                   con.close();
                   
                   
               }
               catch(Exception e)
               {
                 e.printStackTrace();  
               }
               return v;
    }
      
      /**
       * 
       * @return
       */
      public static Vector  getCategory()
    {
       Vector v=new Vector();
               Connection con=DBinfo.getConn();
               String query="select name from category order by name";
               try
               {
                   PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
                   while(res.next())
                   {
                       String str=res.getString(1);
                       v.add(str);
                   }
                   con.close();
                   
                   
               }
               catch(Exception e)
               {
                 e.printStackTrace();  
               }
               return v;
    }
      /**
       * 
       * @return
       */
      public static Vector getSubject()
    {
       Vector v=new Vector();
               Connection con=DBinfo.getConn();
               String query="select name from subject order by name";
               try
               {
                   PreparedStatement ps=con.prepareStatement(query);
                   ResultSet res=ps.executeQuery();
                   while(res.next())
                   {
                       String str=res.getString(1);
                       v.add(str);
                   }
                   con.close();
                   
                   
               }
               catch(Exception e)
               {
                 e.printStackTrace();  
               }
               return v;
    }
      
       
    
}
