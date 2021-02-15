/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package instantHealthcare_servlets;

import Helper.DatabaseConnector;
import dao.DoctorOfflineAppointment;
import dao.user;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Adarsh
 */
public class sendNotificationServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String amount = request.getParameter("amount");

            HttpSession s = request.getSession();
            DoctorOfflineAppointment dfa = new DoctorOfflineAppointment();
            user u = (user) s.getAttribute("currentUser");
            String userName = u.getUserName().toString();
            Connection con = DatabaseConnector.getConnection();            
            try {
            String query = "select * from offlineappointmentdetails where email=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, u.getUseremail().toString());
            ResultSet rst = pstmt.executeQuery();

            if (rst.next()) {
                
                //data from database
                dfa.setAppointmentID(rst.getInt("appointmentID")); //set to user object
                dfa.setAppointmentDate(rst.getString("appointmentDate"));
                dfa.setAppointtime(rst.getString("appointtime"));
                dfa.setPhone(rst.getString("phone"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
            
            int appointmentID = dfa.getAppointmentID();
            String appointmentDate = dfa.getAppointmentDate();
            String appointmentTime = dfa.getAppointtime();
            String phone = dfa.getPhone();
            

            //Send Message
              String apiKey = "xOoHDBR7KZ1ykLpgrMcwsQW52q6bj948GdP0uTelUSJNV3CIfE7mah2ogsMwxXdi6OWYpjZVqtFnbPuL";
            String senderID = "FSTSMS";
//important step...
            StringBuilder sb = new StringBuilder();
            sb.append("Appointment ID: ");
            sb.append(appointmentID);
            sb.append("\n");
            sb.append("Name: ");
            sb.append(userName);
            sb.append("\n");
            sb.append("Appointment Date: ");
            sb.append(appointmentDate);
            sb.append("\n");
            sb.append("Appointment Time: ");
            sb.append(appointmentTime);
            
            String msg = sb.toString();
//System.out.println(msg);

            String message = URLEncoder.encode(msg, "UTF-8");
            String language = "english";
            String route = "p";

            String msgURL = "https://www.fast2sms.com/dev/bulk?authorization=" + apiKey + "&sender_id=" + senderID + "&message=" + message + "&language=" + language + "&route=" + route + "&numbers=" + phone;

//sending get request using java
            URL url = new URL(msgURL);
            HttpURLConnection httpcon = (HttpURLConnection) url.openConnection();
            httpcon.setRequestMethod("GET");

            httpcon.setRequestProperty("User-Agent", "Mozilla/5.0");
            httpcon.setRequestProperty("cache-control", "no-cache");
            System.out.println("wait...............");

            int code = httpcon.getResponseCode();

            System.out.println("Response Code: " + code);
            StringBuffer reader = new StringBuffer();
            BufferedReader br = new BufferedReader(new InputStreamReader(httpcon.getInputStream()));
            while (true) {
                String line = br.readLine();
                if (line == null) {
                    break;
                }
                reader.append(line);
            }

            System.out.println(reader);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
