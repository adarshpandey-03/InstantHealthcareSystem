package dao;

import java.io.File;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="OfflineAppointmentDetails")      //Annotation for creating table with table name="UserDetails"

public class DoctorOfflineAppointment {

    @Id
    private int appointmentID;
    
    private String email,fullname,age,country,state,city,phone,appointmentDate,appointtime,problem,fileName;

    public DoctorOfflineAppointment(int appointmentID, String email, String fullname, String age, String country, String state, String city, String phone, String appointmentDate, String appointtime, String problem, String fileName) {
        this.appointmentID = appointmentID;
        this.email = email;
        this.fullname = fullname;
        this.age = age;
        this.country = country;
        this.state = state;
        this.city = city;
        this.phone = phone;
        this.appointmentDate = appointmentDate;
        this.appointtime = appointtime;
        this.problem = problem;
        this.fileName = fileName;
    }

    public DoctorOfflineAppointment() {
    }

    public int getAppointmentID() {
        return appointmentID;
    }

    public void setAppointmentID(int appointmentID) {
        this.appointmentID = appointmentID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAppointmentDate() {
        return appointmentDate;
    }

    public void setAppointmentDate(String appointmentDate) {
        this.appointmentDate = appointmentDate;
    }

    public String getAppointtime() {
        return appointtime;
    }

    public void setAppointtime(String appointtime) {
        this.appointtime = appointtime;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
    
    
    
    
}
  

    