package controller;
import dao.ProfileDAO;
import dao.QRcodeDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.Profile;
import model.Qr;
@MultipartConfig(maxFileSize = 16177215)          // 16MB Data
public class delete extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        try 
        {
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Update | Resume CRETA</title>");            
            out.println("<link rel=\"icon\" href=\"images/logo.png\"/>");
            out.println("</head>");
            out.println("<body>");
            out.println("Welcome");
            // fields           
            // visibility
            String visibility=null,v_msg=null,v_date=null;
            // update field
            String mobile=null;
            // resume/cv data
            // objecttive & career abstract database
            visibility = "Show";
            v_msg = request.getParameter("v_msg");
            DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("dd/MM/YYYY hh:mm:ss");    // date format
            LocalDateTime dtf = LocalDateTime.now();
            v_date = dtf1.format(dtf);
            // update data
            mobile = request.getParameter("mobile");
            Profile P = new Profile();
            ProfileDAO pd = new ProfileDAO(); //call method
            QRcodeDAO qd = new QRcodeDAO();
            Qr Q;
            if(mobile!=null)
            {
                // data
                // behaviour & attitude data
                P.setVisibility(visibility);
                P.setV_msg(v_msg);
                P.setV_date(v_date);
                // update field
                P.setMobile(mobile);
                if(pd.backupuserdata(P)){
                    pd.deleteuserdata(mobile);
                    qd.deleteQr_data(mobile);
                    out.println("Record Deleted.");
                    session.setAttribute("msg",
                            "Your account has been permanently closed or deleted.<br>"
                                    + "If you want to keep your account or backup your account, Sign-in again...");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("signup/");
                }
                else{
                    out.println("Record not Deleted.");
                    session.setAttribute("msg",
                            "There is an technical error in deleting account,<br>"
                            + "Retry after some time.");
                    session.setAttribute("mobile",mobile);
                    response.sendRedirect("profile/menu/");
                }
            }
            else
            {
                out.println("Error.");
                session.setAttribute("msg",
                            "There is an technical error in deleting account,<br>"
                            + "Retry after some time.");
                session.setAttribute("mobile",mobile);
                response.sendRedirect("profile/menu/");
            }
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception e)
        {
            Logger.getLogger(signup.class.getName()).log(Level.SEVERE, null, e);
        }
    }
}