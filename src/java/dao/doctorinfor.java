package dao;

/**
 *
 * @author Adarsh
 */
public class doctorinfor {
    
    private String doctorId, date;

    public doctorinfor(String doctorId, String Date) {
        this.doctorId = doctorId;
        this.date = Date;
    }

    public doctorinfor() {
    }

    public String getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(String doctorId) {
        this.doctorId = doctorId;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    
}
