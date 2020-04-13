/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;

/**
 *
 * @author prernaparu
 */

public class db 
{
    Connection con;
    ResultSet rs;
    Statement stmt;
    public  db()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost/cafeteria";
            con=(Connection)DriverManager.getConnection(url,"root","8june1998");
            stmt=(Statement)con.createStatement();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
    public ResultSet execute(String s) throws Exception
    {
        rs=stmt.executeQuery(s);
        return rs;
        
    }
    public void update(String s) throws Exception
    {
        stmt.executeUpdate(s);
    }
}

