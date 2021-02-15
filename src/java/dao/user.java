package dao;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="UserDetails")      //Annotation for creating table with table name="UserDetails"
public class user {

    @Id                 //For primary key
    private String useremail;
    
    private String userName;
    private String password;

    public user(String useremail, String userName, String password) {
        this.userName = userName;
        this.useremail = useremail;
        this.password = password;
    }

    public user() {
    }

    public user(String useremail, String password) {
        this.useremail = useremail;
        this.password = password;
    }

    
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return this.useremail+": "+this.userName+": "+this.password+": ";
    }
    
    
    
    

}
