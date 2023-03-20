/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.concurrent.ExecutionException;
import javax.swing.JOptionPane;

/**
 *
 * @author JP-PC9
 */
public class Db {
    
    public static Connection getConnection(){
        Connection con =null;
try{
    String url="jdbc:mysql://localhost:3306/decentralized";
    String driver="com.mysql.jdbc.Driver";
    Class.forName(driver).newInstance();
    con = DriverManager.getConnection(url, "root", "root");
    System.out.println("Database Connected");
    
}   
catch(Exception e)
    
{
    
}
        return con;
}
    public static void main(String[] args)
    {
        
    }
}
