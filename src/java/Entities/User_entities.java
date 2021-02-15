package Entities;

import dao.doctorinfor;
import dao.user;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

/**
 *
 * @author Adarsh
 */
public class User_entities {
    private Connection con;

    public User_entities(Connection connect) {
        this.con = connect;
    }
    
    public user getUserByUsernameAndPassword(String useremail, String password) {
         user us = null;

        try {
            String query = "select * from userdetails where useremail=? and password=? ";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, useremail);
            pstmt.setString(2, password);

            ResultSet rst = pstmt.executeQuery();

            if (rst.next()) {
                us = new user();

                //data from database
                us.setUseremail(rst.getString("useremail")); //set to user object
                us.setPassword(rst.getString("password"));
                us.setUserName(rst.getString("userName"));
               
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return us;
    }
    
}
