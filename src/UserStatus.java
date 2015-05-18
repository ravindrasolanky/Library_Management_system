import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.UnsupportedLookAndFeelException;
/**
 * 
 * @author w7
 */
public class UserStatus extends JFrame 
{
  JTabbedPane pane;
  /**
   * 
   * @throws ClassNotFoundException
   * @throws InstantiationException
   * @throws IllegalAccessException
   * @throws UnsupportedLookAndFeelException
   */
  public UserStatus() throws ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedLookAndFeelException 
   {
       
      setSize(getToolkit().getScreenSize());
      setLocationRelativeTo(this);
     pane=new JTabbedPane();
     pane.addTab("BOOK ISSUED", new UserIssuedBook());
   
    pane.addTab("USER DETAIL", new DisplayUserDetail());
     add(pane);
  }
  /**
   * 
   * @param args
   * @throws ClassNotFoundException
   * @throws InstantiationException
   * @throws IllegalAccessException
   * @throws UnsupportedLookAndFeelException
   */
 /* public static void main(String[] args) throws ClassNotFoundException, InstantiationException, IllegalAccessException, UnsupportedLookAndFeelException 
	{
      new UserStatus().setVisible(true);
	}*/
	
	
}
